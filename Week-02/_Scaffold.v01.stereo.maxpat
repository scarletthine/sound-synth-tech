{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 57.0, 101.0, 400.0, 771.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 401.0, 150.0, 22.0 ],
                    "text": "sh.spat.boiler.copy.maxpat"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 332.0, 117.0, 22.0 ],
                    "text": "lg.random.notes.v01"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 220.0, 79.0, 22.0 ],
                    "text": "lg.midi.in.v01"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 273.0, 99.0, 22.0 ],
                    "text": "SH.Sound.in.v01"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 172.0, 106.0, 22.0 ],
                    "text": "SH.Sound.out.v02"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 272.0, 132.0, 1000.0, 698.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-17",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 212.0, 293.0, 150.0, 47.0 ],
                                    "text": "This is an example of a sub patch. It lives in a function called P "
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 212.0, 222.0, 150.0, 20.0 ],
                                    "text": "M - New Message box"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 221.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 212.0, 106.0, 160.0, 87.0 ],
                                    "text": "Command E - Unlock/lock \n\nCommand S - Save \n\nCommand J - Auto Size\n"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 212.0, 65.0, 150.0, 20.0 ],
                                    "text": "N - object "
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 67.0, 64.0, 100.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 212.0, 29.0, 150.0, 20.0 ],
                                    "text": "C -- Comment box "
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 29.0, 150.0, 20.0 ]
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 47.0, 107.0, 69.0, 22.0 ],
                    "text": "p Shortcuts"
                }
            }
        ],
        "lines": [],
        "parameters": {
            "obj-7::obj-105::obj-11": [ "live.toggle[23]", "live.toggle", 0 ],
            "obj-7::obj-105::obj-12": [ "live.toggle[22]", "live.toggle", 0 ],
            "obj-7::obj-105::obj-33": [ "live.menu[2]", "live.menu[2]", 0 ],
            "obj-7::obj-105::obj-48": [ "live.toggle[24]", "live.toggle", 0 ],
            "obj-7::obj-105::obj-8": [ "live.dial[3]", " ", 0 ],
            "obj-7::obj-29": [ "live.drop", "live.drop", 0 ],
            "obj-7::obj-37": [ "angular", "angular — speakers", 0 ],
            "obj-7::obj-5": [ "live.text[20]", "live.text[20]", 0 ],
            "obj-7::obj-93": [ "live.gain~[4]", "binaural — headphones", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "oscreceiveudpport": 0
    }
}