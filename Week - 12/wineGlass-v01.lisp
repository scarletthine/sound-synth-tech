;; how to initialize a modaLisp script... 

(in-package :mlys)
(new)
(set-sample-rate 48000)






;;;; We'll build our geometry here ;;;;

; scaling variable
(setf scale 1)




;;; Transformation of the structure of a Modalys finite elements object 

(setq hold (make-mesh 'restrict-quadrilateral wine-glass (vector 912 935 936 913)))

;;; This command is used to define a quadrilateral sub-mesh on our gong. It will become the place by which the instrument is held. We choose a point on the edge using a "shift-click" on one of the facets in "medit". The number of points constituting the selected facet are displayed on the structure and in the console of "tells me". The point numbers are reported in the Modalys script.

(setq my-mesh-object (make-object 'finite-element (mesh wine-glass) ; The mesh defining the geometry of the finite element object.
                                  (modes 80) ; The number of modes
                                  (block hold) ; The part of the mesh to be constrained (fixed). 
                                  (young 7.2e10) ; Young's modulus in N/m^2. See chart of material properties for appropriate values
                                  (density 2500) ; in kg/m^3. See chart of material properties for some appropriate values.
                                  (poisson 0.23) ; poisson ratio. See chart of material properties for appropriate values
                                  (freq-loss 0.1) 
                                  (const-loss 0.3)))

;;; The function (make-object 'finite-element ...) is used to transform our mesh into a standard Modalys object.

(compute-modes my-mesh-object)

;;; This function calculates the eigen modes of vibration of the object.

;;; 1.4 Visualisation des modes propres avec � medit �

;;; To visualize the eigen modes of the structure, one uses the function (view 'mode ...). If we want to visualize the mode number 5 of our gong, with 100 images by oscillation, during 10 oscillations, it gives:

(view 'mode my-mesh-object 5 100 10)

;(save-object my-mesh-object (make-pathname-in-directory-of-source-file "wineGlass-v01.modal"))

;;; It is enough to execute the beginning of the script, until the (save-object ...) included, to obtain what we want, ie our gong and all of its characteristics in the form of a modal file. The make_pathname ... function allows you to save at the same level as the Modalys script.

;;; rest of original dynamic controller script:

;;; 1.5 Hit the structure with a hammer 

;;; The rest of the script uses the usual concepts of Modalys. The difference with a classic script comes mainly from the statement of access. On a finite element object, access is always normal to the structure. The position of the access is constant and defined by a point number.

(setf my-hammer (make-object 'bi-two-mass))

;;;
;;; make controllers 
;;;

(setf hammer-ctrl (make-controller 'dynamic 1 0 (list 0.1)))

;;;
;;; make access 
;;;

(setf my-mesh-object-hit ( make-access my-mesh-object
                                       (const 98) 'normal )) 

(setf my-mesh-object-out1 ( make-access my-mesh-object 
                                        (const 613) 'normal ))

(setf my-mesh-object-out2 ( make-access my-mesh-object 
                                        (const 414) 'normal ))

(setf my-hammer-tip (make-access my-hammer (const 1) 'trans0)) 
(setf my-hammer-top (make-access my-hammer (const 0) 'trans0))

;;;
;;; make connections 
;;;

(make-connection 'position my-hammer-top hammer-ctrl) 
(make-connection 'strike my-hammer-tip .1 my-mesh-object-hit 0)

;;;
;;; make listening point on plate 
;;;

(set-number-of-channels 2)

(make-point-output my-mesh-object-out1 0 (const 1)) 
(make-point-output my-mesh-object-out2 1 (const 1))

;;;
;;; run the synthesis and play the sound 
;;;

(setf list-dur (list 2 1 2 1 1 2 1 2)) 
(setf speed-coef .2)

(do ((i 0 (+ i 1))) ((= i (length list-dur)))
  (set-breakpoint hammer-ctrl (list 0.01 -0.001)) 
  (run 0.01)
  (set-breakpoint hammer-ctrl (list 0.1 0.1)) 
  (run (- (* (nth i list-dur) speed-coef) 0.01))
)

(run 9)
(play)