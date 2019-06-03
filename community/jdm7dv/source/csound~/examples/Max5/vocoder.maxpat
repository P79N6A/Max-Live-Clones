{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 312.0, 266.0, 571.0, 420.0 ],
		"bglocked" : 0,
		"defrect" : [ 312.0, 266.0, 571.0, 420.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-51",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 1020.0, 255.0, 32.5, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-43",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 1005.0, 75.0, 32.5, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "waveform",
					"fontname" : "Arial",
					"id" : "obj-44",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 1070.0, 415.0, 68.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mouse mode",
					"fontname" : "Arial",
					"id" : "obj-20",
					"presentation_rect" : [ 325.0, 50.0, 87.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 1125.0, 285.0, 90.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"id" : "obj-22",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 1020.0, 315.0, 32.5, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"items" : [ "select", ",", "modify", "loop", ",", "scroll", "+", "zoom" ],
					"outlettype" : [ "int", "", "" ],
					"align" : 1,
					"types" : [  ],
					"fontname" : "Arial",
					"id" : "obj-34",
					"presentation_rect" : [ 233.0, 50.0, 92.0, 20.0 ],
					"numinlets" : 1,
					"arrow" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 1020.0, 285.0, 96.0, 20.0 ],
					"numoutlets" : 3,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setmode $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 1020.0, 345.0, 76.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-92",
					"numinlets" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 594.0, 248.0, 364.0, 20.0 ],
					"numoutlets" : 4,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.001",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-65",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 365.0, 100.0, 49.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.001",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-62",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 260.0, 100.0, 49.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.001",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-61",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 155.0, 100.0, 49.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.001",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-51",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 50.0, 100.0, 49.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-41",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 50.0, 130.0, 44.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-34",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 155.0, 130.0, 44.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 365.0, 130.0, 44.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 260.0, 130.0, 44.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-79",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-80",
									"numinlets" : 0,
									"patching_rect" : [ 155.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-81",
									"numinlets" : 0,
									"patching_rect" : [ 260.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-85",
									"numinlets" : 0,
									"patching_rect" : [ 365.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-86",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 208.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-87",
									"numinlets" : 1,
									"patching_rect" : [ 155.0, 208.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-88",
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 208.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-89",
									"numinlets" : 1,
									"patching_rect" : [ 365.0, 208.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "undo last selection",
					"fontname" : "Arial",
					"id" : "obj-78",
					"presentation_rect" : [ 57.0, 50.0, 118.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 822.0, 533.0, 118.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "undo",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-75",
					"presentation_rect" : [ 18.0, 50.0, 38.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 861.0, 554.0, 38.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-73",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 945.0, 330.0, 49.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-72",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 840.0, 330.0, 49.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-66",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 735.0, 330.0, 49.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-59",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 630.0, 330.0, 49.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 1110.0, 75.0, 47.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "playback speed",
					"fontname" : "Arial",
					"id" : "obj-101",
					"presentation_rect" : [ 68.0, 211.0, 101.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 630.0, 495.0, 101.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "drag and drop an audio file here...",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-35",
					"textcolor" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"presentation_rect" : [ 187.0, 163.0, 205.0, 20.0 ],
					"frgb" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 407.0, 86.0, 166.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select end",
					"fontname" : "Arial",
					"id" : "obj-96",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 942.75, 277.0, 74.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select start ",
					"fontname" : "Arial",
					"id" : "obj-97",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 833.5, 277.0, 77.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "waveform_select_end",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.01,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-98",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 945.0, 300.0, 53.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "waveform_select_start",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-99",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 840.0, 300.0, 53.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startloop",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-91",
					"bgcolor" : [ 0.45098, 1.0, 0.0, 1.0 ],
					"numinlets" : 2,
					"fontface" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 750.0, 525.0, 61.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "groover",
					"text" : "p groover",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-90",
					"numinlets" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 630.0, 555.0, 139.0, 20.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 33.0, 75.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 33.0, 75.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak line 0.",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 270.0, 405.0, 66.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1000.",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 315.0, 375.0, 49.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::waveform",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 270.0, 435.0, 172.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 315.0, 345.0, 32.5, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 50",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 255.0, 240.0, 86.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 315.0, 315.0, 32.5, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"outlettype" : [ "bang", "float" ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 375.0, 195.0, 32.5, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0.",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 345.0, 240.0, 32.5, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u045000893",
									"text" : "pattr @bindto parent::waveform_select_start",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 375.0, 165.0, 251.0, 20.0 ],
									"numoutlets" : 3,
									"restore" : [ 0.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u164000896",
									"text" : "pattr @bindto parent::waveform_select_end",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 345.0, 135.0, 248.0, 20.0 ],
									"numoutlets" : 3,
									"restore" : [ 79.772911 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 315.0, 75.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"id" : "obj-77",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 15.0, 65.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "loop 1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-78",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 45.0, 46.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startloop",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-79",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 45.0, 60.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 1",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-80",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 167.0, 46.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "groove~ vocoder_buf",
									"outlettype" : [ "signal", "signal" ],
									"fontname" : "Arial",
									"id" : "obj-81",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 214.0, 125.0, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-85",
									"numinlets" : 0,
									"patching_rect" : [ 150.0, 75.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-86",
									"numinlets" : 0,
									"patching_rect" : [ 203.0, 75.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-87",
									"numinlets" : 0,
									"patching_rect" : [ 256.0, 75.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-88",
									"numinlets" : 1,
									"patching_rect" : [ 150.0, 294.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-81", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-81", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "display length ",
					"fontname" : "Arial",
					"id" : "obj-82",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 728.0, 277.0, 90.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "waveform_display_length",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.01,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-83",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 735.0, 300.0, 57.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "waveform_display_start",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-84",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 630.0, 300.0, 63.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "display start ",
					"fontname" : "Arial",
					"id" : "obj-69",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 626.0, 277.0, 80.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-76",
					"presentation_rect" : [ 15.0, 212.0, 53.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 630.0, 525.0, 53.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "player",
					"text" : "p buffers",
					"fontname" : "Arial",
					"id" : "obj-71",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 390.0, 210.0, 62.0, 20.0 ],
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 33.0, 75.0, 523.0, 395.0 ],
						"bglocked" : 0,
						"defrect" : [ 33.0, 75.0, 523.0, 395.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.001",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 225.0, 210.0, 49.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::waveform_select_start",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 165.0, 330.0, 243.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::waveform_select_end",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 255.0, 240.0, 240.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 195.0, 270.0, 32.5, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::waveform_display_start",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 195.0, 300.0, 249.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::waveform_display_length",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 240.0, 270.0, 259.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend open",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 180.0, 135.0, 87.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sfinfo~",
									"outlettype" : [ "int", "int", "float", "float", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 180.0, 180.0, 86.5, 20.0 ],
									"numoutlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak read file 0 -1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 135.0, 101.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 90.0, 32.5, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ vocoder_buf",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 180.0, 118.0, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-65",
									"numinlets" : 0,
									"patching_rect" : [ 60.0, 30.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"varname" : "waveform",
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"tickmarkcolor" : [ 1.0, 1.0, 1.0, 0.584314 ],
					"id" : "obj-45",
					"textcolor" : [  ],
					"presentation_rect" : [ 15.0, 75.0, 541.0, 106.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"labelbgcolor" : [ 0.215686, 0.215686, 0.215686, 1.0 ],
					"snapto" : 2,
					"numinlets" : 5,
					"selectioncolor" : [ 1.0, 0.843137, 0.843137, 0.360784 ],
					"labeltextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"buffername" : "vocoder_buf",
					"fontface" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 630.0, 375.0, 439.0, 103.0 ],
					"waveformcolor" : [ 0.098039, 1.0, 0.0, 1.0 ],
					"numoutlets" : 6,
					"presentation" : 1,
					"setmode" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Restart Csound after changing # of bands.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-40",
					"presentation_rect" : [ 210.0, 210.0, 127.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 210.0, 80.0, 150.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stop / start Csound:",
					"fontname" : "Arial",
					"id" : "obj-21",
					"presentation_rect" : [ 360.0, 210.0, 119.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 150.0, 335.0, 188.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open csd file:",
					"fontname" : "Arial",
					"id" : "obj-13",
					"presentation_rect" : [ 437.0, 50.0, 86.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ -38.0, 423.0, 83.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"presentation_rect" : [ 517.0, 50.0, 38.0, 18.0 ],
					"bgcolor" : [ 0.0, 0.94902, 1.0, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 45.0, 425.0, 38.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Based on Victor Lazzarini's vocoder UDO.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-70",
					"presentation_rect" : [ 395.0, 3.0, 147.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 615.0, 120.0, 150.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "vocoder",
					"fontname" : "Arial",
					"id" : "obj-63",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"presentation_rect" : [ 15.0, 0.0, 135.0, 41.0 ],
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"fontface" : 3,
					"fontsize" : 30.0,
					"patching_rect" : [ 615.0, 75.0, 145.0, 41.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 12,
					"fontname" : "Arial",
					"id" : "obj-67",
					"textcolor" : [ 0.784314, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 495.0, 350.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 180.0, 440.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "amp",
					"fontname" : "Arial",
					"id" : "obj-64",
					"presentation_rect" : [ 504.0, 369.0, 34.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 240.0, 440.0, 42.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 390.0, 150.0, 56.0, 20.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 33.0, 73.0, 301.0, 319.0 ],
						"bglocked" : 0,
						"defrect" : [ 33.0, 73.0, 301.0, 319.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-34",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 45.0, 105.0, 32.5, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-32",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 75.0, 135.0, 76.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-37",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-41",
									"numinlets" : 1,
									"patching_rect" : [ 52.5, 210.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "H:/samples/Recordings/Understanding/Babylonis_1.aiff",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-39",
					"presentation_rect" : [ 15.0, 183.0, 540.0, 18.0 ],
					"bgcolor" : [ 0.913725, 1.0, 0.65098, 1.0 ],
					"numinlets" : 2,
					"fontface" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 390.0, 180.0, 406.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.341176, 0.976471, 0.0, 1.0 ],
					"id" : "obj-74",
					"presentation_rect" : [ 523.0, 201.0, 36.0, 36.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 360.0, 36.0, 36.0 ],
					"numoutlets" : 1,
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI note vocoder frequencies.",
					"fontname" : "Arial",
					"id" : "obj-3",
					"presentation_rect" : [ 91.0, 398.0, 183.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 15.0, 183.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p amp",
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Arial",
					"id" : "obj-60",
					"numinlets" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 105.0, 440.0, 64.0, 20.0 ],
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 354.0, 179.0, 384.0, 312.0 ],
						"bglocked" : 0,
						"defrect" : [ 354.0, 179.0, 384.0, 312.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dbtoa",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 180.0, 90.0, 41.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 1.",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 120.0, 120.0, 35.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 1.",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 120.0, 35.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 120.0, 195.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 195.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"patching_rect" : [ 180.0, 60.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"patching_rect" : [ 120.0, 60.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-3",
									"numinlets" : 0,
									"patching_rect" : [ 60.0, 60.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pattrforward cIN",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-58",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 0.0, 275.0, 96.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pattrforward cIN",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-57",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 0.0, 185.0, 96.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r\ndsp open",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-55",
					"presentation_rect" : [ 370.0, 373.0, 62.0, 32.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 180.0, 485.0, 62.0, 32.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-54",
					"presentation_rect" : [ 435.0, 350.0, 56.0, 56.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"offgradcolor1" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ongradcolor1" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 2,
					"ongradcolor2" : [ 0.709804, 0.709804, 0.0, 1.0 ],
					"offgradcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 105.0, 470.0, 56.0, 56.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"calccount" : 16,
					"rounded" : 0,
					"gridcolor" : [ 0.090196, 0.078431, 0.078431, 1.0 ],
					"id" : "obj-56",
					"presentation_rect" : [ 434.0, 252.0, 125.0, 90.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 105.0, 530.0, 125.0, 90.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "drywet $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-1",
					"presentation_rect" : [ 300.0, 338.0, 68.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 300.0, 248.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : -1.0,
					"maximum" : 1.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"presentation_rect" : [ 300.0, 315.0, 48.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 300.0, 215.0, 48.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"minimum" : -64,
					"maximum" : 64,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"presentation_rect" : [ 15.0, 315.0, 39.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 215.0, 39.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "trans $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"presentation_rect" : [ 15.0, 339.0, 58.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 249.0, 58.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"items" : [ "sine", ",", "tri", ",", "square", ",", "square+", ",", "square-", ",", "sawUp", ",", "sawDown", ",", "sawUp+", ",", "sawDown+", ",", "sawUp-", ",", "sawDown-" ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"pattrmode" : 1,
					"fontname" : "Arial",
					"id" : "obj-7",
					"presentation_rect" : [ 220.0, 315.0, 74.0, 20.0 ],
					"numinlets" : 1,
					"arrow" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 220.0, 215.0, 76.0, 20.0 ],
					"numoutlets" : 3,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lfoTyp $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"presentation_rect" : [ 220.0, 339.0, 61.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 220.0, 249.0, 61.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lfoFrq $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"presentation_rect" : [ 149.0, 339.0, 60.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 149.0, 249.0, 60.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"presentation_rect" : [ 149.0, 316.0, 52.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 149.0, 216.0, 52.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lfoAmp $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"presentation_rect" : [ 74.0, 339.0, 67.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 74.0, 249.0, 67.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"maximum" : 64.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"presentation_rect" : [ 74.0, 316.0, 52.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 74.0, 216.0, 52.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"items" : [ "saw", ",", "square", ",", "tri" ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontname" : "Arial",
					"id" : "obj-14",
					"presentation_rect" : [ 296.0, 255.0, 58.0, 20.0 ],
					"numinlets" : 1,
					"arrow" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 296.0, 123.0, 58.0, 20.0 ],
					"numoutlets" : 3,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "vcoTyp $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"presentation_rect" : [ 296.0, 279.0, 68.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 296.0, 153.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"maximum" : 32,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"presentation_rect" : [ 76.0, 255.0, 41.0, 20.0 ],
					"bgcolor" : [ 0.54902, 1.0, 0.933333, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 76.0, 125.0, 41.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frqMax $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-17",
					"presentation_rect" : [ 221.0, 279.0, 70.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 221.0, 153.0, 70.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"maximum" : 1.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"presentation_rect" : [ 221.0, 255.0, 52.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 221.0, 125.0, 52.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"maximum" : 127,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-23",
					"presentation_rect" : [ 285.0, 375.0, 41.0, 20.0 ],
					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 150.0, 35.0, 41.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"maximum" : 127,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-24",
					"presentation_rect" : [ 195.0, 375.0, 41.0, 20.0 ],
					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 105.0, 35.0, 41.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"maximum" : 127,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-25",
					"presentation_rect" : [ 105.0, 375.0, 41.0, 20.0 ],
					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 60.0, 35.0, 41.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mtof",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-26",
					"hidden" : 1,
					"numinlets" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 95.0, 167.0, 20.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 330.0, 193.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 330.0, 193.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "n3 $1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 195.0, 75.0, 46.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 195.0, 15.0, 29.0, 29.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "n2 $1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 135.0, 75.0, 46.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-12",
									"numinlets" : 0,
									"patching_rect" : [ 135.0, 15.0, 29.0, 29.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "n1 $1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 75.0, 75.0, 46.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-14",
									"numinlets" : 0,
									"patching_rect" : [ 75.0, 15.0, 29.0, 29.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "n0 $1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 75.0, 46.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-16",
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 120.0, 29.0, 29.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"patching_rect" : [ 15.0, 15.0, 29.0, 29.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"maximum" : 127,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-27",
					"presentation_rect" : [ 15.0, 375.0, 41.0, 20.0 ],
					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 35.0, 41.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frqMin $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-29",
					"presentation_rect" : [ 150.0, 279.0, 68.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 150.0, 153.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"maximum" : 1.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-30",
					"presentation_rect" : [ 150.0, 255.0, 52.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 150.0, 125.0, 52.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bands $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"presentation_rect" : [ 76.0, 279.0, 66.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 76.0, 153.0, 66.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend c",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-32",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 375.0, 69.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-33",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 195.0, 360.0, 75.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "cIN",
					"text" : "t l",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 345.0, 20.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-37",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 105.0, 335.0, 33.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"id" : "obj-38",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 105.0, 305.0, 64.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 1005.0, 45.0, 80.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Q $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-46",
					"presentation_rect" : [ 15.0, 279.0, 38.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 153.0, 38.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 2.0,
					"maximum" : 100.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-47",
					"presentation_rect" : [ 15.0, 255.0, 48.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 125.0, 48.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"active1" : [ 0.0, 0.203922, 1.0, 1.0 ],
					"emptycolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"spacing" : 2,
					"id" : "obj-48",
					"presentation_rect" : [ 161.0, 11.0, 94.0, 22.0 ],
					"margin" : 4,
					"numinlets" : 1,
					"active2" : [ 0.0, 0.070588, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"bubblesize" : 12,
					"patching_rect" : [ 1005.0, 105.0, 94.0, 22.0 ],
					"numoutlets" : 4,
					"presentation" : 1,
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-47", "flonum", "float", 6.0, 5, "obj-30", "flonum", "float", 0.04, 5, "obj-27", "number", "int", 52, 5, "obj-25", "number", "int", 47, 5, "obj-24", "number", "int", 54, 5, "obj-23", "number", "int", 62, 5, "obj-18", "flonum", "float", 0.82, 5, "obj-16", "number", "int", 16, 5, "obj-14", "umenu", "int", 0, 5, "obj-12", "flonum", "float", 0.12, 5, "obj-10", "flonum", "float", 3.85, 5, "obj-7", "umenu", "int", 0, 5, "obj-5", "number", "int", 0, 5, "obj-2", "flonum", "float", 1.0, 5, "obj-67", "number", "int", 0, 5, "obj-76", "flonum", "float", 1.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-47", "flonum", "float", 4.82, 6, "<invalid>", "gain~", "list", 127, 10.0, 6, "<invalid>", "gain~", "list", 127, 10.0, 5, "<invalid>", "number", "int", 127, 5, "obj-30", "flonum", "float", 0.04, 5, "obj-27", "number", "int", 64, 5, "obj-25", "number", "int", 52, 5, "obj-24", "number", "int", 68, 5, "obj-23", "number", "int", 62, 5, "<invalid>", "number", "int", 78, 5, "<invalid>", "number", "int", 65, 5, "<invalid>", "number", "int", 64, 5, "<invalid>", "number", "int", 91, 5, "obj-18", "flonum", "float", 0.82, 5, "obj-16", "number", "int", 16, 5, "obj-14", "umenu", "int", 2, 5, "obj-12", "flonum", "float", 0.12, 5, "obj-10", "flonum", "float", 3.85, 5, "obj-7", "umenu", "int", 0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-47", "flonum", "float", 28.0, 6, "<invalid>", "gain~", "list", 127, 10.0, 6, "<invalid>", "gain~", "list", 127, 10.0, 5, "<invalid>", "number", "int", 127, 5, "obj-30", "flonum", "float", 0.2, 5, "obj-27", "number", "int", 53, 5, "obj-25", "number", "int", 48, 5, "obj-24", "number", "int", 56, 5, "obj-23", "number", "int", 61, 5, "<invalid>", "number", "int", 78, 5, "<invalid>", "number", "int", 65, 5, "<invalid>", "number", "int", 64, 5, "<invalid>", "number", "int", 91, 5, "obj-18", "flonum", "float", 0.88, 5, "obj-16", "number", "int", 24, 5, "obj-14", "umenu", "int", 2, 5, "obj-12", "flonum", "float", 0.14, 5, "obj-10", "flonum", "float", 3.85, 5, "obj-7", "umenu", "int", 0, 5, "obj-5", "number", "int", -12 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-47", "flonum", "float", 28.0, 6, "<invalid>", "gain~", "list", 127, 10.0, 6, "<invalid>", "gain~", "list", 127, 10.0, 5, "<invalid>", "number", "int", 127, 5, "obj-30", "flonum", "float", 0.2, 5, "obj-27", "number", "int", 53, 5, "obj-25", "number", "int", 48, 5, "obj-24", "number", "int", 56, 5, "obj-23", "number", "int", 61, 5, "<invalid>", "number", "int", 78, 5, "<invalid>", "number", "int", 65, 5, "<invalid>", "number", "int", 64, 5, "<invalid>", "number", "int", 91, 5, "obj-18", "flonum", "float", 0.88, 5, "obj-16", "number", "int", 24, 5, "obj-14", "umenu", "int", 2, 5, "obj-12", "flonum", "float", 33.0, 5, "obj-10", "flonum", "float", 1.94, 5, "obj-7", "umenu", "int", 2, 5, "obj-5", "number", "int", -12 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-50",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 479.0, 211.0, 38.0, 18.0 ],
					"bgcolor" : [ 0.917647, 0.0, 0.0, 1.0 ],
					"numinlets" : 2,
					"fontface" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 150.0, 360.0, 38.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "csound~ @io 2 @scale 0 \"-m0 vocoder.csd\"",
					"outlettype" : [ "signal", "signal", "list", "int", "bang", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-52",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 105.0, 410.0, 250.0, 20.0 ],
					"numoutlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cIN",
					"fontname" : "Arial",
					"id" : "obj-53",
					"textcolor" : [ 1.0, 0.035294, 0.035294, 1.0 ],
					"hidden" : 1,
					"frgb" : [ 1.0, 0.035294, 0.035294, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ -15.0, 345.0, 29.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"background" : 1,
					"types" : [  ],
					"id" : "obj-28",
					"presentation_rect" : [ 15.0, 75.0, 541.0, 105.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 390.0, 45.0, 179.0, 96.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"grad2" : [ 1.0, 0.94902, 0.0, 1.0 ],
					"background" : 1,
					"id" : "obj-68",
					"presentation_rect" : [ 15.0, 0.0, 539.0, 45.0 ],
					"numinlets" : 1,
					"mode" : 1,
					"patching_rect" : [ 610.0, 72.0, 205.0, 45.0 ],
					"grad1" : [ 0.117647, 0.117647, 0.117647, 1.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-45", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-90", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 2 ],
					"destination" : [ "obj-90", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 3 ],
					"destination" : [ "obj-90", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-54", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-60", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-60", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 3 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 2 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 1 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 3 ],
					"destination" : [ "obj-92", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 2 ],
					"destination" : [ "obj-92", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-92", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{

		}

	}

}
