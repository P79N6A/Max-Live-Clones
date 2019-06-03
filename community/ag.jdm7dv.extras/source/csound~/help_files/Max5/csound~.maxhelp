{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 173.0, 176.0, 976.0, 510.0 ],
		"bglocked" : 0,
		"defrect" : [ 173.0, 176.0, 976.0, 510.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 356.0, 442.0, 65.0, 65.0 ],
					"offgradcolor1" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
					"ongradcolor1" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 2,
					"ongradcolor2" : [ 1.0, 1.0, 0.133333, 1.0 ],
					"offgradcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-118"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"chn string channels\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 770.0, 203.0, 132.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-6",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 293.0, 652.0, 444.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 293.0, 652.0, 444.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Since my_string is also an output channel, whenever it's value changes, it will be output here.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 193.0, 338.0, 287.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set my_string channel.",
									"fontsize" : 12.0,
									"patching_rect" : [ 422.0, 277.0, 139.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set my_string channel.",
									"fontsize" : 12.0,
									"patching_rect" : [ 295.0, 250.0, 139.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Print my_string channel value to Max window.",
									"fontsize" : 12.0,
									"patching_rect" : [ 226.0, 218.0, 259.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set my_string channel to \"Aaaahhhhchoo!\".",
									"fontsize" : 12.0,
									"patching_rect" : [ 203.0, 189.0, 244.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set my_string channel to \"Hello World\".",
									"fontsize" : 12.0,
									"patching_rect" : [ 168.0, 160.0, 244.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "e i3 0 1",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 175.0, 218.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 122.0, 113.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-9",
									"textcolor" : [ 0.0, 0.05098, 1.0, 1.0 ],
									"frgb" : [ 0.0, 0.05098, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1) Start DSP.\n2) Start Csound.\n3) Send some messages, see what happens.",
									"linecount" : 3,
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 20.0, 61.0, 274.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-8",
									"textcolor" : [ 0.0, 0.05098, 1.0, 1.0 ],
									"frgb" : [ 0.0, 0.05098, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 90.0, 360.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-7",
									"textcolor" : [ 0.0, 0.05098, 1.0, 1.0 ],
									"frgb" : [ 0.0, 0.05098, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 9.0, 256.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-6",
									"textcolor" : [ 0.0, 0.05098, 1.0, 1.0 ],
									"frgb" : [ 0.0, 0.05098, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 38.0, 246.0, 66.0, 66.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "my_string \"H:/Projects/Fun with fire.aiff\"",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 24.0,
									"patching_rect" : [ 182.0, 401.0, 463.0, 32.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 12.0,
									"patching_rect" : [ 182.0, 377.0, 74.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 117.0, 358.0, 52.0, 52.0 ],
									"offgradcolor1" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
									"ongradcolor1" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 2,
									"ongradcolor2" : [ 1.0, 1.0, 0.133333, 1.0 ],
									"offgradcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-118"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "c my_string \"H:/Projects/Fun with fire.aiff\"",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 192.0, 278.0, 230.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-63"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "c my_string Whoa!!!",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 177.0, 251.0, 117.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-62"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "e i2 0 1",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 151.0, 189.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-61"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "e i1 0 1",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 117.0, 160.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-60"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "chn string channels",
									"fontsize" : 36.0,
									"patching_rect" : [ 19.0, 10.0, 332.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "csound~ chnstring.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 117.0, 316.0, 182.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 6,
									"outlettype" : [ "signal", "signal", "list", "int", "bang", "bang" ],
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.866667, 0.882353, 0.847059, 1.0 ],
									"patching_rect" : [ 14.0, 6.0, 331.0, 56.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-18"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 1 ],
									"destination" : [ "obj-118", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p [csound~] arguments",
					"fontsize" : 12.0,
					"patching_rect" : [ 770.0, 181.0, 137.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-29",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 518.0, 141.0, 409.0, 634.0 ],
						"bglocked" : 0,
						"defrect" : [ 518.0, 141.0, 409.0, 634.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "New Argument Style:",
									"fontface" : 1,
									"fontsize" : 16.0,
									"patching_rect" : [ 8.0, 2.0, 214.0, 25.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Old Argument Style:",
									"fontface" : 1,
									"fontsize" : 16.0,
									"patching_rect" : [ 8.0, 482.0, 215.0, 25.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When using \"noscale\" or \"@scale 0\", remember to add \"0dbfs = 1\" to your orchestra header.",
									"linecount" : 2,
									"fontface" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 8.0, 594.0, 394.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-26",
									"textcolor" : [ 0.717647, 0.0, 0.0, 1.0 ],
									"frgb" : [ 0.717647, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"noscale\": Don't scale audio from [-1, 1] to Csound's 0dB level.",
									"fontsize" : 12.0,
									"patching_rect" : [ 11.0, 563.0, 373.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2 number arguments: # signal inlets and # of signal outlets respectively.",
									"fontsize" : 12.0,
									"patching_rect" : [ 10.0, 544.0, 390.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 number argument: # of signal inlets/outlets.",
									"fontsize" : 12.0,
									"patching_rect" : [ 10.0, 525.0, 282.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0 number arguments: 2 signal inlets/outlets.",
									"fontsize" : 12.0,
									"patching_rect" : [ 10.0, 506.0, 282.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
									"patching_rect" : [ 8.0, 503.0, 392.0, 83.0 ],
									"numinlets" : 1,
									"rounded" : 12,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "You can specify attributes and the Csound message within the [csound~] argument list.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 17.0, 32.0, 298.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Even if you add the Csound message to [csound~] argument list, you must still send \"start\" or \"bang\" to compile and start the performance (unless you added \"@start 1\").",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 188.0, 369.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "# of input audio channels (default = 2)\nEnable/Disable invalue processing (default = 1)\nSet interval for rate of message output (default = 1ms)\n# of input/output audio channels (default = 2)\n# of output audio channels (default = 2)\nEnable/Disable outvalue processing (default = 1)\nEnable/Disable overdrive mode (default = 0)\nEnable/Disable output to Max window (default = 1)\nEnable/Disable scaling of audio data (default = 1)\nEnable/Disable auto compile & start (default = 0)",
									"linecount" : 10,
									"fontsize" : 12.0,
									"patching_rect" : [ 94.0, 319.0, 303.0, 144.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@i\n@input\n@interval\n@io \n@o\n@output @overdrive   @message\n@scale\n@start",
									"linecount" : 10,
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 319.0, 86.0, 144.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The attributes are not Max 5 attributes. To keep backward compatibility with Max 4, official attribute support has not been implemented (yet).",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 240.0, 369.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attributes:",
									"fontface" : 3,
									"fontsize" : 14.0,
									"patching_rect" : [ 14.0, 297.0, 88.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "[csound~ \"badkitty.csd -m0\" @scale 0]",
									"fontsize" : 12.0,
									"patching_rect" : [ 34.0, 128.0, 227.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "[csound~ hello.csd @io 4 @overdrive 1]",
									"fontsize" : 12.0,
									"patching_rect" : [ 34.0, 92.0, 239.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If the Csound message has spaces, put double-quotes around it.",
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 163.0, 369.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "[csound~ @i 2 @o 4 \"fun.orc fun.sco\"]",
									"fontsize" : 12.0,
									"patching_rect" : [ 34.0, 110.0, 225.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.898039, 1.0, 0.862745, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
									"patching_rect" : [ 32.0, 88.0, 246.0, 64.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Examples:",
									"fontface" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 32.0, 70.0, 100.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
									"patching_rect" : [ 8.0, 24.0, 393.0, 455.0 ],
									"numinlets" : 1,
									"rounded" : 12,
									"numoutlets" : 0,
									"id" : "obj-28"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"run message\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 354.0, 98.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-27",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 342.0, 214.0, 847.0, 357.0 ],
						"bglocked" : 0,
						"defrect" : [ 342.0, 214.0, 847.0, 357.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "You can use either Max style or POSIX style paths.",
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 320.0, 355.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a path contains spaces, put double-quotes around it.",
									"fontsize" : 12.0,
									"patching_rect" : [ 538.0, 140.0, 302.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In Mac OSX, many apps are actually folders.  To get the actual binary executable, right click the app in Finder, select \"Show Package Contents\", navigate to Contents/MacOS/, the name of the executable will be there.  Right-click on it, select \"Get Info\".  The absolute path to the folder containing the executable is under the \"Where\" section.  ",
									"linecount" : 6,
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 225.0, 368.0, 89.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a command is not in your PATH environment variable, you must specify an absolute path.  ",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 180.0, 355.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Relative paths are relative to the folder containing the patch that contains [csound~].",
									"linecount" : 3,
									"fontface" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 300.0, 204.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "You can also use relative paths:",
									"fontface" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 180.0, 204.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "edit hello.csd",
									"bgcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 195.0, 210.0, 81.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "edit sub/hello.csd",
									"bgcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 195.0, 270.0, 103.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "edit ../hello.csd",
									"bgcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 195.0, 240.0, 91.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound~ 1.0.6 or later required.",
									"fontsize" : 12.0,
									"patching_rect" : [ 527.0, 94.0, 215.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-9",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"frgb" : [ 0.65098, 0.0, 0.019608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The \"run\" message allows you to execute commands.",
									"fontsize" : 12.0,
									"patching_rect" : [ 527.0, 115.0, 298.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "run",
									"fontsize" : 36.0,
									"patching_rect" : [ 527.0, 45.0, 68.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-33",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.952941, 0.933333, 0.917647, 1.0 ],
									"patching_rect" : [ 521.0, 40.0, 310.0, 101.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-106"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::IN",
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 270.0, 131.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"/Users/davis/Applications/Audacity 1.3.7.1/Audacity.app/Contents/MacOS/Audacity\" /Users/davis/Music/Csound/berg.wav",
									"linecount" : 2,
									"bgcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 75.0, 135.0, 462.0, 32.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "pvanal -n256 -w4 mono.aif mono.pvx",
									"bgcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 105.0, 207.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/Applications/TextEdit.app/Contents/MacOS/TextEdit readbuf.csd",
									"bgcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 45.0, 355.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal",
									"bgcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 45.0, 75.0, 336.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"C:/Program Files/Audacity 1.3 Beta (Unicode)/Audacity.exe\" \"H:/samples/01 Bipolar 175bpm Ebmin/kick01.wav\"",
									"bgcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 15.0, 651.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend run",
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 240.0, 75.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-112"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 383.0, 269.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pattrforward IN",
					"fontsize" : 12.0,
					"patching_rect" : [ 75.0, 102.0, 90.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "More Info:",
					"fontface" : 2,
					"fontsize" : 16.0,
					"patching_rect" : [ 770.0, 133.0, 91.0, 25.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-115",
					"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
					"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"loadsamp message\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 267.0, 133.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-114",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 108.0, 117.0, 1012.0, 594.0 ],
						"bglocked" : 0,
						"defrect" : [ 108.0, 117.0, 1012.0, 594.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"Set Message + Get Length\"",
									"fontsize" : 12.0,
									"patching_rect" : [ 45.0, 240.0, 172.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-71",
									"hidden" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 317.0, 397.0, 514.0, 236.0 ],
										"bglocked" : 0,
										"defrect" : [ 317.0, 397.0, 514.0, 236.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 15.0, 180.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p Get File Length in Seconds",
													"fontsize" : 12.0,
													"patching_rect" : [ 15.0, 105.0, 175.0, 20.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"id" : "obj-7",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 656.0, 96.0, 226.0, 220.0 ],
														"bglocked" : 0,
														"defrect" : [ 656.0, 96.0, 226.0, 220.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 80.0, 127.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 41.0, 45.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 0.001",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 80.0, 107.0, 55.0, 17.0 ],
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"id" : "obj-3"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sfinfo~",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 41.0, 86.0, 79.0, 17.0 ],
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 6,
																	"outlettype" : [ "int", "int", "float", "float", "", "" ],
																	"id" : "obj-4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend open",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 41.0, 65.0, 68.0, 17.0 ],
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-5"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Set the filename message box, then bang it.",
													"linecount" : 3,
													"fontsize" : 12.0,
													"patching_rect" : [ 308.0, 123.0, 135.0, 48.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontsize" : 12.0,
													"patching_rect" : [ 225.0, 144.0, 74.0, 20.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontsize" : 12.0,
													"patching_rect" : [ 210.0, 118.0, 33.5, 20.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 15.0, 15.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-69",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 210.0, 180.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-70",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-69", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-69", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"Macintosh HD:/Users/davis/Music/Csound/RealtimeExamples/808loop.wav\"",
									"fontsize" : 12.0,
									"patching_rect" : [ 289.0, 278.0, 453.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-67"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1) Start DSP.",
									"fontsize" : 14.0,
									"patching_rect" : [ 702.0, 14.0, 139.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-66",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 781.0, 402.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-65",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4) Copy audio file to a Csound table and play it.",
									"fontsize" : 14.0,
									"patching_rect" : [ 702.0, 89.0, 307.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-55",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3) Get the audio file to load.",
									"fontsize" : 14.0,
									"patching_rect" : [ 702.0, 64.0, 194.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-56",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2) Start [csound~].",
									"fontsize" : 14.0,
									"patching_rect" : [ 702.0, 39.0, 139.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-57",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 27.0, 317.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-54",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 208.0, 4.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-4",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 883.0, 169.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 858.0, 372.0, 125.0, 77.0 ],
									"bufsize" : 64,
									"numinlets" : 2,
									"calccount" : 128,
									"numoutlets" : 0,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 382.0, 9.0, 72.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Click this button to start [csound~].",
									"fontsize" : 12.0,
									"patching_rect" : [ 744.0, 130.0, 204.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 795.0, 150.0, 87.0, 87.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 0.0, 1.0, 0.301961, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound~ 1.0.4 or later required.",
									"fontsize" : 12.0,
									"patching_rect" : [ 463.0, 66.0, 215.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-2",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"frgb" : [ 0.65098, 0.0, 0.019608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 216.0, 168.0, 38.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "preset",
									"margin" : 4,
									"patching_rect" : [ 382.0, 33.0, 26.0, 18.0 ],
									"bubblesize" : 8,
									"numinlets" : 1,
									"numoutlets" : 4,
									"spacing" : 2,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"id" : "obj-5",
									"hidden" : 1,
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 6, "obj-37", "gain~", "list", 121, 10.0, 6, "obj-36", "gain~", "list", 121, 10.0, 5, "obj-35", "number", "int", 121, 5, "obj-23", "number", "int", 1, 5, "obj-19", "flonum", "float", 0.0, 5, "obj-17", "flonum", "float", 0.0, 5, "obj-3", "number", "int", 1 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IMPORTANT: Replacing tables while they are being used can cause a crash!",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 252.0, 217.0, 473.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-6",
									"textcolor" : [ 0.839216, 0.0, 0.0, 1.0 ],
									"frgb" : [ 0.839216, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack e i1 0 1.",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 394.0, 89.0, 20.0 ],
									"numinlets" : 4,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The \"loadsamp\" message will load audio data from an audio file into a Csound table.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 463.0, 82.0, 220.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"Open File...\" Dialog Window",
									"fontsize" : 12.0,
									"patching_rect" : [ 258.0, 64.0, 174.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Copy 12 seconds of channel #1 audio (starting at time 0) from kitty.wav. If table #1 doesn't exist, create one that is big enough for 12 seconds of single channel audio at the kitty.wav's samplerate. If table #1 exists, don't replace the table;\rjust copy as much data to fill the Csound table.",
									"linecount" : 5,
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 513.0, 347.0, 75.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loadsamp 1 1 kitty.wav 0. 12.",
									"fontsize" : 12.0,
									"patching_rect" : [ 222.0, 513.0, 167.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Copy 12 seconds of multichannel audio (starting at time 0) from kitty.wav. Create table #1, or replace it if it already exists. The new table's size will be equal to 12 seconds worth of audio data at the kitty.wav's samplerate.",
									"linecount" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 450.0, 330.0, 62.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Examples:",
									"fontface" : 3,
									"fontsize" : 14.0,
									"patching_rect" : [ 222.0, 427.0, 94.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loadsamp -1 0 kitty.wav 0. 12.",
									"fontsize" : 12.0,
									"patching_rect" : [ 222.0, 450.0, 167.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #5 (optional, default = 0): Amount of time to read. 0 means read in all data or as much data as possible. If positive, time is in seconds. If negative, time is in frames.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 400.0, 372.0, 316.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 361.0, 372.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #4 (optional, default = 0): Read offset time. If positive, time is in seconds. If negative, time is in frames.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 364.0, 337.0, 311.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 325.0, 337.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #1: Csound table number to write to.  If negative, any pre-existing table will be replaced with a table whose size equals the amount of data requested in arg #5. A positive number will not replace an existing table.  If the table does not exist, then the sign is ignored and a table is created.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 252.0, 168.0, 533.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #3: file to read from (can be Max or POSIX path)",
									"fontsize" : 12.0,
									"patching_rect" : [ 315.0, 300.0, 301.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 252.0, 238.0, 37.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 364.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward csIN",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 424.0, 102.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 207.0, 48.0, 48.0, 48.0 ],
									"numinlets" : 1,
									"blinkcolor" : [ 0.090196, 0.180392, 1.0, 1.0 ],
									"numoutlets" : 1,
									"fgcolor" : [ 1.0, 1.0, 0.588235, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 60.0, 316.0, 45.0, 45.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "drop audio files here",
									"fontsize" : 18.0,
									"patching_rect" : [ 19.0, 100.0, 180.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-28",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"fontsize" : 12.0,
									"patching_rect" : [ 207.0, 99.0, 71.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"id" : "obj-29",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack loadsamp 1 1 mybuf 0. 0.",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 180.0, 394.0, 200.0, 20.0 ],
									"numinlets" : 6,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loadsamp",
									"fontsize" : 36.0,
									"patching_rect" : [ 463.0, 17.0, 174.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-33",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 9.0,
									"patching_rect" : [ 855.0, 346.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 856.0, 329.0, 41.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"patching_rect" : [ 838.0, 329.0, 15.0, 73.0 ],
									"numinlets" : 2,
									"orientation" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"patching_rect" : [ 815.0, 329.0, 15.0, 73.0 ],
									"numinlets" : 2,
									"orientation" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "csIN",
									"text" : "t l",
									"fontsize" : 12.0,
									"patching_rect" : [ 788.0, 294.0, 21.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 795.0, 240.0, 36.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-39",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"patching_rect" : [ 811.0, 405.0, 43.0, 43.0 ],
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 795.0, 265.0, 17.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 0.0, 1.0, 0.301961, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"fontsize" : 12.0,
									"patching_rect" : [ 758.0, 265.0, 35.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "csound readbuf.csd",
									"bgcolor" : [ 1.0, 1.0, 0.588235, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 812.0, 265.0, 124.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "csound~ noscale",
									"fontsize" : 12.0,
									"patching_rect" : [ 811.0, 294.0, 133.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 6,
									"outlettype" : [ "signal", "signal", "list", "int", "bang", "bang" ],
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csIN",
									"fontsize" : 12.0,
									"patching_rect" : [ 758.0, 294.0, 32.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-46",
									"textcolor" : [ 1.0, 0.035294, 0.035294, 1.0 ],
									"frgb" : [ 1.0, 0.035294, 0.035294, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "dropfile",
									"border" : 0.0,
									"patching_rect" : [ 5.0, 10.0, 200.0, 223.0 ],
									"numinlets" : 1,
									"rounded" : 0.0,
									"numoutlets" : 2,
									"types" : [  ],
									"ignoreclick" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-48",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #2: Channel to read. 0 means read all channels. If > 0, then read from that channel into the Csound table (treating the table as a single channel table).",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 289.0, 239.0, 435.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Click this button to send the \"loadsamp\" message and to play the Csound table.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 17.0, 269.0, 164.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.952941, 0.933333, 0.917647, 1.0 ],
									"patching_rect" : [ 457.0, 9.0, 236.0, 122.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-106"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 1.0, 1.0, 0.588235, 1.0 ],
									"border" : 1,
									"patching_rect" : [ 6.0, 9.0, 200.0, 224.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-47"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-8", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 1 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [ 767.5, 287.0, 820.5, 287.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [ 804.5, 287.0, 820.5, 287.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 387.0, 69.5, 387.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [ 821.5, 261.0, 821.5, 261.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-32", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-32", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-32", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-32", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 387.0, 189.5, 387.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 419.0, 69.5, 419.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pattrforward IN",
					"fontsize" : 12.0,
					"patching_rect" : [ 21.0, 198.0, 90.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-113",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IN",
					"fontface" : 1,
					"fontsize" : 14.0,
					"patching_rect" : [ 307.0, 303.0, 26.0, 23.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-111",
					"hidden" : 1,
					"textcolor" : [ 0.72549, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.72549, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "IN",
					"text" : "t l",
					"fontsize" : 12.0,
					"patching_rect" : [ 328.0, 304.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-109",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pattrforward IN",
					"fontsize" : 12.0,
					"patching_rect" : [ 4.0, 437.0, 90.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-108",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"record play\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 332.0, 88.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-105",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 126.0, 130.0, 479.0, 263.0 ],
						"bglocked" : 0,
						"defrect" : [ 126.0, 130.0, 479.0, 263.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::IN",
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 225.0, 131.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-112",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Playback speed (1 == no change in speed).",
									"fontsize" : 12.0,
									"patching_rect" : [ 101.0, 75.0, 247.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1.",
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 24.0, 75.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tempo $1",
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 75.0, 67.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 50.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.01,
									"numinlets" : 1,
									"triscale" : 0.9,
									"maximum" : 8.0,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Read recording from file.",
									"fontsize" : 12.0,
									"patching_rect" : [ 109.0, 195.0, 145.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Write recording to file.",
									"fontsize" : 12.0,
									"patching_rect" : [ 115.0, 165.0, 132.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read rec.bin",
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 195.0, 75.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "write rec.bin",
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 165.0, 81.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Start/Stop playback of recorded events and MIDI data.",
									"fontsize" : 12.0,
									"patching_rect" : [ 157.0, 135.0, 302.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Start/Stop recording events and MIDI data.",
									"fontsize" : 12.0,
									"patching_rect" : [ 195.0, 105.0, 238.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "playstop",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 135.0, 64.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "playstart",
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 135.0, 59.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recordstop",
									"fontsize" : 12.0,
									"patching_rect" : [ 114.0, 105.0, 78.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recordstart",
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 105.0, 83.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-33"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Presets.",
					"fontface" : 3,
					"fontsize" : 14.0,
					"patching_rect" : [ 6.0, 4.0, 68.0, 23.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"audio input/output\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 159.0, 124.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-10",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 41.0, 226.0, 925.0, 429.0 ],
						"bglocked" : 0,
						"defrect" : [ 41.0, 226.0, 925.0, 429.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you're having a hard time finding a valid value for kr after setting ksmps, don't bother. Just leave the kr statement out of the orchestra.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 590.0, 174.0, 306.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max signal vector size = 32 ksmps = 32, 16, 8, 4, 2, 1",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 657.0, 81.0, 162.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If ksmps does NOT evenly divide the Max signal vector size, [csound~] will incur ksmps samples of delay when processing audio.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 589.0, 120.0, 306.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If ksmps evenly divides the Max signal vector size, [csound~] will run with zero latency when processing audio. For example, the following vector size and ksmps values would incur zero latency:",
									"linecount" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 589.0, 14.0, 310.0, 62.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.964706, 0.952941, 0.917647, 1.0 ],
									"patching_rect" : [ 584.0, 8.0, 319.0, 224.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 552.0, 366.0, 72.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When using the \"noscale\" flag, remember to add the line \"0dbfs = 1\" in your orchestra header.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 307.0, 165.0, 269.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 59.0, 28.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-37",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 409.0, 276.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-36",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 56.0, 266.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-54",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3) Play with the pitches.",
									"fontsize" : 14.0,
									"patching_rect" : [ 465.0, 300.0, 163.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-35",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 333.0, 262.0, 74.0, 74.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 0.0, 1.0, 0.301961, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2) Start [csound~].",
									"fontsize" : 14.0,
									"patching_rect" : [ 465.0, 275.0, 142.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-33",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1) Start DSP. ",
									"fontsize" : 14.0,
									"patching_rect" : [ 465.0, 250.0, 118.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-34",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 149.0, 258.0, 130.0, 130.0 ],
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "dB amplitude",
									"fontsize" : 12.0,
									"patching_rect" : [ 166.0, 201.0, 86.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "audio i/o",
									"fontsize" : 36.0,
									"patching_rect" : [ 307.0, 15.0, 167.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-3",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch 2",
									"fontsize" : 12.0,
									"patching_rect" : [ 179.0, 23.0, 65.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 88.0, 23.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In this patch, we're sending two sine waves into [csound~]. The orchestra will mix the two signals so that they are output in stereo.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 307.0, 112.0, 269.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All [csound~] inlets accept audio signals. To access these signals in your csd/orc file, use the \"inch\" opcode.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 307.0, 62.0, 269.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mtof",
									"fontsize" : 12.0,
									"patching_rect" : [ 88.0, 65.0, 39.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 88.0, 43.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9,
									"maximum" : 127.0,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ch 2",
									"fontsize" : 12.0,
									"patching_rect" : [ 117.0, 175.0, 40.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ch 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 66.0, 175.0, 40.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ch 2",
									"fontsize" : 12.0,
									"patching_rect" : [ 191.0, 120.0, 40.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~",
									"fontsize" : 12.0,
									"patching_rect" : [ 88.0, 87.0, 51.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mtof",
									"fontsize" : 12.0,
									"patching_rect" : [ 181.0, 65.0, 39.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 181.0, 43.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9,
									"maximum" : 127.0,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~",
									"fontsize" : 12.0,
									"patching_rect" : [ 181.0, 87.0, 51.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 126.0, 202.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"maximum" : 0.0,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p amp",
									"fontsize" : 12.0,
									"patching_rect" : [ 88.0, 226.0, 57.0, 20.0 ],
									"numinlets" : 3,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"id" : "obj-18",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 350.0, 322.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 350.0, 322.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 90.0, 148.0, 21.0, 21.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 33.0, 148.0, 21.0, 21.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"fontsize" : 12.0,
													"patching_rect" : [ 129.0, 70.0, 48.0, 20.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~ 1.",
													"fontsize" : 12.0,
													"patching_rect" : [ 90.0, 105.0, 49.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~ 1.",
													"fontsize" : 12.0,
													"patching_rect" : [ 33.0, 105.0, 49.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 129.0, 41.0, 21.0, 21.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 90.0, 41.0, 21.0, 21.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 33.0, 41.0, 21.0, 21.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "csIN[1]",
									"text" : "pattrforward csIN",
									"fontsize" : 12.0,
									"patching_rect" : [ 333.0, 397.0, 102.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "message 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 468.0, 368.0, 73.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "preset",
									"margin" : 4,
									"patching_rect" : [ 552.0, 392.0, 33.0, 20.0 ],
									"bubblesize" : 10,
									"numinlets" : 1,
									"numoutlets" : 4,
									"spacing" : 2,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"id" : "obj-22",
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 5, "obj-17", "flonum", "float", -12.0, 5, "obj-15", "flonum", "float", 57.0, 5, "obj-9", "flonum", "float", 55.0 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "csIN",
									"text" : "t l",
									"fontsize" : 12.0,
									"patching_rect" : [ 39.0, 110.0, 21.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 333.0, 338.0, 45.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"patching_rect" : [ 88.0, 259.0, 57.0, 57.0 ],
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 333.0, 368.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"fontsize" : 12.0,
									"patching_rect" : [ 294.0, 368.0, 35.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "csound audio.csd",
									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 355.0, 368.0, 109.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "csound~ noscale",
									"fontface" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 88.0, 147.0, 112.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 6,
									"outlettype" : [ "signal", "signal", "list", "int", "bang", "bang" ],
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csIN",
									"fontsize" : 12.0,
									"patching_rect" : [ 8.0, 110.0, 32.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-31",
									"textcolor" : [ 1.0, 0.035294, 0.035294, 1.0 ],
									"frgb" : [ 1.0, 0.035294, 0.035294, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ch 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 99.0, 120.0, 40.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.952941, 0.933333, 0.917647, 1.0 ],
									"patching_rect" : [ 300.0, 8.0, 281.0, 194.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-106"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 303.5, 392.0, 342.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 342.5, 392.0, 342.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 364.5, 392.0, 342.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 477.5, 392.0, 342.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 368.5, 362.5, 477.5, 362.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 355.5, 362.0, 364.5, 362.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 48.5, 138.0, 97.5, 138.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Open the csd file in the default csd text editor.\nYou can also double-click [csound~].",
					"linecount" : 2,
					"fontface" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 420.0, 262.0, 295.0, 34.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-1",
					"textcolor" : [ 0.572549, 0.164706, 0.745098, 1.0 ],
					"frgb" : [ 0.572549, 0.164706, 0.745098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"writebuf message\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 376.0, 123.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-2",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 87.0, 117.0, 933.0, 520.0 ],
						"bglocked" : 0,
						"defrect" : [ 87.0, 117.0, 933.0, 520.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1) Start DSP.",
									"fontsize" : 14.0,
									"patching_rect" : [ 634.0, 389.0, 139.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-54",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 50.0, 334.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-53",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4) Copy the Csound table to [buffer~ wtab].",
									"fontsize" : 14.0,
									"patching_rect" : [ 634.0, 464.0, 278.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-55",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3) Select a Csound table.",
									"fontsize" : 14.0,
									"patching_rect" : [ 634.0, 439.0, 169.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-56",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2) Start [csound~].",
									"fontsize" : 14.0,
									"patching_rect" : [ 634.0, 414.0, 139.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-57",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 142.0, 267.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-51",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 325.0, 106.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-50",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 678.0, 115.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-15",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 174.0, 46.0, 72.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Click this button to start [csound~].",
									"linecount" : 2,
									"fontsize" : 14.0,
									"patching_rect" : [ 793.0, 128.0, 130.0, 39.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-52",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 706.0, 100.0, 87.0, 87.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 0.0, 1.0, 0.301961, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound~ 1.0.4 or later required.",
									"fontsize" : 12.0,
									"patching_rect" : [ 252.0, 60.0, 179.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-2",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"frgb" : [ 0.65098, 0.0, 0.019608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In this example, the writebuf.csd orchestra has 3 tables. The tables contain single cycles of 3 types of waves. Clicking on the red button will load one of them in the buffer~ named \"mybuf\".",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 429.0, 44.0, 358.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bang me to send \"writebuf\" message and set [cycle~] to play the copied data.",
									"linecount" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 142.0, 209.0, 129.0, 62.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-4",
									"textcolor" : [ 0.407843, 0.0, 0.0, 1.0 ],
									"frgb" : [ 0.407843, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 248.0, 143.0, 34.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontsize" : 12.0,
									"patching_rect" : [ 248.0, 120.0, 76.0, 20.0 ],
									"numinlets" : 1,
									"items" : [ "sine", ",", "triangle", ",", "square" ],
									"fontname" : "Arial",
									"numoutlets" : 3,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set wtab",
									"fontsize" : 12.0,
									"patching_rect" : [ 145.0, 343.0, 55.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 173.0, 318.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-8",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"bgcolor" : [ 0.219608, 0.235294, 0.215686, 1.0 ],
									"patching_rect" : [ 13.0, 93.0, 191.0, 78.0 ],
									"numinlets" : 2,
									"calccount" : 16,
									"rounded" : 0,
									"numoutlets" : 0,
									"range" : [ -1.01, 1.01 ],
									"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 64.7 wtab",
									"fontsize" : 12.0,
									"patching_rect" : [ 12.0, 216.0, 100.0, 20.0 ],
									"numinlets" : 2,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p set size of buffer to 512 samples",
									"fontsize" : 12.0,
									"patching_rect" : [ 13.0, 23.0, 220.0, 20.0 ],
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"hidden" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 411.0, 65.0, 326.0, 233.0 ],
										"bglocked" : 0,
										"defrect" : [ 411.0, 65.0, 326.0, 233.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 44.0, 122.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"fontsize" : 9.0,
													"patching_rect" : [ 92.0, 60.0, 40.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr (512. / $f1) * 1000.",
													"fontsize" : 9.0,
													"patching_rect" : [ 92.0, 80.0, 131.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus sr",
													"fontsize" : 9.0,
													"patching_rect" : [ 41.0, 40.0, 61.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak size 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 44.0, 100.0, 58.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-5"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If > 0, then assume Csound table has only one channel.",
									"fontsize" : 12.0,
									"patching_rect" : [ 321.0, 243.0, 322.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If = 0, then assume Csound table has the same number of channels as buffer~, then copy all channels.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 321.0, 208.0, 325.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 248.0, 166.0, 37.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "preset",
									"margin" : 4,
									"patching_rect" : [ 174.0, 69.0, 40.0, 18.0 ],
									"bubblesize" : 8,
									"numinlets" : 1,
									"numoutlets" : 4,
									"spacing" : 2,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"id" : "obj-16",
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 6, "obj-39", "gain~", "list", 100, 10.0, 6, "obj-38", "gain~", "list", 100, 10.0, 5, "obj-37", "number", "int", 100, 5, "obj-30", "number", "int", 0, 5, "obj-26", "flonum", "float", 0.0, 5, "obj-24", "flonum", "float", 0.0, 5, "obj-14", "number", "int", 1, 5, "obj-6", "umenu", "int", 0 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The \"writebuf\" message will copy audio data from a Csound table to a [buffer~].",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 429.0, 11.0, 235.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Copy 128 samples (starting at time 0 seconds) from Csound table 7 to channel 1 of buffer~ \"mybuf\". Treat Csound table 7 as a single channel table.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 287.0, 463.0, 290.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "writebuf 7 1 wtab 0. -128",
									"fontsize" : 12.0,
									"patching_rect" : [ 127.0, 463.0, 157.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Copy 12 seconds of multichannel audio (starting at time 0 seconds) from Csound table 1 to buffer~ \"mybuf\". Assume table has same number of channels as buffer~.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 287.0, 409.0, 307.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Examples:",
									"fontsize" : 12.0,
									"patching_rect" : [ 127.0, 388.0, 162.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "writebuf 1 0 wtab 0. 12.",
									"fontsize" : 12.0,
									"patching_rect" : [ 127.0, 409.0, 159.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #5 (optional, default = 0): Amount of time to read in seconds. 0 means read in all data or as much data a possible. If negative, time is in sample frames.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 433.0, 322.0, 297.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 392.0, 322.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #4 (optional, default = 0): Read offset time in seconds. If negative, time is in sample frames.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 397.0, 287.0, 277.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 356.0, 287.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #1: Csound table number to read from.",
									"fontsize" : 12.0,
									"patching_rect" : [ 285.0, 166.0, 275.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #3: buffer~ name to write to.",
									"fontsize" : 12.0,
									"patching_rect" : [ 358.0, 264.0, 187.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "wtab",
									"fontsize" : 12.0,
									"patching_rect" : [ 320.0, 266.0, 36.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 284.0, 187.0, 37.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar csIN",
									"fontsize" : 12.0,
									"patching_rect" : [ 176.0, 367.0, 67.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-31",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 173.0, 269.0, 47.0, 47.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ wtab",
									"fontsize" : 12.0,
									"patching_rect" : [ 13.0, 45.0, 77.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack writebuf 1 1 wtab 0. 0.",
									"fontsize" : 12.0,
									"patching_rect" : [ 212.0, 343.0, 199.0, 20.0 ],
									"numinlets" : 6,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "writebuf",
									"fontsize" : 36.0,
									"patching_rect" : [ 252.0, 11.0, 159.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-35",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 242.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-36",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 51.0, 260.0, 41.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"patching_rect" : [ 34.0, 246.0, 15.0, 87.0 ],
									"numinlets" : 2,
									"orientation" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"patching_rect" : [ 16.0, 246.0, 15.0, 87.0 ],
									"numinlets" : 2,
									"orientation" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "csIN",
									"text" : "t l",
									"fontsize" : 12.0,
									"patching_rect" : [ 700.0, 245.0, 21.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 706.0, 190.0, 36.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-41",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"patching_rect" : [ 12.0, 341.0, 37.0, 37.0 ],
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 706.0, 215.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"fontsize" : 12.0,
									"patching_rect" : [ 669.0, 215.0, 35.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "csound writebuf.csd",
									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 723.0, 215.0, 121.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "csound~ noscale",
									"fontsize" : 12.0,
									"patching_rect" : [ 723.0, 245.0, 108.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 6,
									"outlettype" : [ "signal", "signal", "list", "int", "bang", "bang" ],
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csIN",
									"fontsize" : 12.0,
									"patching_rect" : [ 669.0, 246.0, 32.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-48",
									"textcolor" : [ 1.0, 0.035294, 0.035294, 1.0 ],
									"frgb" : [ 1.0, 0.035294, 0.035294, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #2: Target buffer~ channel.",
									"fontsize" : 12.0,
									"patching_rect" : [ 321.0, 187.0, 207.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.952941, 0.933333, 0.917647, 1.0 ],
									"patching_rect" : [ 247.0, 3.0, 543.0, 91.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-106"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [ 154.5, 386.0, 9.0, 386.0, 9.0, 213.0, 21.5, 213.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-34", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-34", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-34", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-34", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-34", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [ 200.5, 339.0, 221.5, 339.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [ 221.5, 364.0, 185.5, 364.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [ 732.5, 211.0, 732.5, 211.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-43", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [ 182.5, 339.0, 154.5, 339.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [ 678.5, 238.0, 732.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [ 715.0, 238.0, 732.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"readbuf message\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 310.0, 122.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-3",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 103.0, 118.0, 988.0, 578.0 ],
						"bglocked" : 0,
						"defrect" : [ 103.0, 118.0, 988.0, 578.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #1: Csound table number to write to.  If negative, any pre-existing table will be replaced with a table whose size equals the amount of data requested in arg #5. A positive number will not replace an existing table.  If the table does not exist, then the sign is ignored and a table is created.",
									"linecount" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 250.0, 154.0, 472.0, 62.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1) Start DSP.",
									"fontsize" : 14.0,
									"patching_rect" : [ 659.0, 4.0, 139.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-66",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 777.0, 385.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-65",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4) Copy mybuf to a Csound table and play it.",
									"fontsize" : 14.0,
									"patching_rect" : [ 659.0, 79.0, 292.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-55",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3) Load an audio file into mybuf.",
									"fontsize" : 14.0,
									"patching_rect" : [ 659.0, 54.0, 212.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-56",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2) Start [csound~].",
									"fontsize" : 14.0,
									"patching_rect" : [ 659.0, 29.0, 139.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-57",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 38.0, 276.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-54",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 206.0, 4.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-4",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 881.0, 159.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 856.0, 354.0, 125.0, 77.0 ],
									"bufsize" : 32,
									"numinlets" : 2,
									"calccount" : 64,
									"numoutlets" : 0,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 337.0, 2.0, 72.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Click this button to start [csound~].",
									"fontsize" : 12.0,
									"patching_rect" : [ 742.0, 119.0, 195.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 793.0, 140.0, 87.0, 87.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 0.0, 1.0, 0.301961, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound~ 1.0.4 or later required.",
									"fontsize" : 12.0,
									"patching_rect" : [ 420.0, 60.0, 215.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-2",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"frgb" : [ 0.65098, 0.0, 0.019608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 210.0, 154.0, 38.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "preset",
									"margin" : 4,
									"patching_rect" : [ 337.0, 26.0, 38.0, 17.0 ],
									"bubblesize" : 8,
									"numinlets" : 1,
									"numoutlets" : 4,
									"spacing" : 2,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"id" : "obj-5",
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 6, "obj-37", "gain~", "list", 121, 10.0, 6, "obj-36", "gain~", "list", 121, 10.0, 5, "obj-35", "number", "int", 121, 5, "obj-23", "number", "int", 1, 5, "obj-19", "flonum", "float", 0.0, 5, "obj-17", "flonum", "float", 0.0, 5, "obj-3", "number", "int", 1 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IMPORTANT: Replacing tables while they are being used can cause a crash!",
									"fontface" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 246.0, 215.0, 448.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-6",
									"textcolor" : [ 0.839216, 0.0, 0.0, 1.0 ],
									"frgb" : [ 0.839216, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p Get File Length in Seconds",
									"fontsize" : 12.0,
									"patching_rect" : [ 170.0, 130.0, 175.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-7",
									"hidden" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 656.0, 96.0, 226.0, 220.0 ],
										"bglocked" : 0,
										"defrect" : [ 656.0, 96.0, 226.0, 220.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 80.0, 127.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 41.0, 45.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.001",
													"fontsize" : 9.0,
													"patching_rect" : [ 80.0, 107.0, 55.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfinfo~",
													"fontsize" : 9.0,
													"patching_rect" : [ 41.0, 86.0, 79.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 6,
													"outlettype" : [ "int", "int", "float", "float", "", "" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend open",
													"fontsize" : 9.0,
													"patching_rect" : [ 41.0, 65.0, 68.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-5"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 3 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack e i1 0 1.",
									"fontsize" : 12.0,
									"patching_rect" : [ 74.0, 350.0, 89.0, 20.0 ],
									"numinlets" : 4,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The \"readbuf\" message will copy audio data from a [buffer~] to a Csound table.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 420.0, 76.0, 234.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"Open File...\" Dialog Window",
									"fontsize" : 12.0,
									"patching_rect" : [ 238.0, 53.0, 174.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Copy 12 seconds of channel #1 audio (starting at time 0) from buffer~ \"mybuf\". If table #1 doesn't exist, create one that is big enough for 12 seconds of single channel audio at the buffer~'s samplerate. If table #1 exists, don't replace the table;\rjust copy as much data to fill the Csound table.",
									"linecount" : 6,
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 483.0, 322.0, 89.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "readbuf 1 1 mybuf 0. 12.",
									"fontsize" : 12.0,
									"patching_rect" : [ 222.0, 483.0, 167.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Copy 12 seconds of multichannel audio (starting at time 0) from buffer~ \"mybuf\". Create table #1, or replace it if it already exists. The new table's size will be equal to 12 seconds worth of audio data at the buffer~'s samplerate.",
									"linecount" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 420.0, 321.0, 62.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Examples:",
									"fontface" : 3,
									"fontsize" : 14.0,
									"patching_rect" : [ 222.0, 394.0, 165.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "readbuf -1 0 mybuf 0. 12.",
									"fontsize" : 12.0,
									"patching_rect" : [ 222.0, 420.0, 167.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #5 (optional, default = 0): Amount of time to read. 0 means read in all data or as much data as possible. If positive, time is in seconds. If negative, time is in frames.",
									"linecount" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 394.0, 328.0, 245.0, 62.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 355.0, 328.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #4 (optional, default = 0): Read offset time. If positive, time is in seconds. If negative, time is in frames.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 358.0, 293.0, 311.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 319.0, 293.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #3: buffer~ name to read from",
									"fontsize" : 12.0,
									"patching_rect" : [ 332.0, 272.0, 229.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "mybuf",
									"fontsize" : 12.0,
									"patching_rect" : [ 283.0, 272.0, 48.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 246.0, 237.0, 37.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 74.0, 323.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar csIN",
									"fontsize" : 12.0,
									"patching_rect" : [ 74.0, 377.0, 67.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 208.0, 48.0, 29.0, 29.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 1.0, 1.0, 0.588235, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 74.0, 276.0, 45.0, 45.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "drop audio files here",
									"fontsize" : 18.0,
									"patching_rect" : [ 19.0, 48.0, 180.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-28",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"fontsize" : 12.0,
									"patching_rect" : [ 208.0, 79.0, 71.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"id" : "obj-29",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak read name 0. -1. 2",
									"fontsize" : 12.0,
									"patching_rect" : [ 31.0, 130.0, 137.0, 20.0 ],
									"numinlets" : 5,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ mybuf 1 2",
									"fontsize" : 14.0,
									"patching_rect" : [ 31.0, 156.0, 140.0, 23.0 ],
									"numinlets" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack readbuf 1 1 mybuf 0. 0.",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 174.0, 350.0, 200.0, 20.0 ],
									"numinlets" : 6,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "readbuf",
									"fontsize" : 36.0,
									"patching_rect" : [ 420.0, 11.0, 150.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-33",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 9.0,
									"patching_rect" : [ 853.0, 326.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 854.0, 309.0, 41.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"patching_rect" : [ 836.0, 309.0, 15.0, 73.0 ],
									"numinlets" : 2,
									"orientation" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"patching_rect" : [ 813.0, 309.0, 15.0, 73.0 ],
									"numinlets" : 2,
									"orientation" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "csIN",
									"text" : "t l",
									"fontsize" : 12.0,
									"patching_rect" : [ 786.0, 280.0, 21.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 793.0, 230.0, 36.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-39",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"patching_rect" : [ 809.0, 387.0, 43.0, 43.0 ],
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 793.0, 253.0, 17.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 0.0, 1.0, 0.301961, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"fontsize" : 12.0,
									"patching_rect" : [ 756.0, 253.0, 35.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "csound readbuf.csd",
									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 810.0, 253.0, 124.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "csound~ noscale",
									"fontsize" : 12.0,
									"patching_rect" : [ 809.0, 280.0, 133.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 6,
									"outlettype" : [ "signal", "signal", "list", "int", "bang", "bang" ],
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csIN",
									"fontsize" : 12.0,
									"patching_rect" : [ 756.0, 280.0, 32.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-46",
									"textcolor" : [ 1.0, 0.035294, 0.035294, 1.0 ],
									"frgb" : [ 1.0, 0.035294, 0.035294, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 1.0, 1.0, 0.588235, 1.0 ],
									"border" : 1,
									"patching_rect" : [ 6.0, 9.0, 200.0, 111.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "dropfile",
									"border" : 0.0,
									"patching_rect" : [ 6.0, 9.0, 200.0, 111.0 ],
									"numinlets" : 1,
									"rounded" : 0.0,
									"numoutlets" : 2,
									"types" : [  ],
									"ignoreclick" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arg #2: Channel to read. 0 means read all channels. If > 0, then read from that channel into the Csound table (treating the table as a single channel table).",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 283.0, 237.0, 435.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Click this button to send the \"readbuf\" message and to play the copied audio.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 1.0, 243.0, 219.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.952941, 0.933333, 0.917647, 1.0 ],
									"patching_rect" : [ 414.0, 3.0, 236.0, 113.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-106"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [ 819.5, 251.0, 819.5, 251.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 1,
									"midpoints" : [ 217.5, 124.0, 70.0, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 1,
									"midpoints" : [ 15.5, 124.0, 70.0, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 83.5, 346.0, 83.5, 346.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [ 15.5, 124.0, 179.5, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [ 217.5, 124.0, 179.5, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [ 802.5, 275.0, 818.5, 275.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [ 765.5, 275.0, 818.5, 275.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-32", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-32", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-32", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-32", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 101.5, 346.0, 183.5, 346.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 183.5, 373.0, 83.5, 373.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"rsidx wsidx messages\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 288.0, 146.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-4",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 228.0, 274.0, 822.0, 380.0 ],
						"bglocked" : 0,
						"defrect" : [ 228.0, 274.0, 822.0, 380.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3) Read some table values.",
									"fontsize" : 14.0,
									"patching_rect" : [ 596.0, 250.0, 200.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-37",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2) Change some table values.",
									"fontsize" : 14.0,
									"patching_rect" : [ 596.0, 225.0, 200.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-32",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1) Start [csound~].",
									"fontsize" : 14.0,
									"patching_rect" : [ 596.0, 200.0, 139.0, 23.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-15",
									"textcolor" : [ 0.0, 0.14902, 0.964706, 1.0 ],
									"frgb" : [ 0.0, 0.14902, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 309.0, 58.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-2",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 469.0, 58.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"fontface" : 1,
									"fontsize" : 36.0,
									"patching_rect" : [ 23.0, 22.0, 38.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-54",
									"textcolor" : [ 0.176471, 0.301961, 1.0, 1.0 ],
									"frgb" : [ 0.176471, 0.301961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All indexes are zero-based.  In other words, the first index is 0.  The maximum index for a table of size x is x-1.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 574.0, 134.0, 234.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-13",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Click this button to start [csound~].",
									"linecount" : 2,
									"fontsize" : 14.0,
									"patching_rect" : [ 143.0, 31.0, 130.0, 39.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-52",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 56.0, 3.0, 87.0, 87.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fgcolor" : [ 0.0, 1.0, 0.301961, 1.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rsidx / wsidx",
									"fontsize" : 36.0,
									"patching_rect" : [ 574.0, 19.0, 212.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-40",
									"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
									"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 11.0, 330.0, 33.0, 33.0 ],
									"numinlets" : 1,
									"blinkcolor" : [ 1.0, 0.090196, 0.090196, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rsidx 12.",
									"bgcolor" : [ 0.984314, 1.0, 0.662745, 1.0 ],
									"fontsize" : 24.0,
									"patching_rect" : [ 50.0, 330.0, 177.0, 32.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound~ 1.0.4 or later required.",
									"fontsize" : 12.0,
									"patching_rect" : [ 574.0, 67.0, 205.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-5",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"frgb" : [ 0.65098, 0.0, 0.019608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"fontsize" : 12.0,
									"patching_rect" : [ 17.0, 127.0, 35.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When csound~ receives an \"rsidx\" message, it responds with an \"rsidx\" message where the 2nd element is the corresponding table value.",
									"linecount" : 5,
									"fontsize" : 12.0,
									"patching_rect" : [ 62.0, 223.0, 166.0, 75.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-14",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arg #2: table index",
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 189.0, 130.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-16",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arg #1: table #",
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 170.0, 100.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-17",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arg #3: value",
									"fontsize" : 12.0,
									"patching_rect" : [ 410.0, 208.0, 128.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-18",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arg #2: table index",
									"fontsize" : 12.0,
									"patching_rect" : [ 410.0, 189.0, 130.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-19",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arg #1: table #",
									"fontsize" : 12.0,
									"patching_rect" : [ 410.0, 170.0, 100.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-20",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use \"wsidx\" to write Csound table values.",
									"fontsize" : 12.0,
									"patching_rect" : [ 574.0, 113.0, 238.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-21",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use \"rsidx\" to read Csound table values.",
									"fontsize" : 12.0,
									"patching_rect" : [ 574.0, 92.0, 232.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-22",
									"textcolor" : [ 0.431373, 0.090196, 0.082353, 1.0 ],
									"frgb" : [ 0.431373, 0.090196, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "value",
									"fontsize" : 12.0,
									"patching_rect" : [ 489.0, 101.0, 40.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "index",
									"fontsize" : 12.0,
									"patching_rect" : [ 446.0, 101.0, 41.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 12.0,
									"patching_rect" : [ 50.0, 306.0, 80.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak rsidx 1 0",
									"fontsize" : 12.0,
									"patching_rect" : [ 239.0, 146.0, 90.0, 20.0 ],
									"numinlets" : 3,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 489.0, 121.0, 40.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9,
									"maximum" : 127.0,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak wsidx 1 0 0.",
									"fontsize" : 12.0,
									"patching_rect" : [ 394.0, 146.0, 97.0, 20.0 ],
									"numinlets" : 4,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 446.0, 121.0, 37.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"triscale" : 0.9,
									"maximum" : 15,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 310.0, 121.0, 37.0, 20.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 56.0, 94.0, 62.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"id" : "obj-31",
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 56.0, 127.0, 18.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "csound rsidx_wsidx.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 78.0, 127.0, 137.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fucktard",
									"text" : "csound~ noscale",
									"fontsize" : 12.0,
									"patching_rect" : [ 56.0, 182.0, 114.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 6,
									"outlettype" : [ "signal", "signal", "list", "int", "bang", "bang" ],
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "index to read",
									"fontsize" : 12.0,
									"patching_rect" : [ 292.0, 101.0, 83.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.952941, 0.933333, 0.917647, 1.0 ],
									"patching_rect" : [ 566.0, 9.0, 248.0, 183.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-106"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-28", 3 ],
									"hidden" : 0,
									"midpoints" : [ 498.5, 143.0, 481.5, 143.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [ 403.5, 170.0, 65.5, 170.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [ 248.5, 170.0, 65.5, 170.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [ 87.5, 170.0, 65.5, 170.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [ 26.5, 170.0, 65.5, 170.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 326.0, 20.5, 326.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 2 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 103.5, 215.0, 55.0, 215.0, 55.0, 302.0, 59.5, 302.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-26", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "csound~ v1.0.7",
					"fontsize" : 20.0,
					"patching_rect" : [ 712.0, 7.0, 153.0, 29.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-5",
					"textcolor" : [ 0.337255, 0.254902, 0.113725, 1.0 ],
					"frgb" : [ 0.337255, 0.254902, 0.113725, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"invalue outvalue chnget chnset\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 246.0, 194.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-8",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 518.0, 167.0, 490.0, 529.0 ],
						"bglocked" : 0,
						"defrect" : [ 518.0, 167.0, 490.0, 529.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Lines 6 and 7 are not required because \"frq\" and \"reso\" are input channels, but they don't hurt.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 201.0, 299.0, 196.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Line 18 will always work because the invalue/outvalue opcodes don't use channels.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 220.0, 465.0, 266.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If line 08 is left out, [csound~] will not output value pairs for channel \"frq2\".",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 201.0, 345.0, 215.0, 34.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "01  sr = 44100\r02  kr = 4410 \r03  ksmps = 10 \r04  nchnls = 2 \r05 \r06  chn_k \"frq\", 1\r07  chn_k \"reso\", 1\r08  chn_k \"frq2\", 2\r09   \r10  instr 1\r11      kFrq   chnget \"frq\"\r12      kReso chnget \"reso\"\r13      kTime invalue \"time\"\r14      \r15      kFrq2 = kFrq * 2\r16      kTime2 = kTime * 2\r17\r18      outvalue \"time2\", kTime2\r19      chnset kFrq, \"frq2\"\r20  endin",
									"linecount" : 20,
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 244.0, 209.0, 282.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "outvalue \"filt\", kFilt\n\rchnset kReso, \"reso\"",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 114.0, 136.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "kFilt invalue \"filt\"\n\rkReso chnget \"reso\" ",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 30.0, 36.0, 136.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "I recommend using chnget/chnset instead of invalue/outvalue.",
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 170.0, 452.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To output values from [csound~], try something like:",
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 89.0, 347.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IMPORTANT:  In order to use the chnset opcode, you must declare all output channels in the header section of your orchestra with the chn_k opcode. The 2nd argument of chn_k can be 1 (input), 2 (output), or 3 (input + output).  For example:",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 5.0, 189.0, 454.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-10",
									"textcolor" : [ 0.65098, 0.0, 0.0, 1.0 ],
									"frgb" : [ 0.65098, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To access values sent to [csound~] via \"control\" messages, try something like:",
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 9.0, 472.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"csound message\"",
					"fontsize" : 12.0,
					"patching_rect" : [ 771.0, 225.0, 120.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-9",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 127.0, 145.0, 376.0, 416.0 ],
						"bglocked" : 0,
						"defrect" : [ 127.0, 145.0, 376.0, 416.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Macintosh HD:/Users/George/file.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 35.0, 365.0, 226.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A Max style path:",
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 345.0, 226.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "/Users/George/file.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 35.0, 325.0, 226.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "On All Platforms, use forward slashes (/).",
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 265.0, 339.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "On Windows, use Max style paths (e.g. C:/directory/file.csd).",
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 285.0, 339.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound -o dog.aif doggystyle.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 23.0, 170.0, 189.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound -m0 badkitty.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 23.0, 152.0, 160.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "On Mac OSX, use Max style or POSIX style paths.  A POSIX path:",
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 305.0, 366.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound hello.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 23.0, 80.0, 148.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound /Volumes/projects/acid.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 23.0, 134.0, 203.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound projects/nokittythatsmypotpie.csd",
									"fontsize" : 12.0,
									"patching_rect" : [ 23.0, 116.0, 235.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If your patch is within Max's search path, the current directory may not be the same as the directory containing your patch. In this case, simply specify the csd/orc/sco file by name (i.e. no slashes), or use an absolute path name.",
									"linecount" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 202.0, 319.0, 62.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If your csd/orc/sco files are in the same directory as this patch, there's no need to use absolute pathnames. You can specify the file using a relative pathname instead.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 6.0, 9.0, 307.0, 48.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "csound fun.orc fun.sco",
									"fontsize" : 12.0,
									"patching_rect" : [ 23.0, 98.0, 150.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 21.0, 76.0, 248.0, 119.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Examples:",
									"fontsize" : 12.0,
									"patching_rect" : [ 21.0, 59.0, 128.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Victor Lazzarini's csoundapi~.",
					"fontsize" : 12.0,
					"patching_rect" : [ 712.0, 96.0, 198.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inspired by Matt Ingalls' original csound~ and",
					"fontsize" : 12.0,
					"patching_rect" : [ 712.0, 77.0, 254.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Written by Davis Pyon.",
					"fontsize" : 12.0,
					"patching_rect" : [ 712.0, 59.0, 160.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A MaxMSP external utilizing the Csound5 API.",
					"fontsize" : 12.0,
					"patching_rect" : [ 712.0, 32.0, 257.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "c portTime $1",
					"fontsize" : 12.0,
					"patching_rect" : [ 246.0, 172.0, 86.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 246.0, 151.0, 51.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 666.0, 396.0, 47.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outvalues",
					"fontface" : 3,
					"fontsize" : 14.0,
					"patching_rect" : [ 595.0, 347.0, 80.0, 23.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Invalues",
					"fontface" : 3,
					"fontsize" : 14.0,
					"patching_rect" : [ 156.0, 127.0, 69.0, 23.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The csound message. Here is where you specify the csd/orc/sco file(s) to load as well as optional Csound flags.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 478.0, 9.0, 215.0, 48.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"fontsize" : 12.0,
					"patching_rect" : [ 326.0, 16.0, 40.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-35",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "e i3 0 8 6.08 32768 2 4 4 6 5 1",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 75.0, 80.0, 179.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "overdrive $1",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 383.0, 214.0, 78.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 367.0, 214.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outvalue overdrive (disabled by default). When disabled, outvalue pairs are output at 50ms intervals. When enabled, outvalue pairs are output immediately.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 462.0, 213.0, 294.0, 48.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message $1",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 383.0, 192.0, 76.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 367.0, 192.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message output to Max window (enabled by default).",
					"fontsize" : 12.0,
					"patching_rect" : [ 461.0, 192.0, 295.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "output $1",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 383.0, 169.0, 71.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 367.0, 169.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outvalue processing (enabled by default).",
					"fontsize" : 12.0,
					"patching_rect" : [ 454.0, 169.0, 241.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "input $1",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 383.0, 147.0, 61.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 367.0, 147.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p note",
					"fontsize" : 12.0,
					"patching_rect" : [ 4.0, 285.0, 46.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"hidden" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 334.0, 523.0, 199.0, 216.0 ],
						"bglocked" : 0,
						"defrect" : [ 334.0, 523.0, 199.0, 216.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 96.0, 70.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 57.0, 70.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 115.0, 48.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 60 500",
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 96.0, 88.0, 17.0 ],
									"numinlets" : 3,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 57.0, 135.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-5",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"fontsize" : 12.0,
					"patching_rect" : [ 177.0, 288.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-49",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 348.0, 61.0, 17.0, 17.0 ],
					"numinlets" : 1,
					"blinkcolor" : [ 1.0, 0.090196, 0.090196, 1.0 ],
					"numoutlets" : 1,
					"fgcolor" : [ 1.0, 1.0, 0.003922, 1.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "kslider",
					"patching_rect" : [ 4.0, 224.0, 336.0, 53.0 ],
					"numinlets" : 2,
					"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"offset" : 24,
					"outlettype" : [ "int", "int" ],
					"id" : "obj-51",
					"presentation_rect" : [ 0.0, 0.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "event i3 0 8 8.01 32768 1 1.1 2 0.6 1 20",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 75.0, 58.0, 228.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"margin" : 4,
					"patching_rect" : [ 4.0, 25.0, 68.0, 20.0 ],
					"bubblesize" : 10,
					"numinlets" : 1,
					"numoutlets" : 4,
					"spacing" : 2,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"id" : "obj-53",
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 6, "obj-92", "gain~", "list", 126, 10.0, 6, "obj-91", "gain~", "list", 126, 10.0, 5, "obj-89", "flonum", "float", 0.93, 5, "obj-88", "flonum", "float", 2.81, 5, "obj-86", "flonum", "float", 0.93, 5, "obj-85", "flonum", "float", 0.0, 5, "obj-84", "flonum", "float", 2.81, 5, "obj-78", "flonum", "float", 0.89, 5, "obj-70", "flonum", "float", 340.0, 5, "obj-66", "dial", "int", 0, 5, "obj-65", "dial", "int", 29, 5, "obj-64", "dial", "int", 44, 5, "obj-63", "dial", "int", 102, 6, "obj-58", "gain~", "list", 107, 10.0, 6, "obj-57", "gain~", "list", 107, 10.0, 5, "obj-47", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-41", "toggle", "int", 1, 5, "obj-38", "toggle", "int", 0, 5, "obj-17", "flonum", "float", 0.89, 5, "obj-16", "flonum", "float", 0.1, 5, "<invalid>", "flonum", "float", 1.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 6, "obj-92", "gain~", "list", 123, 10.0, 6, "obj-91", "gain~", "list", 123, 10.0, 5, "obj-89", "flonum", "float", 3.75, 5, "obj-88", "flonum", "float", 0.02, 5, "obj-86", "flonum", "float", 3.75, 5, "obj-85", "flonum", "float", 7.5, 5, "obj-84", "flonum", "float", 0.02, 5, "obj-78", "flonum", "float", 25.0, 5, "obj-70", "flonum", "float", 500.0, 5, "obj-66", "dial", "int", 13, 5, "obj-65", "dial", "int", 14, 5, "obj-64", "dial", "int", 14, 5, "obj-63", "dial", "int", 0, 6, "obj-58", "gain~", "list", 107, 10.0, 6, "obj-57", "gain~", "list", 107, 10.0, 5, "obj-47", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-41", "toggle", "int", 1, 5, "obj-38", "toggle", "int", 0, 5, "obj-17", "flonum", "float", 25.0, 5, "obj-16", "flonum", "float", 0.1 ]
						}
, 						{
							"number" : 3,
							"data" : [ 6, "obj-92", "gain~", "list", 126, 10.0, 6, "obj-91", "gain~", "list", 126, 10.0, 5, "obj-89", "flonum", "float", 4.52, 5, "obj-88", "flonum", "float", 5.2, 5, "obj-86", "flonum", "float", 4.52, 5, "obj-85", "flonum", "float", 9.039584, 5, "obj-84", "flonum", "float", 5.2, 5, "obj-78", "flonum", "float", 0.16, 5, "obj-70", "flonum", "float", 250.0, 5, "obj-66", "dial", "int", 1, 5, "obj-65", "dial", "int", 19, 5, "obj-64", "dial", "int", 39, 5, "obj-63", "dial", "int", 127, 6, "obj-58", "gain~", "list", 107, 10.0, 6, "obj-57", "gain~", "list", 107, 10.0, 5, "obj-47", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-41", "toggle", "int", 1, 5, "obj-38", "toggle", "int", 0, 5, "obj-17", "flonum", "float", 0.16, 5, "obj-16", "flonum", "float", 0.1 ]
						}
, 						{
							"number" : 4,
							"data" : [ 6, "obj-92", "gain~", "list", 129, 10.0, 6, "obj-91", "gain~", "list", 129, 10.0, 5, "obj-89", "flonum", "float", 2.0, 5, "obj-88", "flonum", "float", 0.03, 5, "obj-86", "flonum", "float", 2.0, 5, "obj-85", "flonum", "float", 4.001516, 5, "obj-84", "flonum", "float", 0.03, 5, "obj-78", "flonum", "float", 0.77, 5, "obj-70", "flonum", "float", 200.0, 5, "obj-66", "dial", "int", 44, 5, "obj-65", "dial", "int", 86, 5, "obj-64", "dial", "int", 39, 5, "obj-63", "dial", "int", 127, 6, "obj-58", "gain~", "list", 107, 10.0, 6, "obj-57", "gain~", "list", 107, 10.0, 5, "obj-47", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-41", "toggle", "int", 1, 5, "obj-38", "toggle", "int", 0, 5, "obj-17", "flonum", "float", 0.77, 5, "obj-16", "flonum", "float", 0.5 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"fontsize" : 12.0,
					"patching_rect" : [ 241.0, 0.0, 72.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"bgcolor" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"patching_rect" : [ 423.0, 365.0, 100.0, 73.0 ],
					"numinlets" : 2,
					"calccount" : 16,
					"rounded" : 0,
					"numoutlets" : 0,
					"fgcolor" : [ 0.0, 1.0, 0.2, 1.0 ],
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"knobcolor" : [ 0.0, 0.05098, 1.0, 1.0 ],
					"patching_rect" : [ 408.0, 365.0, 15.0, 73.0 ],
					"numinlets" : 2,
					"orientation" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"knobcolor" : [ 0.0, 0.05098, 1.0, 1.0 ],
					"patching_rect" : [ 390.0, 365.0, 15.0, 73.0 ],
					"numinlets" : 2,
					"orientation" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rel",
					"fontsize" : 12.0,
					"patching_rect" : [ 217.0, 315.0, 25.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sus",
					"fontsize" : 12.0,
					"patching_rect" : [ 188.0, 315.0, 27.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dec",
					"fontsize" : 12.0,
					"patching_rect" : [ 160.0, 315.0, 28.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p MIDI controls",
					"fontsize" : 12.0,
					"patching_rect" : [ 133.0, 364.0, 102.0, 20.0 ],
					"numinlets" : 4,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 303.0, 223.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 303.0, 223.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 40.0, 119.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 4 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 178.0, 86.0, 43.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 3 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 132.0, 86.0, 43.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 2 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 86.0, 86.0, 43.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 1 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 40.0, 86.0, 43.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 211.0, 56.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 165.0, 56.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-7",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 119.0, 56.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-8",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 73.0, 56.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 216.0, 335.0, 26.0, 26.0 ],
					"needlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fgcolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-63",
					"outlinecolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 188.0, 335.0, 26.0, 26.0 ],
					"needlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fgcolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-64",
					"outlinecolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 161.0, 335.0, 26.0, 26.0 ],
					"needlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fgcolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-65",
					"outlinecolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 133.0, 335.0, 26.0, 26.0 ],
					"needlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fgcolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-66",
					"outlinecolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "start",
					"fontsize" : 12.0,
					"patching_rect" : [ 12.0, 316.0, 34.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 18.0, 333.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fgcolor" : [ 0.101961, 0.541176, 0.054902, 1.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"fontsize" : 12.0,
					"patching_rect" : [ 39.0, 334.0, 34.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-69"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 75.0, 334.0, 42.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-70"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "BPM",
					"fontsize" : 12.0,
					"patching_rect" : [ 79.0, 316.0, 35.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-71"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Random Note Generator",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 18.0, 361.0, 103.0, 34.0 ],
					"numinlets" : 2,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-72",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 416.0, 590.0, 508.0, 357.0 ],
						"bglocked" : 0,
						"defrect" : [ 416.0, 590.0, 508.0, 357.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 153.0, 21.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 199.0, 23.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-2",
									"comment" : "BPM"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 64 500",
									"fontsize" : 9.0,
									"patching_rect" : [ 153.0, 188.0, 88.0, 17.0 ],
									"numinlets" : 3,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 30",
									"fontsize" : 9.0,
									"patching_rect" : [ 153.0, 166.0, 31.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 60",
									"fontsize" : 9.0,
									"patching_rect" : [ 153.0, 146.0, 55.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "midiin P140",
									"fontsize" : 9.0,
									"patching_rect" : [ 274.0, 191.0, 64.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"fontsize" : 9.0,
									"patching_rect" : [ 199.0, 64.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60000.",
									"fontsize" : 9.0,
									"patching_rect" : [ 199.0, 84.0, 52.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pow -1.",
									"fontsize" : 9.0,
									"patching_rect" : [ 199.0, 42.0, 44.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 500",
									"fontsize" : 9.0,
									"patching_rect" : [ 153.0, 125.0, 56.0, 17.0 ],
									"numinlets" : 2,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 153.0, 267.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "midiparse",
									"fontsize" : 9.0,
									"patching_rect" : [ 274.0, 215.0, 92.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 7,
									"outlettype" : [ "", "", "", "int", "int", "int", "int" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 153.0, 211.0, 47.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "BPM",
									"fontsize" : 9.0,
									"patching_rect" : [ 215.0, 23.0, 32.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "metro control",
									"fontsize" : 9.0,
									"patching_rect" : [ 78.0, 22.0, 71.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 283.5, 249.0, 162.0, 249.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [ 231.5, 208.0, 190.5, 208.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 2 ],
									"hidden" : 0,
									"midpoints" : [ 208.5, 109.0, 231.5, 109.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "control car $1",
					"fontsize" : 12.0,
					"patching_rect" : [ 21.0, 172.0, 89.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-73"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "c mod $1",
					"fontsize" : 12.0,
					"patching_rect" : [ 113.0, 172.0, 65.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-74"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "c ndx $1",
					"fontsize" : 12.0,
					"patching_rect" : [ 182.0, 172.0, 62.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"bgcolor" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"patching_rect" : [ 254.0, 365.0, 100.0, 73.0 ],
					"numinlets" : 2,
					"calccount" : 16,
					"rounded" : 0,
					"numoutlets" : 0,
					"fgcolor" : [ 1.0, 0.921569, 0.294118, 1.0 ],
					"id" : "obj-76"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiformat 1",
					"fontsize" : 12.0,
					"patching_rect" : [ 4.0, 413.0, 119.0, 20.0 ],
					"numinlets" : 7,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-77",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 182.0, 151.0, 52.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-78"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 476.0, 329.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-79"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 367.0, 83.0, 36.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-80"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "start",
					"bgcolor" : [ 1.0, 1.0, 0.090196, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 367.0, 61.0, 39.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-81"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "rewind",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 367.0, 105.0, 55.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-82"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reset",
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 367.0, 126.0, 44.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 621.0, 396.0, 47.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-84"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 577.0, 396.0, 45.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-85"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 532.0, 396.0, 47.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-86"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route car carX2 mod ndx",
					"fontsize" : 12.0,
					"patching_rect" : [ 532.0, 370.0, 197.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"id" : "obj-87"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 113.0, 151.0, 52.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-88"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 21.0, 151.0, 52.0, 20.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-89"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "csound csound~.csd",
					"bgcolor" : [ 1.0, 1.0, 0.090196, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 347.0, 37.0, 120.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-90"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"knobcolor" : [ 0.0, 0.05098, 1.0, 1.0 ],
					"patching_rect" : [ 372.0, 365.0, 15.0, 73.0 ],
					"numinlets" : 2,
					"orientation" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-91"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"knobcolor" : [ 0.0, 0.05098, 1.0, 1.0 ],
					"patching_rect" : [ 354.0, 365.0, 15.0, 73.0 ],
					"numinlets" : 2,
					"orientation" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-92"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "csound~ 4",
					"fontface" : 3,
					"fontsize" : 14.0,
					"patching_rect" : [ 350.0, 304.0, 145.0, 23.0 ],
					"numinlets" : 4,
					"fontname" : "Arial",
					"numoutlets" : 8,
					"outlettype" : [ "signal", "signal", "signal", "signal", "list", "int", "bang", "bang" ],
					"id" : "obj-94"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Start csound performance (from beginning).",
					"fontsize" : 12.0,
					"patching_rect" : [ 411.0, 61.0, 255.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-95"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stop csound performance.",
					"fontsize" : 12.0,
					"patching_rect" : [ 404.0, 83.0, 158.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-96"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rewind csound score to beginning.",
					"fontsize" : 12.0,
					"patching_rect" : [ 422.0, 105.0, 205.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-97"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Restart csound performance.",
					"fontsize" : 12.0,
					"patching_rect" : [ 412.0, 126.0, 178.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-98"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Invalue processing (enabled by default).",
					"fontsize" : 12.0,
					"patching_rect" : [ 444.0, 147.0, 245.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-99"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"patching_rect" : [ 15.0, 145.0, 323.0, 51.0 ],
					"numinlets" : 1,
					"rounded" : 12,
					"numoutlets" : 0,
					"id" : "obj-100"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"patching_rect" : [ 528.0, 365.0, 209.0, 56.0 ],
					"numinlets" : 1,
					"rounded" : 12,
					"numoutlets" : 0,
					"id" : "obj-101"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "atk",
					"fontsize" : 12.0,
					"patching_rect" : [ 133.0, 315.0, 25.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-102"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send score events.",
					"fontface" : 3,
					"fontsize" : 14.0,
					"patching_rect" : [ 120.0, 37.0, 151.0, 23.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-103"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.964706, 0.964706, 0.858824, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 709.0, 3.0, 262.0, 118.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"id" : "obj-106"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"patching_rect" : [ 765.0, 129.0, 206.0, 273.0 ],
					"numinlets" : 1,
					"rounded" : 12,
					"numoutlets" : 0,
					"id" : "obj-104"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-94", 4 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [ 431.5, 354.0, 541.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 392.5, 291.5, 359.5, 291.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 2 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [ 46.166668, 51.0, 13.5, 51.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [ 27.5, 401.0, 13.5, 401.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 356.0, 27.5, 356.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-77", 2 ],
					"hidden" : 1,
					"midpoints" : [ 142.5, 404.0, 46.833332, 404.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 1 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 1,
					"midpoints" : [ 330.5, 281.0, 40.5, 281.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-72", 1 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 355.0, 111.5, 355.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 6 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 467.5, 361.0, 246.0, 361.0, 246.0, 285.0, 186.5, 285.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"midpoints" : [ 186.5, 310.0, 142.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [ 186.5, 310.0, 170.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [ 186.5, 310.0, 197.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-62", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [ 186.5, 310.0, 225.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-62", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 335.5, 92.0, 359.5, 92.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 356.5, 58.0, 345.0, 58.0, 345.0, 92.0, 359.5, 92.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 376.5, 80.0, 359.5, 80.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 376.5, 122.0, 359.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 376.5, 143.0, 359.5, 143.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 357.5, 81.0, 359.5, 81.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 376.5, 101.0, 359.5, 101.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 392.5, 165.0, 359.5, 165.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 392.5, 187.0, 359.5, 187.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 392.5, 210.0, 359.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [ 392.5, 232.0, 359.5, 232.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 1 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
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
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 7 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 1 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 586.0, 391.0, 586.5, 391.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 2 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [ 630.5, 391.0, 630.5, 391.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 3 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 675.0, 391.0, 675.5, 391.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [ 250.5, 22.0, 320.0, 22.0, 320.0, 13.0, 335.5, 13.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [ 250.5, 22.0, 13.5, 22.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"midpoints" : [ 122.5, 194.0, 30.5, 194.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"midpoints" : [ 191.5, 194.0, 30.5, 194.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"midpoints" : [ 255.5, 194.0, 30.5, 194.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-118", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-118", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 1 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 2 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 3 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
