include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true;

// Focus on one box
g_isolated_print_box = "";

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

// Root main box [214, 278, 68]
// Root expansion [214, 278, 48]

data =
[

//    [ "Main box",
//        [
//            [ BOX_SIZE_XYZ, [220, 284, 71] ],
//            [ BOX_NO_LID_B, t],
//             [ BOX_COMPONENT,
//                 [
//                     [ CMP_COMPARTMENT_SIZE_XYZ, [214, 278, 68] ],
//                     [ CMP_CUTOUT_SIDES_4B, [f,f,f,f] ],
//                 ]
//             ],
//         ]
//     ],

//     [ "Test tray",
//         [
//             [ BOX_SIZE_XYZ, [107, 71,3] ],
//             [ BOX_NO_LID_B, t],
//             [ BOX_COMPONENT,
//                 [
//                     [ CMP_COMPARTMENT_SIZE_XYZ, [92, 67, 2] ],
//                     [ CMP_CUTOUT_SIDES_4B, [t,t,f,f] ],
//                 ]
//             ],
//
//         ]
//     ],

    [ "Base Deck",
        [
            [ BOX_SIZE_XYZ, [107, 71, 34] ],
            [ BOX_LID,
                [
                    [ LID_INSET_B, t ],
                    [ LABEL,
                        [
                            [ LBL_TEXT, "Artisans and Favors"],
                            [ LBL_SIZE, 6 ],
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_COMPARTMENT_SIZE_XYZ, [92, 67, 33] ],
                    [ CMP_CUTOUT_SIDES_4B, [t,t,f,f] ],
                ]
            ],
        ]

    ],

    [ "Exiles and Partisans Deck",
        [
            [ BOX_SIZE_XYZ, [107, 71, 34] ],
            [ BOX_LID,
                [
                    [ LID_INSET_B, t ],
                    [ LABEL,
                        [
                            [ LBL_TEXT, "Exiles and Partisans"],
                            [ LBL_SIZE, 6 ],
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_COMPARTMENT_SIZE_XYZ, [92, 67, 33] ],
                    [ CMP_CUTOUT_SIDES_4B, [t,t,f,f] ],
                ]
            ],
        ]

    ],

    [ "Vagabond Bottom",
        [
            [ BOX_SIZE_XYZ, [107, 71, 17] ],
            [ BOX_LID, // Do not print this lid
                [
                    [ LID_INSET_B, t ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_COMPARTMENT_SIZE_XYZ, [92, 67, 15] ],
                    [ CMP_CUTOUT_SIDES_4B, [t,t,f,f] ],
                ]
            ],
        ]
    ],

    [ "Vagabond Top",
        [
            [ BOX_SIZE_XYZ, [107, 71, 17] ],
            [ BOX_STACKABLE_B, t ],
            [ BOX_LID,
                [
                    [ LID_INSET_B, t ],
                    [ LABEL,
                        [
                            [ LBL_TEXT, "Vagabond"],
                            [ LBL_SIZE, 6 ],
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_COMPARTMENT_SIZE_XYZ, [92, 67, 15] ],
                    [ CMP_CUTOUT_SIDES_4B, [f,f,f,f] ],
                ]
            ],
        ]
    ],

];


MakeAll();
