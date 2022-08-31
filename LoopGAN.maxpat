{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 338.0, 269.0, 1245.0, 925.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 220.0, 434.0, 48.0, 22.0 ],
					"text" : "del 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 186.0, 394.0, 53.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 57.975360512733459, 583.0, 34.0, 22.0 ],
					"text" : "*~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.0, 465.0, 29.5, 22.0 ],
					"text" : "0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.0, 465.0, 29.5, 22.0 ],
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 186.0, 509.910255432128906, 102.0, 22.0 ],
					"text" : "adsr~ 10 100 500"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 16.0,
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 79.975360512733459, 62.329106330871582, 56.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 629.497206807136536, 118.625, 56.0, 26.0 ],
					"text" : "Play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 271.25, 260.5, 84.25, 84.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 579.997206807136536, 109.5, 44.25, 44.25 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 57.975360512733459, 414.5, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~[1]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.975360512733459, 310.436175227165222, 34.0, 23.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1010.596559822559357, 549.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 554.596559822559357, 470.78125, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 924.57691848278057, 577.923074901103973, 106.0, 22.0 ],
					"text" : "pak /save_latent 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 16.0,
					"id" : "obj-80",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 919.076918482780457, 113.920169770717621, 194.0, 45.0 ],
					"text" : "Randomize\nPresets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 954.576918482780457, 147.999998450279236, 63.0, 63.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 954.576918482780457, 231.653846442699432, 123.0, 22.0 ],
					"text" : "pack /reset_presets 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 819.929893155892728, 488.0, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 31141, "png", "IBkSG0fBZn....PCIgDQRA..D....D.PHX....fH84.R....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6c2GlcVVeun+62m0ZVYXZbXbZHjYxvLzzzz3T1Q2DRHYRJSpkRoTpa0Z0ZEwV0J02NVqaOb7xM7bsfKNbQ8vwRQJEeoZO0p1V1Zegi05F83vNjDBgTLkFowbgjgIYBwriSFSiSVub+87GyPMn487bud86mqKuPHI2+tyZslm0y8um66e+.LyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLyrSAVum.lUuLzno8DJit..XB5rR.cmCH+w+6oJPk7IXZEvL..IcfitmwJNU8X9ZlYlYlYlc9vI.vZoMzno8TYFLXHGVTNfAkvBD0ECftnPOfyl...zoD5gDIG+edIDHwT.yl..HbTM6+9Qo3yChIfv9nv3cOMFem6rXoZ5eAMyLyLyLyNC4D.XsTFb8oKobUrBRckHfkiDrD.zE.5Dytn+B.nSPl+TORmFRUvrIEXFHbz.wLI.GE.OYHgOQtpXq4lG1wdFq3Lmu+cxLyLyLyLKK3D.XMk5akockjC8ljGKpJvkQoQEvUQxkTumau.IMCod3.S9mR.1Vhv3ujovA8tDvLyLyLyr5Am..qowvCmVX5KDKSIXYP5+r.Fg.WA.6tdO2NcjzT.XSf7qQgmLT.6Xxwvg.JFp2yMyLyLyLyZO3D.XM75azzEjTAWEj9EkvkChkQvdq2yqyIRUDwyRfsIw+mcTAew873E2e8dZYlYlYlYVqOm..qgUeqLcAIySuOIbsfX.Jrfy6yteCCEjvz.XWT7yGJiO6jOQwCVumUlYlYlYl05xI.vZfjlbIifEUsJtBlK76.wqAjcc5+y0BPZbH9.UD9b+jeerOWm.LyLyLyLKq4D.XM.RSFb83RqVAqWTuQRbU.sIK7+Ggf1JE+TIDOzysIreWi.LyLyLyLKq3D.X0UCspzEUNOdsf5Wi.izLTP+hMAcHDvi.v6aeao3CWumOlYlYlYl0ZvI.vpKFZzzNqTBWuftY.rTRzM.Sp2yqFGJHf8Aw6oiB3ismwJNS8dFYlYlYlYVyMm..qlpuQSWPRIrAAcyj3x8h9OcT..ecPdKW32Ca20F.yLyLyLyNW4D.X0DCMZZmkKgKGT2DAdcsqmw+yUBZGP7d54v3y5j.XlYlYlY14hb06If05qu0kNXnBdmf5+CB9KAvNp2yolMD7hIz5NVm7nW3.a3aO8Di8Cp2yIyLyLyLyZt3D.XQ0hWW5FPU8GSheCRNP8d9zTirKQck.nqd+o2v1N7dFy0E.yLyLyLyNi4i.fk8FMM+h+AXQHutI.9eqdOcZ4HUADOnRX591XwcUumNlYlYlYl0bv6..KSMznoc1UIbcHmtS.7FIn+LVViLAfWFk9ol+fa3QOxyM1gq2SIyLyLyLyZ74EmYYlYKze5VHvGfjWtW7erwkgftnt6eCO92euiMc8d1XlYlYlYViMu.MKSz25RGTU0Gi.uERtv587ocAIVJH5n2e5MrUWS.LyLyLyL6TwI.vNuz2JS65BWxF90nzmFfa.zU3+ZK1A.VUnJ59BGXCOl6N.lYlYlYlcxjTum.VyqgFMsGV.uKIcO.b4064SaKx7B3FBI32tdOULyLyLyLqwk6B.14jgVU5hJkSefjD7N.X2064iA.oCRve8I1bwGodOULyLyLyLqwiS.fcVqu0kNHktcB75.XW064yYEoiBhm9j+KigIYm0xoTlRZigD9ll7QKNd8dpXlYlYlYViEm..6rxhWW5ZPPeDPt958b4GiTEPbHALM.NDD1EAebPraFvt5dZL9N2YwRmtgY3gSKLc2XPIrBjCKWAsJjfkBfdfvBZrSPfBB3KnN36axwJdv58rwLyLyLyrFGNA.1YrKYjzqnJzmhfqndOW9OHUQ.iCfcAfmFfOFCXmk5DOy2crhGIqByPqJcQk5.qfRiRhUHggIvffLeVEirhfNDE+PW3gwm4LIgGlYlYlYl0dvI.vN8FMMe+GCafToMNO4ecTI7Hf7+ABXGJG10j4w9vXEqD23llbIifEUMfgQBVAfdKPX4jrPbi6YGAsiPBei6eiE2Y8dtXlYlYlYViAm..6zHMo+0hqCT2IEVd89IdqflR.eNB9kxkfc9RlBGrd8TtGd3zBS0KtTTEqmRu2YSH.aP5rFJHf+v8soa6CUumIlYlYlYl0XvI.vNk5ajzqIA5u.fKrtMIjNhHdFJ94Ckvmbxmnw6rsOznocVoDtd.cGBXvFl5DPU7x26iUbG06ogYlYlYlY0eNA.1IUc+L+KUQBahj+iT3AmXK3Y.JFpKykyP8u9zkwp58F.d0ID8Wu2Q.B5+mN5f2zdFq3L0y4gYlYlYlY0e4p2S.qwT+qMcDQ8GRvUWOhujdF.7.g.uyI6D+CS+nEOHvXpdLWNa78Ger+W89SugMqp7aCheF.1W8b9v.dog.292ehw9N0y4gYlYlYlY0eNA.1Ol9VW5fTpHAtZvZ7SvVpBn9xJI4+ZkN3CdfMUbuXOi0P+T++Qc38L1Le+e5MrqK.7qlKnUBxAqiSmeBA7ueIcugu1286NV0537vLyLyLyr5LeD.rWj9VW5fIA8Q.4quVFWAUBBSv.+f68wJ9EqkwNlFXMo8FRzsf.d6LgyutLIj1o.+c22lKto5R7MyLyLyLqgf2A.1+ggGNsvwJnTPbCjrl8YCEzTj3ePh+966wJ90qUwsVX5IF6Gz6h1v2T4QAEvJpGsKPA7RH3Nujt2v+r2E.lYlYlYV6qFjVVl0HX5twqiI3sWKWjpfNDS3GIPdyStE7j0p3VKsmGu39yWl2MI9SpGwmjcBpeg+8eBza8H9lYlYlYl0XvI.v..v.qM8pD0GFfcUqhojlAhukRcf+3Iezhi2nWg+OermGu39yWf2Ij1X8H9B3pplGKndDayLyLyLyZL3D.Xnu0lt7.BEA4v0j.JUQPaMAbU6ayEenu6XEORMIt0Y6YrhSUNGeK.Z6.pllrCB1q.FoVFSyLyLyLyZr3D.zlq2Um1cB0aCfqoVDOIMiHdXH99mXyXm0hX1H4.4v3nJuC.LdMO3L7qTyioYlYlYlYMLbB.ZyUf3pAvMRxNqIAj3gj36eeaFaoUdK+eRMVwJk5DeU.7f.5n0zXKt9ZZ7LyLyLyLqghaCfsw5akocw4ouIAWZMIfRaLg7M7bap39pIwqA1.qIcoh5uAjuhZYbCBurI2bwmtVFSyLyLyLyZL3c.PapgFMsyjBJslr3+YOy+ORk.eydw+yZhsTb2.7Np00BfDgUWKimYlYlYlYMNbB.ZSU8XXCB3FhejTP.aChenm+wpCm68FX4KfGBAriZZPSzOSMMdlYlYlYl0vvI.nMzPqJcQgD8lIvBicrjvyRxaus8L+eJrmwJNiHuWIUplETgUTyhkYlYlYlYMTbB.Z6jlToCb0.3ZAY9XGMBdWW3T3g8h+OwRDdDP7j0p3IfEUqhkYlYlYlYMVbB.ZybwWIFTA86RvdiYbDTIA8Gu2MW7iuycVr18DtaxjadXBJ9kfTkZR.I5ZnUk5j.XlYlYlYsgbB.ZyjOAWCHVSMHTaLIv6sFDmlZ6YrhyDH1NHlnVDOJTn77P20hXYlYlYlYViEm.f1HCMZZOh5CRxBQMPRiSx6ah4gmMpwoEQnJ1ED1UMIXDEnPT28GlYlYlYl0XxI.nMR4R30F819mTkfvCElAeELVwZy1ZuI2y2Il..OSsnk.JgBvI.vLyLyLyZK4D.zlX1y8sdmwNNBX6HGuqIehhGM1wpkwXEqDR3+J.NRsHbR9m6MyLyLyr1Qdg.sIJmCuZ.D2m9O.n38M4iVb7XGmVNB6R.SWumFlYlYlYl05xI.nMvPqJcQf5WhLtE+MAsiPY7fwLFspRph8CfYp2yCyLyLyLyZc4D.zFnTdrFRrd.F42u4G0a8+yM46DiC.+ZmYlYlYlYQiS.PKtgFMsGR8q.vEFy3HouRNfuZLiQqr8LVwof7N.vLyLyLyr3wI.nEW0RX.Hb0wLFJno.3eyy0ANPLiSqNBr+58bvLyLyLyrVWNA.s3pB7JI4RhZPHdJArI21+N+H3DnXlYlYlYV73D.zhiPu4XN9RZFBroW5gwyDy3XlYlYlYlYmebB.ZgMvZRWMIuhXFCBLtH+76bmEKEy3XYCBbDjC6pdOOLyLyLyLq1yI.nElndC0fv7j8LE1YMHNlYlYlYlY14Am.fVTCrlzdC.qO5Ah7O2O8+lJUxEvQp2SByLyLyLyp8bB.ZQoDrFBLPbChNX9NvWOpwvxVDy3t0fYlYlYl0dxI.nUzno4kzuDAVXjizexdFqn6c8YDRrfnGj.lwcqAyLyLyLq8jS.PKnEVECRfKCj4iVPB5HD7qEswu8zfwN.htaMXlYlYlYsqbB.ZAkuJFVDWVLig.1d0D7rwLFV1SB6udOGLyLyLyLq9vI.nEyvCmV.DKK1a+elfGAyfCFyXzNYnQS6Q.waGa7Bxw8D8XXlYlYlYVCIm.fVLe+dvBHzu..i16sBZ+B7wm7IJdzXEi1MkqhERgNicbxUE6N1wvLyLyLyrFSNA.sXpN6S9e0wLFTX2gJdgjYIUAyuVrC.pRerMLyLyLyr1UweKGa0TLfUfDFws+uBfXWy6BbwjKKkCXgAD+c..JgwidLrL0EMZ57m2wPgI1BlBnXndOeLyLyr3ZnQS6rb0YKNzcbLL8dd7htFNYYFm.fVMIZT.FsgWBSCvmvs+urkRvBnPg3FDM9jOws4isQCh9VY5BXArLJrTkfKEPKF.ym.K+3+8oxJef.KdDTA3VO9eowkvAAwAoz2gH4oqlfmcxGsnSxSah9VYZWIchUn.tThP2BbU..PXPlbt2VQU.iChCRfY.32N.LdNg8MwVJt0LaxalYsgFZUoKpbGXQTgUClr.I8SAftHewe2ekRJg.cA.TtCTZwibqk..DvAHv9l8ex+UJLd0RXmS9DEcc4xNi4D.zBY3gSKbXoWUDW+OHvAB.e83Eg1TBCf3uC.7BCqwtnQSmege.5oZAzMqhkk.sVArBBbEfys.M9Bor6D+Ct7j+Kc47E9uSBAfDAr30dqGT.OEI1VP7QUNrq4cLbneh+cbnctyhkx1+FZw1vCmV36cAn6bcfd.Q+RX8ApqLgXE.3Rg.l8yAI+vOlbd9c.LAW9w+um..QfEOxsFjv9I0VQH4wC4vijqJ1eYho+IOLlxe9xLylK4r4PuUxgdxmfkof94IwpAvRq.rvY+d8YOE1jmjKXyS3+2+i++uv+TDHYd.8OxsdHJrMPrU.t4fvyToBl5h728am.QbohVs1huxzUfb3aFyXHouQOGl+x9hIYq9G4V+nT38.xnkTNI8GsuMeau+XM91rtnQSmeGkwRovRA0UBgUHhULam4HdEmySLEDv9Hv1f3iEH1ddfm541D1uONAM1tjQR6uBvkQfKCPqD.qffQs8td1RPknvtEvSJxuYBwVSD1k+704lgFMsyPYbYAfEJ8hqQSIBUXxIty6TRXlNKfcW62YdoICrFzS0bX9Tn2bmfGpTIgYxWEScgGAGnU99F5akockednGEPWLA8bh98TIf.yiijKfijzAN5dFq3T054oEOWznoyuyxX4UIVBB5kKfUOahZi4wx8jSP6FB6PjOF.dxY+t+h6qdLWrFONA.sP5acoumDg6MpAQ5116lusznFi1LCMZZmkJoGHg7FiZfB38u2sT7OJpwnM1PqJcQkyiqCTihY2F+Kkf8VumWuX5YAvSAvMGB3qL4VJt858Lx9gFd3zBG9khKWAb0DZUfXEPXfXlXvLkzt.wt.3lkv2Xeat3lp2SolECMZZmUJqOL.tNMaw78E8dNCnDNII...y.fMkuCdGwcQkoIKd0nejGq.BKUP+m.QOPX9fnWdh2UoyHgoHvABjeKEvN37v1lbrl2sq7EMZ57yeLrrDhk.hkAo9DPOjnmP.ckbRR.fDB.3Hj3HP3nX1WSdNJLdhvyjadXWNo.MeV35SWR9.tJB8KCfkIgkPhtq8I7+jPpBHl.B6.faFA7k2amXmXrhUp2SMq9wI.nExhW6s9WAxWeLiAEFchMW7QhYLZ2LzpRWTo75ARHeUwLN98tXHMo+0ikxfdyX1ab+RIPOMLew+IizQl6bD9HHvO5derh6ndOkZmMznocVoBVCBg2OHWAlc2hzU8ddcNS5Hf3fRXi.7964vXasxO82yWCMZZmkNlt8Dh2E34166RZFkvO3jOZwOVlO+VU5hp1AtdA8qBgkM2hcmO.69rbRdDQLED1OAdjDxO+ysohaKqmuwvb0rkqFP+h.3U.fdgv7YBlO.57b6Z9J.giBhiBfiBfCAgcHv+m4H9J9o01X6hWa5kkG5lDwF.P+MdI7+DQGU.6C.aUh29jat3SWumQV8gS.PKhEt9zkzQP++Bvke5+cetRGXua51t33M9smV7UltBknGfjqIdQQGnh3u3yu4hOU7hQ6hzjKdsXA4DVAn9.f3URv3V.GiJcTH7PD79NVAr8u6XEOR8dF0dHM4huRLXtD7Joz6EIXEM7IN5bgTEArQAdOnD1nKTU+nRSFXD7VCP2048BHj13d27s8yedOkFMM+kTFKrJvU.o2BIt5y5E6elPpB.1BHef.wizHU.S6akocgBXvDgUiD8lkv5IY76TOuHgGBJ4ef.aJWALg2c.0aoICsJrvx4wUPFda.Iu558L57hzQEveKC7STpSrM+c+sWZN1Vg1oUgJXYAhtOY0RjrvrOMGKqwDzC3IdKClUT.iOu7vc.fySCspzEUNGtJR8Z.v0Cx4WumSm+XWf30KnqsPI7mdIij927RlB6vOw13ou0kNXRUrAA81.vZPRybBjNMHySfM.nQv7vWXwqK8SGlAacxmnnudD.5c0X9B5WLSd5gDmm6ZjzjAWOtzJkvFpB8aPxqEw7lJl8nsrdIs5DguQ+qM8d6n.1X8bgtCMZZOkJiUm.8yCgWOR3x.XTeY3jK45Aw0GjdlPY7vKdjz+t7kw1c6fq1quUltfbcfqobhdMD3Z.Rx9DhUqQ1EA9sPNc0EJgOaeqM8S3cDP6Cm.fVDh3UPfndAIANVLG+1UBXg5EpJrQBSvtOVU3r6dNZtyl8HUB5cRhM.vE15s+oX2.5OnJzFlpa9o6c0oetCs0hSWumUsRlqs8csHn2BRvFXLdppMnlcWxna.AsFNO7EW7pSuu8t0hSTumW0acV.KRUwhpOKv7GZnQS6oRIbiUC5WCBWASXTSJ8wijE.v0.nUToD9a6ejzGXeaB6nVWHIGXMoWakioeijD7JAvffMF6HGRtD.7NDz0UJO1T+qM8KUt.dH+DaiugFMsyxkvUKo2jHtZBdN2dUabwEBh+.Fzqn+08e6AJmO2W1e1p0WCwE2ryO8sxztD0K67O6+mbBpTRBbOfNBHQOydtwiGEvAJWE03JDcqgKYjz9O7EpaWA8o.wqqdUQeqIl8o0dEHQ2wEjS2SeqLs48bn2fouUltfj4o6UR2GHt9nrkpa3wDPtLB7+Fxq+tKYjzqndOip2nPu.HSN6vB3b5o2MvZSupxkzeojJBvqtVt3+iGAWjHdqDgOU+ifquVE29We5xV7H25mJP8o.wMBvKsQ733PvARHdcj5dxWRep9VaZDOxmVeqKcvJkzGAPOPRBd8fshK9+GhIXCTI2agxJcf0j1DTOCryGdG.zBHT.KIOvRi7WX8jUp.usyxX8sxztBA8SyjH9dmTEP9M8Sy8ryPil1S4R30Fjt44VzRaBlPfdAwuMKnKawqK88dgeOrcej.N2Lzno8T8X35BT2N.WR6ymiNUXW.3xqB8O0+UldGczI9yZiOey8Sf9yhAhh+KmUAd8oKiU0MIp2NA6tQXWMM6NEgWNA965ajzaFcf+rX0w.FXMoKUTuYTUuKPtf58tv3LCS.vBSl8Xac08u1zOZ0.9rO+igwcq2LKLaqsLPbMLn6EjKno3iEYhY+rE.9uJp0LvZSemSrYrS+4pVSMbY3zN60gv.HfAhZPD1QGDdAjYs4it.i66cB3.X1+mcFIMYf0ldYkKoTPc+fbY06YT8BItbEz888tPbcCMZZMt.X07af0jtzxkUZHQ26baiW63PvdQN8gqTVe3KZUoKpdOep8RSP.CjYOYQhynt4wPil14hWW5FXU8o.4ePi5tQIQ5VRJoaegqOcI.oY18qdQilN+9FI8ZD0mFj2Zy5S1kf8RnzbI59W7H3Zq2ymldill+RFAWdHQ2Iodfl0OWjIHWef5Ss30gqxe2eqIm.fldoIHACHh3tsjI+VSLOm.frVXFLeRD2EFPbPdx6ez1wY3gSKr3Qv0FftWP7tZtqt+YAlPxKGP2UkR0tsjaqf45tG2OD98ZNZOT0GDrWDvuWG4Tw1sazruUhNETl0YcBG6zeL85azzETtLdWP59A45ypXGEyVjUuw7AcWKb83Ryhg7RFIs+Bk0Mm.8.M7+8+LAYdRdsB5dV7ZRuwgGNsM+6rN20eI75pBceT3s1nlTrZIJb4HnOZkJ357mqZ83D.zjq2Ui4Gf94hZ6oQ5fj3YwXEqDsXzlJIAchLZ6edxPg8GlsuuZmFG9BwusjtWRbUdw++PIjKSP2y.qM8pp2yklA8u1zqG4zmFfWcsu0g0DJgyGD2XoioaucJI.ERP2fHa1gQRG7z0hEGZUoKJortKHcKwskAmgH6B.upNpp6+7sljz2ZSWdUnOED98m8b925ffKUI5tl5Bw+6CMZZcoFNzrZnQS6r+QR+8H08PvUOW2ovHyChUDppa4vuDzbb8B6LlS.PStK.naIbYwLFBX2nB1cLiQ6pb.KLt2HhBBX7W52y0ugSk9FMcAKds25cChGX1spciWAfpdij8Gf9zCrlzUmkaG2VI8t5zt6ejzeOBce.7xq2ymlIjrSR7dJWV20EMZZKP607zqZNLeJLbFMba+j8KLznocNvZSupJ40iAv2JY8oH+cthfE.40jTPeo9VW5fms+46c0oc2+5Re8D5elfWaqQ6a8GGAWDgRqbLcGC0VdjZNaklz25RGrbIcuP5i1RWfeOmwjjD9JPh9GFXMoKsdOarriuItlbUxgdRHVQLiAAFOemX7XFi1URH1KRXFR9cbAb6jIMo+0mtLdLcG.3cTumMM5HwkFRzc12ZynmZYKjgGNsvEjCuKHcmf7rdQJ1bIA.32riR302NrkSkPWJq1AXmjy++.qIs2JkvMJn+hl8OWJfqJQJ8RFI8L70rzjK9JSuzKHu9fHn6usX23PlWDu8J4zs3cBvoVeqEKKQ5dHvucawmMNePNnntiy7e1yZz4D.zjKOwfwLqkBpD.d113JzbTIpghbHNhDdlHGilVKb83RQUcmf3FaUepPYKl.gQHz61sInengGNsvTWHd6f5C0r8zUa7vEBp22g5Es9OsobXfr6yK7a9i9eouQSWfntYPc6M6K9GX1DDo.dsUAd68t5zS6Yztu0fWQ9DcWP32mr8oNbPxBf3cTpLdGsCIR6bwPqJcQP5tgv06s7+YrqK.8NaW1gVs5bB.Z5o0FyQmBSCw+0XFi1YDH18A6il3D.bB02JS6pip59Aw06r+elatsp8MFHtl58boQvws3+awENprAAtrbA8Ap2yinSYyt2SPkX.653+u02JS6hk08Cf2UqzValIrGH895riScUu+RFI8JXh9yEwqtsL4tj4oz66vciey58ToQyPqJcQUxq6IIAWqW7+YgY+4naHeYLR8dpXm+7G7a9slXN3hXpPUrsXFi1WoIB5JhYOlMDvTEl2K9FCMf9VW5fIA8I.40z9zieyRraBcu8sxzG9zU3wZkM2h+esD5lAXM7L2p..lQBSQhRPnD.NJHN99073Rm5t+AAVNH5B.P.E.PmDnaEP2LodlTLl.f2Zeij9WM4lJ9Uqeyi3RP+mHN+uBDE1M.NDvrel7vuTb4R5tH3UkACeCGR1qB5Oef0j9rSrkhunNePuqNs6Nyieqfzsy1413Flsts.pOT+qIce6aK3q694dZReqEKqjzcmPbstV+btfWJC5COvZRelI1RQWavZh4D.zDa3gSKbXnnd9+Q.Gr5E3y+eLr3Ui9QjexyIDi6iuwK1kLRZ+AoTAbUMB2arjlAydy6GD.kHwT.Xl49k6e1eOnaRrvFpmvL4BRJnODFM8laW6PHS0MtJRkBTC1d0RU.vtDvyBhIn32gD6.DGRI3PcjCiumwJNyocbNIFZUoKpRBVnRvvj5kEBZYLAWAEtz50SIKQ5sMznoOx4yeuZjQlY0.lcmqJNxPil14gqfqSA8gIwqHiF6FRjryfzGou0k9lm7QKNN.vBWe5RxGzuKAdqs08v8WDtbln2Weqi6ZxGs89d45acXfDo6D.WSiwh+0QQ.GTIXJBTABGDDkjPdPzKEJ.hd.Pu.X9MFyY.Prl.vqF.+eUumJ14Nm.flXS2cbO++..LA676NVwiDyXz1hX0wOF7whdLZhLzno8Ttjd2P30VeeBm5..XqRXGT7eSDGhI3fRXlbIXZEdwI.HLa29XgDXgP5kqjDFWO...H.jDQAQkDbE.X406VUX.3566X3ubxSQEHuU0PqJcQUntq32N0zAfv2PfiAfmjUw3W3QvAx5B64dd7h6G.6GX1hI2Pil1SkR3xAwZfzuA.tr5Ph.VSoYvU.fMViiazMznocVorxjDGIhm46SbzNKg2Cfdmy1ISZ8wDbEnpdmWzno2QGUQ+Ln6FArAjzFtk+OEjvUm.bC.3+y58bodYnQS6rbIcK.0yy7uBBXeDXaPXGf7aSfCBhoRDpTIAGH+r+y7Tyl.fpD8PgdAv.D5mSDWNDVV87XKRxBP58NznoeR+.lZd4D.zDSIwc6+C.PvMG6Xz1JW76qpLz9svrSkxkwqF.uKlTeJTaR5aPvOuH2ZNfCToDlZeOQwidJ9iruW7+ZZx.qg8v.5sZBVBkdif30Vu1Y.DXPP8FFd3zmpcpSSL2MSd6jwqU+IoYHvebP7uJPLwyW.G5E1oE6MVA83L2M180GZzzM8CpxuPGA7aJoaoldimDKfIXCnELA.yTBKM+r839yeh68BxqaQA71qWWaq9fcAparPIk.g0iDrFjzf7TRafPxNEzGnu0k9YegcKQ6lxkv6A.2P8Xw+yULs2BE+KC4vFm2wvgPWXpSyNa5E89zvCmVX5t47mKY.KUP+WT8r6EPNXoJ3F.vGqtDe67VivNf0NG0+H25CPvn15xBBurI2bwmNlwnc0hG4V+R.7UGuHnP3X7hamOi1+PoIKdc3pTP+i0xuvTRyHfwSHd3Jh2+yu4hOUVGi9VY5BR5.2.RzaVBCWyug.ocJve28s4haplF25jgGNsvg6A+WgzGJyKtXRU.wDP3KFR38zncy5WxHoWQP5N.w5AxnEudZHnGLIvaZhsT7P0h3Uqr30jdiHA+4m2CzrGMjYlsVNjwK9c1wdJALMAlVBOK3OrtRPfAEwhfv7AQODsOUZ+Yof.lh.SKfoov90wsvsFsWeBA8EJLO96zpdjZNQlcgy30oD8QqoECyYuV9tCA7PLO+D6aiX2YcMX3RFIs+J.2.gdSHfkU62Ui5oCj+xMZeOkclw6.flTCMZZmkKqHeF+zzSt4ayK9OBFZzzdJWVKIxYfabu3+Y02ZwxPP2dMcw+P6F.eQH9Ws2BXGw5bxO26w+Q8stzuXhz6SPuJBrjZ04ET.KADqY3gS2Vq+t.HMY5KDqQPuQFmE++PJv6aeyCeiFw5pvysohaqu0k96lDzGTR+1rFrUqIP+kI5GyUj6ZYjnelL4YvL6SzLSeePPGBA7THAOYRfOV.3o6XdXmmnENdQilN+bkwxSDVAn9kDvv06snbzEzQTB1oD1dNxm.Ari7yC65Dscnajd8gIX8kJiqB.srEVyWrzjC+RwkCoOPsaw+J.fcAfGFU4mXxGq3NhUjdtMUbe.3Oru0l92yD8VDzuMqgEiVArvbBWC.9j0pXZYGm.flTUOFFPD8v3tBxsd5+sXmKpTAKm.wcaaK+9Gvr8B6jR5cKfn1wE9ODzQ.wWNQ7S28z3qWqVT7jOZwwGZzzOb4R3+OP89DzUUKpQ.jrSH8Ke34y+Z.LQriW8TeqD8FndaDX3rcj0QAwmIPdWStkF6mlxjOZwwGZUo2Qo7Xu.pXz+LlPO4h80JqCT.qtwaypqCf.dnDvuVUhsO4lN869u4pQPaC.a6hFM8utPEbYAfqBA8avDF61baskzQDwWgj+O.vVeoGF67zc88S5qOPuYBdY0j48bnvh.0u9Pilt01gyt8EuVr.I8dovJpM62YMM.dPH9Wlu.1TsZmVL4lK9zCObZ5TWH9l.5cCf0TKNpCDnm.zuPeil92N4X9gM0rwI.nIUEfklLW6aJZjO+3QT+Z1VtU7HW+F.RSxcLbMgD7aQTCdhKRGLjiECA7W+7aAGrV21k1yXEmAil9UF3X7oUhJBfeqZRfIVuxgAQKdB.XAb0T30BlkKcSSCv6JzA93MK2D0dd7h6uuUl9GqNX.I51iYR.DQ2Dnk5bsO2N.qF11HO0DTIH7PIh2E.18DaASctbsq4Vr6VFZzzmTU4CVsp9fh3sVuKVoYBoMJwhcTAO0d5BGDiUrx9N8+odQN9WepdL9ECI5V.vuYM60Gx7D5ppVBq..ORMIl0Q4.tdB7pqIm6eoCJv2ahvW8b8meNerycVrDFM8AW7LbmAp6LgpFzlCYBfVAKgkAbpa4rViGm.flT4RvkCgdiWVMUH3B.X7HrbJzczd+SpRPbaQZzaZr3qDWVHQ2brO6kyUv11VHguo594garhUl.X2.3Ms30dqSiYK7QQdqZytH0qA.sr0AfKZzz4yxJEH6dsTPGRjouzuG93MaGehIehhG8hFM8OoPI7SHo+fXcb.HPk.PC2wg37QkYvfHWjSf+YDMsj1HPxcruMisjUKZYtm74y.j9t6aD7kfTQ.b4jMWIB3EttN.um7E3CkUOQ24FmcO7vo+tG9kf+NkSoTX3ZSApiKO.8K22JS21jm5BPaSsAWe5RpTU2Ghch+kNBHdXki2791XwcE0Xc5LVwJ6EXGCMZ5udoioamTumXeTSnvxAvkAjlYW+vpMZ31.Z1o2Pil1YP5mEYUED9DQ3P4lcQDVFql79Gv9PhyHaf5lH3JhYLTPSQhOWCwh++QDJvaA.eFHE8V4o.tpXGi5oBkvaMqa4eT3yTIO9LMaK9+E7cGq3QxWg2OI9L.JyWLwbEQyuZgxHZmi15Akfgi9Q.6zOKd5.4GtiJIusYKfmw3l2KFlbSE+pLvah.+sY+3GQRGD.+eWNGeK6cyEevXrct24NKVZuOVwuHDemB3uOqG+SJgqoiK.ML6.kr1EMZ57qTUenXu3WAcHA7IS.e208E+eb1yXEmov73s.hu3bExy3gLOf9OOzn06qmYmsbB.ZBUpBVXBh9Eue5pIX5HGi1R0h2+DvyfDzxlc+yDCrlzUmjfaHlwPRSAh+jDvaoQaw+..SNVwCVIv6F.e44ZEQQCAtrgFMskZqZ+BV35SWBf9cxxwTRaKTh24baK3lV64wKt+PB+HP3gxxwUPknveFR3cumGu39yxwtdSDCBUm1A.RUjzWQA9dm7QK9wpEu1t2Gq3NBI7CBnL8yHwhj1lH+f8bXV7.ar3yD63suMWbSJgu+Z1qODWVnBVVMIV0A4KgqF.WeLigfJIxzNpv6ZthwWCk8LVwYBU3cHfGN1wRBWgph1rN.RyOm.flP4phEAf3VQSE1Utpno9FSaTUKd+iD6rP912D3LznocFf9P.LpYkVI7V5n.+HMh2.vK34eLLdP7tfh84ymcUoDt73Fi5iNpfWEHVRVMdBpDS3c1pzkNl7QKNNE+vPJCRBlNJj9qI3qgf2RizSVKqjHcIH10vmSf41QEelpA9N22VvWuVF6IezhiGTidR.TPReEIdS6qC7Yqk6Lm49YnODjh9B1HYmh5+RriS8vkLRZ+j5MQFu6wRPkTf2Rg73S1Hmbx8uU7zP7tATT6lWLAKqZ4rsSjXwmS.PSHkCC.fAhXDBh7a08zNA.wPM48Ow+08LV6ZB.RSpTFuNRr9nEBoiDBX1mfVCe0TtXXxsTb6LvOX72NfXMQc7qCFb8oKAI5WM6RljBT3imOescAXw1Dao3tSH+0OWRBfjlAPOKj9LnJW6d27s8F16lJ9kmXKEasZ8e.XnUktn.vf0p1z4KPAMEHe+cTfu2m+wJ9r0iyq6jat3Sip7CKnGYt1kVCCIMCD9i5n.eiStkhaudzFNmXyEepDxOTHnsTCd845.RasVCvno4qB7pHv0Eqe9RAc.D36qv7vebspJ+etqXXeao3CGHuu45PAQB6FDQtsjaYsVqe3ucvno4kvkBxEDqPHgoQBFuY8bo1PqF79G.Nn.1W6ZAYYnUgEJEdMfwYKooflRD+YXd3KDiwOV16iU7KBD4EcJ8xi53WyklTU3U.frqNRHbn.3WqwOwQm8R5.OE.uC.cfyje+ydrTz1IveBC7Mr2Mea+N6Mh8M6FAyjGKHgHlW++Gmz3Jg2491Tw+z58hV16iUbGP7iD+cjzYCc.I7mku.+v06et741TwswbgOpDh6SVlbvAWOtznFiZr9pf9gza.HV0WIMMI+nkmG9r06eN5rQgR3AmsXeFQI5mIpiuk4bB.ZxLvwP2P5kEyXPf8gPizWN25XHf4Sne5HGlIxy102+RSpjGqGjiDim.vraca7UD4c2rzx1NdAx6VRQ6FbEvfwZrqG5c0X9HneA.lkamzmrZtVqhZ2KXOiUbFJ7fR3yc5JJfBZGT7Cl.dSgR7VlXKE2ZsZdVOkGXgRQ9H7c7jFGf2ANF9X0rXdZzQA7vh3yUumGyRGH.d24.ukFkE0UNetuL.9qicbpTEqN1wnVJoJ1.PD2EZBet7UvmoYqtsrmGu39IRt6nFD05VSIZU4D.zjoZNL+ZvOnMgRZWW.YbEJitjxtyR7IhDNPEhynm.WqlAVC5AT+JLd0XgmtZBu8Iezlye9nxrUS83sK.Hl+PqJsko5R2YArHPb0Y1.JUQ.O0AxgFtBFYVYhsT7PrJuaEvI3INofj1IB38Kw2vEdX7m9bapXKc6H6Gk.VXLOexunXEzTAx6KTBe1FoWi2yXEmIIvOR1TyHN2MWMQ3KToC7mzHcbS9tiU7HpDui45DAwizZi53WiIpemXU4+kz1Ck3szHel+OUtvCiMJosGqwWr0Z2jzNvI.nISt.5lIHSaEUuXJHfweoeuHu8yZSUQnaBLb7hfBDX2MhUj9Zg.wxAvqKJm+OoijC7ss+MVbmMqGuhu6iWb+Ih+2iUaAjBEJOuVm1ATREbEYbq+apDwGudb9hqk16VKNgJyWSHnufB5ogzNAzCCw2PGE3J26VJ9GM4lK9zsaGyrgGNs..FH1EmTf45g8T27jap3eXizh+eASrkhGhhenYq+C0CJHgOVGcvatQ7I5N4ST7fAw6Hl0sExVmh15hWW5ZH4FhxfKMdNxapYtnstycVrDAefXUaInZcaqjspbB.Z1HLPFucT+QMCI+Nsa2XVsRBP+fLdaSZgiHxuSzF+FbD5MFkatd1aB6i+bap31x7wtFiIXWfHJUVcAjWUZcpFvgD8KmoCHwQTND81JVifIehhG8kNMeKUE+URH+k1aG7WIV8S8lE+6WD5BrFbVYm85Ue18t4a+iG8XcdnZNrQBTWtlpD9pElWiy19+DoZd72CfmJViuH5tkn0sNZZ9PPuyXLzJno.3cOa8Mo4V0bXiyVenhfXdesVTjudOAryNADVMiadaNhT6wMnVWHrBvHN7DGEUwtiWDZbMznocVtrdcQ5k2sPw6ONCcs0LcfmtPYrKfn7ze5LWraQo0VWSVNXJfYpF6h6UCj4Rj7yVumGMJBkQWPXfX9c...B3gqF3cD2nb9qPdbfJk4+HjVCHqY2Opj1lD+vMxK9G.3Bxg8UIv+FHcYw30GJzY4pXg.notfj1eUrDFky9uBj5QBI7usQ+yJmIl2wvgpzA1FhZWnxZV3c.PyFxnVksEvzLfcFyXzViQuJoejjj1yD3ToLdkDL62FZRGDhehIlWqwBYlc6tx+EnScQZ6bUfsFIVtu0lt7r9ySjXlexuejdBLVCOEPWDw9rxpmFh28y+XM90Yh8LVwYfvVDqcWaUP6OQ7iN47Z7KDm6YrhyD.1FhTQ8UDcoPy+Y2lUv0Al8aAcAb.fj+hl0Z9yOltvTPM9et2pMbB.ZpjlPfqHpgP3P46LNaOXCQuOoy.NvDatXS+VU6r1no4gzMk8CrBAgGNTFe4Voysc0.1tHZXJ5UMhRx3m9O..HB93U09R4vB.YzpALRZJIdu6aKEe3lk5TRnD1QsaQI5nD3S18z3AaZtd9wv1kPbJdaBITnPTF6Zj9FMcAh5mOFG8OJ7U16lK9fMK+rzoydFq3Lf7ae55PKmqtnQSaYN9esCbB.Zhr3UG4yO9r1cqvVcpQTeqLcAYbAE6GiRZ9OmZmK5uJVBP1WbLU.GLg7+dybw+4DYt1Do+47SkXsacFMskXGRXm8hcaxjDeiDguPLiQVatqs9zAonmXLEv1PE9.MSIgaxmn3AIvSoP8pXI1fqBVNiv28Cnih.+nY+3VeE.N.Pb5RTcAzbjTMC.NA.MWX76Yqh7aF6XztJYd0fdtq3iE8XzHJfQDwBx5gkIXq4KfGNqG25sxydC.9FJOUhQ6VUnyKobKUMRvNaDh2Q.SPkXf2YiT6r6LEI+VI.SWCBzGYuasXS214VfeKlDgWeHRXRy7N.HMImvxEhPqUV3g16iUrka6xmKfofhSMevO7vlKNA.MQTNspXGibBaI1wnskvJhcHXn9TQkqmFd3zBR5JIPDplw7uZOiUrot.Ich77aFGj.Y9SAiDkRTbd5B0R8stzAQDRnDl8L25BvTapndD9DdnI1Ry40+Y.6BDwsU7IswdNL9pQMFQBCXmJBIHg.cgl3qGMznnaIsRR1YVNtBpDH+yyxwrQASP.DsDGoA67iS.PSizDpH2yVkpTsTy4MPz3KMAP+BQMDRGsULi0mNS0KtzY2BfLSudlf1+d2TwOaVNlMNhzYZTnTHeycEkF.HWUrH.jo2TI..D5Mjf0O60Cr1PQ5HfoCjHdWMqmU4p4v9QL2QRRGQhEal15+Gu7chcQk8IHQ.UHQTNO30B+fpnWDgp+uDdDTwEKuyJy15QslH9lPZRbwqEKPD8G0fPr6IehhMseYPirZw6eBXqwb7aXUAChXb1ZEdnLeLa8UIWHxOIuZf.wBULJNVDyGJrtgVkOF.saFZzzdhSM7QAH7EyMul2h26jOZwwAh3BQIdnpr4cAcys0py9qqJLSnItsjluJVDXFeTsjpj.90xeAnkpt+DaBM9ccD6EyI.nIQG.KmBYdUN8EwsGjnol79GvSF4wugDA5GHaSthjJQxuTVNlMRFZUoKRHJKvclmqil+i..E5kw30GvDPNRk7dW.ztoZo3bDvDvABf+S6YrZvYnuIjfNDC7e342by8B57Br9wkPLL.6JKGSQrePrCed1O6P17lHo1U9FPZVPrLQD2VrgbA.LVplfU.Fiyn9woMr.N12JS6RT+rY8Y.jDOiRvtyxwrQR44gtiT6eZ7ll1q0ofRvBPTR...AVHntoEu5HuitrFJAfkFkAVX6IUw1ZV29+Qmvt.wNZAd8w6NyeDBZsY+fpc2J+c+AgtUDdXTBstul0pxI.noPZhjdYw8IHqPHwm++nXzz7IA8yADyD3noY0H0qfafkednGfru1XHfsqe.Z5pl1mwJikKFgaBHzh7TpDRPz99Ql.vqF4zm+RFI0IAnMAg94y9QUGEfatYrx1WKLawbCeiI1bwl91iKivwbi.GA4ZdO5HRY84+WA.t6dNDd1rcbabnDr.xHbDzD70fZx3D.zDn2Ui4Ch9AY75ezBGJmv9h132FquJneAboYcQp63o.1UtNZ9O60msT.cAFgpXr32pv7age8LROgalvGOqGyVVjqupz8NvZSuLeb.ZwMZZ9.vkl0Cq.NDZA5bOCMZZmykzsrkvgTqRqwMFckjl3Z1ReqLsKvLeW0LCI+NMqEKxSmgGNs.BXP.l8OLwj1ucfZyNeSGMAlWNzuTzaUKOc0XzmYMj.zOheAb7oKmq868uPBlOCY6MVKoYnpNdq7Y.jLN6nHpVjc.PsBw0Gft29VKdUCMZZ120ArFBWRYrvDDkB+3g5XdM+6buRUvBAy9ttAANzrGOhlatlsbBT.CRvr90jiHgmIiGyFF+6WD5BT+LY83JoRIUac20DspbB.ZBjLaANaQwLFhXbLiOiYQwr8Y2nl.GQ9u7R+tseI.fDKAILaOZEDGDI4ZpKXTmJ8sxztjvhhwNJxsQzyNDr.ItJBcekNl9z8sxzX7T9r5LIrTDmi.1SsmwJ1721MC3RgPlVL2lyD6cqM+6rwJIXgHFskzl3Z1RBwUDgg8nIsvI.HTFcAEgiRBw9px1u6+rYW71R4V1gnelwU47eLs5a445jgGNsv2iXIIf8FqXHooXBe1V0ss1ohBZkjLqG18Iz7eSimTchEvPLdZj5Ym7ItsVhjHpDLCEpQEMLlPh9IwuIJnWU+q8V+ag3mNWB14ysIr+VfhWVaOQLXTVfq3WKyGy5.ArPIzYleobxwZI94m7XoPYeBjDvSm0iYMizUhL9CLBX57MwsSySmJBcmPr7HLzOYgJnoOQjsabB.ZvM7voElRXQjYaqN43M6Vdlsza445k+WWH5ImzKOq+hpiGA1WnUdAqmBjZXfL90VgCliMoaKxy.LR6HkPKTaDMWUr6.wQXDJThmRjcQfeKP8pqJ7H8uF92AltCU.6ZxwvgZIVLSanPP+rjX9Y95aQKx1tkXYLFc4npMwKv83HgKkBck0eUWybmeRDKMyuqp.1eqvNp4jImP2Af9y5aGU.G.cAu9glLNA.M3ltaLeB8yk4Kx4E6PhsvU775nND5VDuhnFDh80AaOS.fDWQD9xrClzQK7OOPr.AzaVeEkD15j.fp.GfnddCMrKRbsh5UBfcwRXW8uVtYvzGtmovNaG2sOMqFZzzNKURCl0spT.fPoVfelazz7njtjnTC.ZUtljzk.DgcPBaNSPxPqJcQkgx7jXyDr0rdLajDxgKkJyqaB.he6ehuqOBwMabB.ZvUMGlOqhkDwGfL.vAYBZYOyy0SUygEQEgLUe7DlX9Gp8qErz2JS6hPY64YS5nIj+asz6FFgEPfEj44TLvucFOh0MElG1YkR0+yz3bE4pKCDWFjtFI7Nm5Bw3Kds25ijP9O7bapnq4BM5NJ5A4QOY93JM9jOws0z+81WbIzKHVTV2kbjzLW3zrounjNacAQCFiZ1RGczbl.fp4vfLF0TiVnuC6DJn0l86FUMMR33NozMebB.ZzEPWjYe6C53IfmsiRsHakvFLrZ3UxjjrOiq+Gzz.7etc7hur.dEQ3lhNJPqakru2Um1Mjd4HIaecSRyfD1Z7z1.vdFq3L8OxstUhHu6cNaPN+4to2k.fMD.t0EOxsd.IrQANVRB1ZkJX+cPL8DyCS2rVbuZ0To.tzrtSkLmlxEu8iJGQ+Bn+r+3+is2R78hEvBPD5fDBZq6YraqoLQ2hXPEPWYciUtBw1y1QrwBAFNqGSIb.J+.DaF4D.zfa1VHGy7p14OhoPWt.dDCLg+7wb7EvzA05VzZNkHVQDF0i1J2J6dIBcUNIBETThcmzj1OoOYH4mGBui5873TiKjDuVB7ZkTob4vSFD1Q+k42hqK8YQEraRLwDaAS45GP8gBXA.QnGt2hr81oPuhHFEI2ViDj.rPwr+yOTMuOzGQLLPVWeVzQ6r.2c1NlMbhQA.b+sq0fplcNA.M3Dwxh41GWRy.AW..ifgFMsyJk0piYLnvzyqJdxXFiFVA8xPRFWEfIlthZMtwwSjev7PWcTEKMyqahB6WgVqh.TXFr0jBZ7ZPBXyDycbAVMHl8ZNAcPkfcKhIV7H3YQH8eI.7TUlG102crhsTIqoQV7VfayaAb63Ukn+bB8m0WSJ.9uksiX8g.Vn.VXleefMqE.vQSyixZwjHq2Yksz2G7PqJcQUX12B.Aw9yEZcKZxsxbB.ZvQoetnVA4IJoD97QK.swpdLrBjvXWEwmXOOd64EeIwkm4iovTO+lac2NacTFyG4vRx5wMgXW4ufVqc.vjOQwi1+Zu0uHA98q2ykyIjyVqG.ffJQpoIvzcTBGp+0dqOMAe7.vWcxMWrkMgW0aCMZZmkKgnT..AQS+Sq7E5xQHBc4nbgVgcHQZxbK9O6qgD4ZNSz8EWB8RhEl80LhV6s+e47XIQYkDBSM6NLyZ13D.zfSDaHp6..foU0l+ajnQjn9Uib2a.AxuV63V6cnUktnJPwXai9jsxudRh9Ex5jRoPf7asmwp+EMuLWNd+nptNPtr58T47AAK.hWHg.KA.WA.tgD.r30dqGT.aCRaV4R954ph8WcdXJ21AO+U5HX9bd5kk8spTsSkvl9NUx+9EgtXY8Sk8eOoNPYxl9BiauqFym3++169O55p77NQ+2uumiNVQU0HbMNV+.IWWhqqlLtbwfQx3vg1xjRxPnoYRRSoYRZI+fRXRSoYHrnbg8Ziur3xkl1lRxMk1jzjLIMososLILTJkvfnFIgAyk5RcHTpKRHKYb73HT8XrO+3868Oj32XP1988bN6sd9rVoqtxJ4YuygiN686y6y6yi9oB8hcAzbnV1rb2aSXMBXMg9qLD7eLrQr0Bm+27CLM27etYOmHKxR.PKNhHTxNuTGtHW50A4isAJmzd0inyKxSuA3Htu3dEZMUwgSyEgt.LYFsrHWjDBeUS.fCRO1ed7k.Zq.lrVM94AzVAY365zsBluRAt.PdAP5ZDwSvp3g5cXtCfjGslG69G6eCSmKZnZMZsiNnG8G70+CrOor+QtoRMrbJLXvGkqdL4xJl8GKY+nBcTKFuCnvtq1V1rhsp6PWtXTQD4jdpwQE0OcnSzl.ND7Y2dIwRcANqhlPp6yIoeD7cq6U3PEJYI.HzNxyh0hXzr0dIzb9Cmyen0QgiXsHFyE47dCUj5mNzgT.6iHedLTlXjzCWS317B2GfxcI33ka9JEfCRvO.H9Lh5VK5zs9LmjtwdN6jKZfxIg+EuywTUzoP3OxMTX2EpmMW.2KgGc.hXLO2ehijC974YWF5.wYSfl7MbjrYBRDvpfB6TQPRyh5472CVH7UwlvgjsAhYVVE.zBqPcLnhbJZnvbSLRpc9cBLWQrIfnzYiedR3gmYGoYxGheBinGvvm.f5UPtdtpKhAC931RXu0qi8F3v1x3oe.LYeCwTuz5IC+h4ZkQvSCDmlfNOTPWb0JXxdF95t25f+2d5wvtxiU8QHQGZmwXDtQ98NomI6u.WRzNhyNbOouT1bAtuXE8X4BX8QnPBm7eiYuOeVnmZrlP2yHHvzLC94whU2mSR+PJ7SRBf4ZaYXWgNtlFCKA.svTbFYGuT48xdpIXvASJMqWCSWDJSsWDQ92Dy32pZvASJ8LP+j.g8k.jztlYOemxDI...B.IQTPTEWet8k.lepTf2bniq.1GqmOq.f4k5mZbr89FN4WyK8MHYjqrmVOKLgAVMHVM.1TQfOUOCqG1ojOckhX7BOK16R1jQ9ZgXKfLvumkNDI2aN4HYb5K7cqvQpl.+94gIcw7IbLzMPR4I4+vA1dZlqmsT+HnCB8iG5FisH1UwZY+Dpcz3.VKD5HBS+mmLOO4Dx6ri.PqrHTttubdvIh80XolCzINMRLX3abOu.IcXGw1iU7ak8COYrZfve7JDx2MCypUiPBEkpAfImYGo41ImvyYpwRuOB9I7R46iIxhDIOCQ8UZqt9KckzU02vIm6fClD5QyUllC5mJBgce9bxQtgP+6BcLEw9AyISxk5g+2rEvrRYyt1d8BnSvnTJ6OdEeNrI1t.4wZECeOSBtr4jjvLOKA.svTLlYmuhKRN+LO2D3Jf0JhSKlWCBraQLcLuFsrpiUpHb7Jb48pgQQohhNDHepHD2VREKgaGfWkjd3kB8DfWWjEA4oCfeaA84m8jTxp1RxRpiIwqkXTEeRXut7xQtQXCgNjT3.P4jD.DgMAhY3d1Rz5oFfO8L6H62TMO5zOgT3S.fDefPGSSiik.fVTKzrkB9Y14kqfVhtHxHYfxIsShMDiy84KAwNqWOalE+STE.Vk.VcvCrx2S..HMbvCIwgHW5zEfmXjzCexOCtCI9Q7dbGM66mVFymHfAAvuUQu9F8Lbxkz8FSBeS5LqggeAt.3.PHyOB.WPvSPhWXuNkMWf6KmHFL3wTX+0ynI.fDqH3uakz9gCSkW6mICNXRIJrZGC7QsA.9bdUSl2YI.nEU8JnODitb9K+5TE6N1WiVAmR4jNaDkm5gOLVsjdGwr7+gTMI92+zikS1kiiQ0A5yE3D.HoCKlmeXVhiLJU.vAqWcoUY.tqckVYlwSe3YF+5eGP3SHnGUR43cOZwijsSvMQhunqj9q68rS1vR0iEP2mSR+DLvUpj7j3I2y1Sy7cd6t2XRGfL3U4HIltd0r+FaLP4j1IXv6YKDX5RkxnUPhCmQn6oFBXZfr+2WNZ9gmLVsXDlHURG5oGK8QCdbMMLVB.ZQUSnO.D3l+xKiTskBmc2ScyI8TpJ9Ml8jvGN1Wq1bneFmc8444A1qSX240LV+ZYfxIs6bXUAuwZQ7DNe9sI.8FGFqLJuD.vgp+FvjQHtYB6YL7Yk36AB+9P5QZ12OsTHeqdpuxbKGu6khiOvB0ixt2VQfOcniayfqDFJ3AUpFY9ngTFqd1h.lNqN4mhTO03.h4lJp4UnnvpHiREo9vQHllFHKA.snJ.rJp3l..g7+Kt+FO6j0T2qaRdckj5F6Y3jKLlWOA8eLzcm9WNB8D9hKMpbiWtJGDcpHz3nfvjzkeGCPEcXsDQnI.4wtyCca6ieo9YFK8wZaYLkhWp75+aHsqEZNhK44bXC0otoZUvG3TJmD9u+0BqtKBmucfCRjO9seEgl4l.Nn77eIzwsov5YKuBQZxXMkd176rrWdrR3C+wIdov5Gx6rD.zhRNrR.D0RmjLeeFx69bR5unS+0vg2KcrK.tbRk16YmDscnWDuqXE6EtBdB9XccfkNm65Wh1QGTgu4XRfc++NGOFf.POJFUTj0EfAv78FfoFOc6pJ2Z8B78PxKSPKImRGuTz4H6STIsUAefl8cSijSQX2JINH84iF2KUDRjKvgbHm7rQqms7JPfMEz.lipXjiFuCqFQn5+n3CF5XZZrB77o0DJT5GGwXrc7RnbYF75diIcv1wEButQPt1W5nOkmAb5S22PIW1TimFzy7c2Cm7NIha2+G.6WfijSlAzGyJ3wxC+NGIu2wu+AFKGm..g0SgkG54.LqauDvK1BuH4tV3e8E5anjMIpeIOvVHPeDQ33qjAPvU.hOWOaNw20r3Kk2+8qAGLozy.c5gNtB3fEqmC14sxIEQUcFAOtByUU4ijRZ8rkWp92RxZq6Cbewh3PdleGE1CTNo8pU88C5B7ybj2WfOTXiooQyp.fVRIt42stH1H4.fDycm++9FJYEtR3CSutYRdzFWLmmm5p5anjv0flJmTzA8KGr3czHLKJrz8rWIfUAvPed1NH8X+40dpvfClTBRuIvvezTXdezIdBZpwS29dF65+jEDeaj7iHfOqjtSH83KMOl.5Zdltv4Cjjqe2i4VN52Gml369l3ASylMvsWjSsJVEDBeegvg49w92x9MzsAJmzkXDlzMY3d1R05Qn2J4wrNO1UviaKhJ.cBw2TvCrvAJ3y2UP7RAK41Ihrf9FBc4YDd3XN2.kSZuxQzVcDu6WyEIRVjd897Dee.76Dhqc2GAaPDmYf2f0WMOxzExGmAziGhXcQ3y3oc43t.7+6eDrB.D3tQNffpbRywL4KS1nM03oG..2AJmbWcWC8Pf0Jg0SoyV.afBqCNl6Oi7DnG.cEcOL28LikM2IxECQzuSn8PWwMHmL1sjvogHzSRnvSlGptjZ0v5IvxCdfyv8rkXzbk8DGtfxlIDYwveXzYwB3nsQXmHdr5NLWDhqoAJWmE9rJ5P6L1S...Pw+0XeMZTF3rRVc0J5KRhKYQsCwN1Int59FN4bCw024vEv3jw9WBJ9eGijtDbmCmWLN2nY44h7hQ01vpixtII7D4gW1tgZjzZyb+oStm6O8dmdT7GQwOYsB78PveNAbYdouMfxseWDfNIrEB7t6diIQeL21r3cXP3BeR7o3+TniYyfH5GwnBIH+GBdLaNrd1xKmTv2IaGvgV9b42D.3bncfve9+Ewj3v42ll7REVE.zBplvxIPWL1amLy9yQ9AGLozybRXK0n1JAF5X4XSPvU3o9bm5lS90dpQwCe7VB38d1IaPRuCFgRr9kP5f0qxaKpWiVbh37B8eVPfoaKqNWjWDbdr55D8D5eOQB2aXi3RMo9oFGG..G.y2Y22N.9CAluAl5DNWA8V.voCfU.gNAPWjL5IGNlHY6P5iTXY7NAPt7bj5jF.BcD7J.vmW9aN8SJfNC9uk6yIGONOVGY3q.frZOaYfxIsWqhdyQHzORdNI1E.Vk.WSvCr32qTm43dlzRDVB.ZAUjnyHc9AyUFbvjRydx3cBoqgfGWkGFEVuG5ZW0V3UruscrWZ8CNXRomwggHC+Le9Uf31yycq1WOKzXsB6D.HiOWjWjVgSnqfuXDW9s4I0rMy8mNI.9Z.3qMP4j1Oxyh0xBXcNpMJo0.f0.fUSf0jIapfj8WW5WD4vD.z8FS5PRqlQ3etTr8r+tUNP4j1qTQ86hPhrpWHObdtSb.Z.DgJ.Hq1yVpcXrNUH7ILxS98BbHaoHgyHzO2WRGlhSNwHoGNrQ1znk8dwAiA.mR4jN+g0vupyqqDjG+KJjrHjN+hd8I5anjzENqtKZOSmXUdn2iCL7mWuWF542I1WiVYysbzOB+myY54h7qmAJmzd0JXsjg+7kWvmMeYxrlEdQqmaxBbacuwjNPIzuCnGRrVI8lDvF.vFHYvK2yXg.u+AJmr071KRx2.5C0QeAOvRSNwHWelOQk9pXEDgetjCn4l49u9LeBRVnGPsRF3l.cltmsT.8EiJpIu+LLQM.CeiH4.h3X58jMslrD.zBxSTTBEa.MTtLoAJmzU0p5p.vGEjm3M2LxNHzuZ8B3eF.e1io+q5v4RfsbBeO75PP6TEWZO1UjBeS.JqOWje8T+HnCB8iifedhz9.4TANnlEgEpBnGa9+Ux8dJkYGsWEKuZMzUghXMPpLH1hDNiV5iK.Y+0pgg.xKk097nvJTDZ5lfJWTd60AVEX3S.fPF97s+hHg9fPeAecaY4d1hvowHLVryGULxQGANyHD18SW1+3CarD.zRRdrRPD5Qc1qf2gRw9ZDZ8r4jSuVUsUBdggMxb4zqatmgRdroGG2yhoe.z8FS5PNcsDw9krkm.2UkB42NU+hRgvOWjIvrUIdjPG2VE0KfNcdrtPGW4wjEJZMAnluT+OXDbP.bPL+jrXW.3N..5diIqDkv4CneNRbFBXUPXksRIEvWW+GQNKA.dOVsKFMdKwbwhUjvZbDqIzwkBaOzwrovgUhHTgDDY0OeRbdoeRWfS.ffNPdnhQN5RbBJ3SlJA7jsUI+toIKkXI.XILmz.M66gEsxIE6oB1Dj9LfLFY0b9lSE82TOa18gldzW+EE5J4e+.tfunzWNALMA+elUGeOgh75rnKrONS.UTg76D.PUQmp.Vava1VN7DGot0DfZkMyNR2O.9l.3a12PIqP.mAn9Y.zFjvfDn+lc+Cf.aZfxIsmeNF.It4G0gwXF2mO5v8NUe4BtkG7lRJyISHAgURW32.nr54cuugPWdGV0wRCddQQ46x+u2MgdPvS1q7Nh8iNPl+nHYrw.3RZRQ3kThjtOHJQnOAizh+eNB7MCnqr6yI40ruBz8vIqWjWdLuWdQ2T6D0x2Or50yoTNoS3hv7rMCOWjWLbEPWDg+kIkvtcUrD.jUL03oGX5wSu6oGiWqC7Rg3kBvqUPaWRMsxBlNrpJ0he0t0nz8FQ6.p2PmXEIUwUO6uqaCTNocwB8GipPgBOdniYi1fClTRNrlHzqaxrm285DqBJ7iwVlSNxHGUEivQlTnh.mH+jv1k1rD.rDFohPi3INlYG3vR7OVRQ8GdHXIB7NcRejSobxqZIm08FS5vQ8gPDJs5WAoCJxQ1y1WZW9+Ed13L2noKaNVjVrnvoEmc4k6Ylc.6k.xbR8O0noSO83o2cwR32244uB.+fR5dgTsF9siPGE7gubvaVJ4vxAC+yEHwz0IlKzwsQqxAQmf5mJ3AVZROx9Oibuch1cRmZ3irlSJa94SAfUwHzyH7HaVQDKZQnmIQfCRbrOsrLslrD.rDlDi+BXClT+zimd2xwqDPQ9EgXGB3SU5H3CO+H44EobRQ1NtPA79oK9mkVQraP7MWL8jf7rBsg0CD9l.Dpmy2E.pelPGRAM07MNwk1emLqahQRO7Tim9DSOV52b5wt9eFB9yIn6K9+95KP.E8H7y67lkmcYnCnHToR.ORoZ4fxtsczAEB6nbcdSBW1umj7Fl+uEBeOaAXRxr4mOdGVMBcO0PpFD1VPiYKFQ8uOBg8PTY+QQpYdVB.VJi3zFbvjLUi.rPc7mJfuLjh5CyHXI3zU264fy8E+u+ppi9gzkRvfWRZuZjG20ByD7kzjvZnhPE.jQmKxGCNsHDyC.aL.k6L0Xo2WaU4ujDuYIsa.E8D7PhhHFI1qIospnSfvm..ArOzQ1uhaTUzohwmODShCmMWf6KlJgN.CeBRHviVMKVAIkSJBg9hvQhXZjQSHxhw.kSZmBCF53Jh4JTK6eTaLyyR.vRXDrz7yV8rioFO8.0b7y.f6N9krJWE7Zq8d1IOeoT0VccETuzjBDOZNTf2Ri4Z0ha9xhLvI.Pys74x4YylQoL.2WAleabhKkMwCltWUA+tP7pAZH+sQ6LBmu2llBnORF9dqi3+7OxOH6ufkX0SRnvSTpybPOIwiNfG8EgHOkuT166OC.zIg9IBcbEvtyCULxQS8if97Q3HSBn8MwClt2vGWSyfk.fVPNf4HZLk6mbXnFw0Ij121vS5H2pX7KeaArI4zUdpaNomdO6j2E.tjFVmyV3Nsc+egwYVD5X4BXxL6bQdQX9FYY3alTRXuUeVXuDPN0L6H8PcMGts5ddYwtmq.AmX9YZD4ULp3FMGb4ieqJJ8jDoZj7olXDj8+7A3MCGCdEw3Im3GLRFbAuGBsiHLRMovtKjimhM0.NMxHTwjf46iL4RLVB.ZAsvY0pg7i0B5s8JNm6s7R8O0noOjS7xETTKEYRVh.uu5ReQTPedPFgrp9pQ6ihe5Fy0p0Vg1PWwXhUHOtuPGyVIziMG7fJUSB6clcjl8dYRyh1t1UZk8Nd5cBvKGHpG2pCSleRlDgN6PGSIrO5w9CcbaJhPOIwCrW3wT4gdRhTTZPh6Oq94S8BnSEgiwlH1a8pY+iTyQSAhSm.qH3A1yGH3wzzzjwV32RC0ApIgFxOVSgSu2ME9Lr1HL0Xo2G.ugn2zpHKRxK.fMlwU07Mnl+7BKyNqUKXENFgGl43DAOlsPH0aIzwTDyUvwueniqo0T0Z3NjvcFq3KfJR4fla2BHwYDgXtuZHebjaDB+DevQrO5xGIHgTA+baCfCT.Yyd1RUh1C9QFQpFH+myqIwdfxIsCp2D.BdSpVtbeOSZIEKA.sfJ5vbjMnWJhXkps5gemBaPbd7kkvWM5kpZi0iSv+hIFIC1zdhf5NzEX3q..mO+ryiub8MTxJ7BmYniKAlCYz4Is4X2O3Aw9bh+kwtRqxQBeO0QX+sWKmr.Wf2bDB6AnKat.2WNItoPGSuvTHiNB.cBkhvFuLKqmee2pi7rXsPXc.LvquSyoiXaJUdhk.fVPxiCCzfJOIgUP4Jm0lF.OmoFO8.NwOCEt6FQWqN5luwFdOEJgsmEKYuXfBkTLxlMwSD5X1pPNLDQ3alTBXNqxTVJI0ChcBEm+YNAp4P93kw6d3j0CD9iHlWX+SzQ1OA.ceNI8CxfOO2gvTcd.LUviaCV2aLoCxv2PLcD6uvxxle+wUH7ULhHpIW1ueQbzTn.FTLBS..gGNuV0DKUYI.nEzSMZ5zPMnGnQVDBadtkiSugb8hfoFO8If30HgGpYeubBiXmdGu4IFIMOUQCmPHQWLByJbo74Y.bvASJIne9nzssAdnIFIM2Tx1lWeEJgoXrlH.DGpRgr+h2..bBAe2aAzbNv+QLRZjm3MwWg5wXQI5vfXpbQCRrDN8HrqsdIr2L6uY6Q3SXTN1J1TxxkzagfA+HSJx+lPGSSykk.fVTB3.doFxC0Dv5q6v4MP4jfuKqMJ64AR2oHuVHkIyz8yS5VsN++KiPGwXm0bQ3XEzJ3GdRXsP3Lhwzpfd9cCcLMs1lXjzYUjNRZBnhJjONe6vo2TDh5gUNoIIV2E9QRJHNDQNoWtDgQ1pDlCfeuPG2FEeN8YzwRaEP+j3BBcbkzgcDaOzw0zbYI.nkE+WHaLioDR1tS5W9YqmMaFfOmYFM8tD3ME4tVc7HsMeE2WqYearTgXDNutMakSJRfMCE9yZqfpTuJtqPGWyRZS+CFIMeLNtTDVfKvgbB6NBwsgiR+zAOldbPkS97A9HLA..NDcQp5cZD7ZfPGRJTTH+L5QewbNbd.XsAOvDONqmOpTKyKvR.PKJ5vtoZnyoz2bad79ZfWunPkvWF.e4ENK8YHZevwq0NiUMNzm+1cgSsJVEfdOzwX7+1FelcjlsqvFSqEkOZnjCTNoKuBeBEEvAKTOCu.tWpvuvDGNT0B3ICdbaBhwDj.DGhJ698GRDidSUWQYD40BfdcYwnx+.v8bHeNoRsLOOKA.snJVDOhWMvNaKYQIcs8rkj00vtlQvLijteO4MIhaK6jD.cHAdSEKhwa12IKkHm9+nYeODZ0AdqyOxJCM4o3WO7w0z5KwAEm2UPfiEi31nU6vne5PmgNtTX5IdvzL+Q.X0aJYPvHbdt83.6aaoY9J.XfyJY0JBk6NAlqPo7ayt83BYQPeeY4i75qThq2gS9MHY36yFPGfh2+A1dZtnYsZdAVB.ZQMwHoy5b3wZjWSR1Npqar6xIY5FuxL2e5jdvaRDOby9d40kTMIbmh3aYM9uFK5iRI61zz8FSVIfthXDaALc8BXawH1lVacuQrBDicLSpVoZ4jjd5v5fO7MpTeNoBIXQzGhvjbAM32QJVpW.8SD9DHAgor2q3Ug3apRL97tIo6gw5D0GIFwlB6pdcrqXDaSykk.fVXR7uqIbY+YYU7Ax5YGcuil9PB7ZATKcVKEwSBwOu03+ZBbXcCTNI2bL.bkvGlfQIoFT3tKVKezLxLGa3xPefQYjR934gc2FX99IBY3WfaAG+9gNlMCzi0BE9Eb4Q93yGAr9X74CHeffGy7.hMT3H4ii.3oTNoSG0GBBmVvC97UQ6itr2PNoOaXdIrD.zBq.wc1nuljrKHc4UqfyGHIS+8iYFE2sD2pPiYZJb7fh2bWyg6qYeerzD6nZErkl8cQHz2vImKf90hSz0bf76N03woSvmELP4jt5Y3jKrmgStjdO6jbUki75gy+hkA+kKIZ7OeKVnzONXDVfqxG67lf9IhwNbWP4jJHgnGPD7IcCpm4qPhXctyWe8BX0QJ1MTEqhMCf2MICdBHEv98f+sVUjjOkoWfWd2SMZ5z.9auQecI4ZA0Mz2vY8EGk5aqD9BD3OPRsT+.lfpHu9i1yXo+Q4gYXbLIf4hVkbP8KixIY5NBbeCkbZh5ZAYT5eGBXzZ0w1.R8wH9spFnbRW8MTxl5cyW2MWsp9dj36PhuHb561ylS9sVwlRBdIe2pYEaJY4h5bB8bkVPU7j+sgLlMKuwgSV07UHQfmg6R0ldrzQCZLaB5diIcPhUGilSV8J4fDjTNonW5MEiQcq2ks+7IVi3QBVhd8eJFwtQp6gSVuS5ZA3ZhxEf3QJUJ+jnVyKkk.fVcx8cZFWVBtAO0sbpaN4LaFW+PYhQRmspied.bGsNMEP4kG2UAGSa12IYDGT.wZ5HroU+rHy13KGnbRWdmtboHkrNoCRwQd51WpLBfRbuwgSVUeCkbA0pnsJm9N.7+JAegcKhbkP5ZeCEvGqIdi1PTpD5iBu0HD5GwWGOdDhaCmCXExG9djfP1s6s+hUnMziTDFwvR6OOLURN0pXUjwX2n0glYrzLcE.HW7p5LB7t5diIgupKZP5diIc3ftJPFuMpS7qX69e9kk.fVbDXTI0TN+MDbC0g9z8LbxlaFW+PYeaKc2dxazK7nM66E.4kv1K.t0mZT6LUuX3.liHNuH.EVcgB3hxpUAP0J3hAvGHFk+G.fH1ME9VXjzVjjmEOCTNoq91LtjBTeNAcqf3iAvU8p8eVR1Ent54O5E4Wt53sCD9DjQf6xUKeLVob.8.F9E3RpbQC.zSrJWDVfqPqvyyOw4qiUhXzjM8Y+DrwXlDLx9YIbQQK9QzfClTx0F9n.38Gqqgf1opfucrhuo4yR.PKtBkvTf3taVWeJrYPciymDfraOAfGA6hr4+BCRXuvyabpkgGdoVIUe7RdLqTj1I.xNkzaKKVE.8Mbx4RnzPWd1uXT7aL0346F.z.kS5p2Mm79qUQeGOzMQf2Ebr+W+R5lKWP2P2mSRvm+6sB5diIqjPe7fW51RSBvwlYGowppdZnDvpHwqZhhNghqXlt7seNjnKwvOgDTNo+HPhdXDpPB4x9SPB5wAATzRTHgt7rXi.9YVNdeh5Jiwwp4Eveu7xuQad0kYWP2RESLR5rT7OSRMmY4JYQBdtj5ut2gwGNq8ikmR4jN6YnjymKS+Mj3hal2KB5.Nve4oefzu8RgcTMTp4vdIiW0RPhM6Jh2cVob.GnbR68Nbx61C8M.Y7FYmRS5qf+f7XhpNkxIc18vIqumgutanVE8O.f+afbKymLkigyxMwlcR2z7ifw7iSobRmtR5lAYfStg7h3dK1Fx7ms84k3Hvp.XvWfKcbGgNlMdINIrFBF7oHgC4iNbubXkvgf+6GRY+u+3JfCIeTOJLmdsp3iM3fIkh30HXFbvjRcOTxECpsRxverZVfjtyB.2Urhuo0fk.fLfhkvCCh6o4dF14pD0sTshR5YyImdK+OXVNo3p2TxfsUUWCb5OgfmavaRSGSz9nmacpwRsN9+wnmtDN.D1KfhyBQIKBnOBaCs7G0kAJmzd0ifKxCcCQ9E.NrH+L4sc.XvASJ064jLTaUzUSn+Gj729DaQtzAf2NVFtjrRBjd8LP4j1WVU79.vEF5XKO1OE+NSLRZtXhRLPYrbQ8uK3A1qCJk8q7lt2HZGP8F7.KUSDMmMEIfFbvjRRX0wnA.5xAe9T8YwbvEwix.YmB5WdtSBCkEpv0e3xw6lTaM7Il8EHnC.x+rmps7wQzxbz0x+Edy7UAf.+KUD2EzECBVBDeLB849gmL9nspUCv.mUxp6tF90cE0mmB+WiwtObrQ6yC9oqrL7EZt2GYTijVChee.bvXcIHXevoqsU86zOmZUw6VTa0EoN9+Kx30b31h70ng6YNYbgxqak.eJRt1vDUtbmzkWnMjC5G.ItZ0vPR5xAC+4RlNr8hkZdGosPyWEc.gv+7EGlBtn03SaX7kPmjHP+c1KP.6yWO6OVRma4nShHj.In8USY+lH4I+rXNH9+WLuFDXPQcYuwgCeUXDJCNXRodGN4i5ntwv8bqWMxCOtuB.2kUkp4eVB.xHJ0FtO4w1Z12GDrD.Fhds0pUzecqTSvp6MlzQOCmbI0ZS+kzqsRfsD2yH0h1Naygu0OXjzns.1bOhcBebegOBrkZUz0NP4jnzP8NQ06vW6GEPe5nu3eo8Sw+j8UH6+BjuXcuwjUJutERtgf+6Bj8Km98x5GEf9FFCJoaB.u4XTwTzyOWdY2+A.jGcPf0D9.iIYkreB.VVAzo73zBcbEvtJ.DmQCaCj7nCfHb9+8XxkUH6+8mcsqzJzgcCoHNsGnC.WTQnqJdWiieCTNoqeXW32TTowbm+AVnGUQ9EsFT8RCsBKNxrHLwHoGt6Ml7wQIc9Q8b+tnPGI5B.mmj9t8N70MNHuU4v10yhoZbkMbhafyBqpdAzub5cHoKY9xhlfrwbGrnHbd085xFnbxMjmd42FohkvnUqfoIPDe.HcB5iUspJNP4jjVh+YU4jhcWAmFotZI7dIhS29+4HoJf3upsRH20mJbk7uKPWzN1D.b8rM806cSIen8r8zL1XSLw02vXPA8+ff8in76m9aepw2ZdalRuBQbZQ3iqGoxaH6uC295nC5B+uY6Dlj4gJjn.5zwHz.Zc3I4Qx9e9..POdbOvSPDycnmc.heqdFN4eoZI7UaM1rlDWOaFanVUcUNg2c72LK4IvWXOikd6w85XZUXU.PFxL6Hc+dGSgWs.+3zBHKBxsHouH75uvsLc0cObx6rugSdywoOAj3N0MmzS2mSxV5YH7Qq1ltkElU2+eFyyD8IDxhR3CWc9yUq43vByh3+qLjA..YfSRDEDU1n2+DVXb589qUUWyobVIQX1Lu308FS5nmZ3cQpOGEt3XMp+dwHwix54qcosQhNrETPWyot4jVyeK5Uw.kSZumgvOqG5KFscXRZRP2MDkX2D4Kf0rPUwETh7o+A.Y+4usPeGsQo4ITXI+WKrrbvBbcXkJBS..H73U7Y+Jj..3HkvSRhcEsd.zKF0VKVEerAZxO6efxIc06v3cAnuB.eeMhJYUBObwR72K1WGSqCqB.xX7d7m6HdK.381ruWdwHYI.rA.8lcT62Kr6m4jvi084jrCmG6x6vSLSQL8wytJNP4jtpUCqm0wZE0F8.qy4wZkCmVLd4qXfjcAoqtugRd3oFOc6M66mrnBj+EdfOUruNDbEvqe81ZSqZfyJ4pl3ASa3kCWumcxFfSePIbwDb0wYGYeoDTEmme5odfzL+3ip4gcHo2WcpJcWNYqyLRZDKc0SbqXSIKuZE79gSWFAFLFWCIcXR7UqTr4OFVCNu9oCe4lo4fmSkGp.m5NrgPuKSR5vT9ImXj+ux7IHwIrFv.+NLR0.3dlYG4fDHAfevHoGruMmLlG5cRD99RxK17SAFcU0JfA5cSI2XCuRtJmTruifynVE8qIh2IAaPIhP6SfVEptDik.fLlmdLr+dFh+wjZC.b8M66mWI5vKLWjGxI8tfvrNgC0aUbHM708XRXZTfS379JDtGi7ExjuuN5GN+JAbsCn2D.VW0pZ0DX4hnS.zE.KBhFwZhBKx98P2T2mSxGbl6OMWc9paD9QmE67Y5ROVC468N1Ikt3pEU+8MbRRiZ5MLP4jtpTEeTI8q.f0E6R9+EiBeoBKC+UMpqWiFg6wTi353XWP5RXEUp6Ml7IaUmjBcuwjU5JnaVDWDm+2UiTEApw8x80aMJq1vhTCF5mDIg8QhV5DGsn40.vE3mTSrevB4hOejzFY3OuhyJfoySiu05D2kS3ShHm..fERBfS+pvog5d3jekYFK8wh80DX9J9iUvukb5CIfdZXat07SWr+PTwF6eK0j4VCkYd8NTxG.Ncywn75Lwj7.3Np53mXeaKMyOlmZz5dnjeSG0M2Xati5PB3a477yUXY3wCaVxSb8MD5pNwpfvE3ntlFdO9X9W.3NbjW1SMZ5zMzqcCT2aLoCVR+uZDGkhmiftG44UdxygGcW6JsRi55dTUNoX20PONOdm.5SF8lJEzSHvKelQSykubYuCecSD5OCkz1D3GoQsviXpmgut+IRFzJKQPaGfW5zil9HgLtMC8t4q6uCfmeHioj1Ic7R2y8mNdHiayVuaN42F.M1iQjzAAvW1K9mTaY3wCcRL6tbxJKVEqwC8KHgKoQeLVETE5wWyWkW0L6n0tZ0LgmUA.YTmzb3aN6IgeRB8oZQ5z8lEE5fWmWavZJfGOpWDeaWc7AAvo23tprCB7AD04UqB918LbxeasBXW6q.l73sLcOkxIctrJXMh3z8RkcDmOH5Od6B6Qi7B3Q.3Mk267uyrizC06lutsAff9B2uVHv4Am9Sl8j3sdpaN41ZZIXobRwU+rXctp3bgzuj.FJ5IBQpFAukoGKet3+AJmzUspQnojRr2B9r+L3dvASJMKUvm..PX+EX1+ymErgHDyCHhCDg31T4I9ZNuthFZBxI6D.+WHzauTE7s5dyIe2h.O57Oq73oBKRbCTFK2WEml7Xc9J5sUm37HXeMiFWMAtOO4MaK9eoIagiYT6ZWoUFnbxMWqpeP.9Na12OliAN1oftjpUv+J.9+sYe6jk7FJfoq342fRquQtSt..yuSe5iAn2ca0wi1Sc7ntgRdPU.6tXQ7XuVIyougRVAH5Q.qWDChp5mvCrNBLHIWdi7+Y7xLIH25zihwySkL5Qk3eAXiKA..zQfM.pazC715c3juRwZXaMp9JQ2kSVIqfgXUUFEvP.3L.YGMhqMH9V9ifuPC4Z0DT+HXcguMJKOE1+Tim8m..ysbzeTZPh.620V1eAtCbVIqtFPvqfSRr2msR9KYtyb+oS1yvW2Wi.+lM5qMIWK.9TNn2qG3Q6cy3wfO4ertGOT82.l70px.FnbRWUNBVKH5mPmU0pXcDXsfXcb9DLzjn84.u58jCpzHywGKA.YXSLR5r8Mbx0JnNACaYjYhqEZ1Lom5lS19SMZ5C0ruexJlXjzC2ylStK.7d.vY13uCni.qFDqlRmmnlEBGrZULWua95pIgG9k8eg1IwZ8RcBhNfGKG.KmDk.az61+qFdscMKtyoWJr3e.3AtOBsSBFicd60.WN.tPIsopEwj8N70cevwuydt+z6MzWot2XxJcEw4Jpxnp9YAvJDvJYna1XuVjtaOXZqZ+OHDDPL5EIGFfSjGRFmTD1caoC4H+9KLUXxzpVDqM3a567GmqoOv1Qtqea..Tf7q6kdWw9nKczw0.f0Hn2JolyUDy5phC0ylu18SwIEvKoh.IwYTspJx46eUc.ftd995SS8.Xq8IxO9Sc+16dtTlk.fLtoFK8QO0Mmb00gJQgMaGGfLDxUVG5Oo6gR9fyLNdj7vK80HL8noOR2mSxWgRqagEV0bL+eqsR.rR97+agy3U++nK7+SKvR9A.DzAf30N8Xoes8zruYZfN4mA69Gdx7OFdcyM7JHA.zwUg420uyDB+V8N70cH.7vBXR.rOB98NVhm2gRNoAjPWb9Ejtdv4mW174dCyF4KZJUSDiVf7p2yn47cVh5mIBM.v4DPt3yMUPmEC+W9NDl+uUx7XLRfMwg7j+q402kv0Fdz5U3s.os1L986mCAKAhUx4e9OvBck5Wsusym++SqAIsa.9IldTbGM66ESyksXwbfmZzzGpmgStZQciD3ba12OliIqyQcUuwylW0S+.3Ia12LYEkpfuUsh5+.Hunl88RVijllf2TkR3q1ruWZz10tRqzyVRtKR7K.ne1FeOW3kY9xweKGuuenS..L7ShtiShXTHd0O0X4+cVRT8GkE3p7wBbgGqOBI77PLu74C0OcvSfDvbP3wCZPagLwHoGtmsj7sgG+b.5s1z+86LG8j.7S2VIb240jDYV7r+3ImX5wRGs.3mTP1L7NCYgyH4aunSe79FJI5i3l7hIdvz8R4tA.kWZFTMDB5.D7lJVBe073XYawX5sgmPheQfbxnVqEgf1YAvO4zikNZy9dI1F3rRVcTl.ODGrzxPle5vbJkS5DNr1HD5CRhmHBwswSXcgNjT4nDHcTL81vSPvaY9QcnYwS6SfehpkvWMObDZLm3rD.ji7Til9PNwOtkDfLFxNAwGtdAbwM6akrjoFGOD77FETye7pkAHoCCxKqRI7kVZO8IR8pB91P3K2ruSxKDzNche7kJ8yj5EP+DH3MvKJr27veaV3YQ+X9y7bXQL6S0V1eB.z84jz+ycTcBrCcxOS1OARu1R8mzr3tA3uWy9NI6X9y7+zihaeoZh+MuRVB.xYlZrz6y44+IA8sjjkkuS.B5.R5OUP+9xqH+ilb4zqatmgRNefD6uKWTR8EWF9xD3O.P41lM1ILoZdocBw2wz2e5et8B.yOR.2yXW+UAnayRfzwOAUAR2UAvOzTikdeM66mFE4v5fBeB.DeEMQzLoBsg0iHjfDH7vGuid0VINf0BE9DjHfGcW6JM2+6Y6ZWoUldzzeWI8Ere+9nSRUDz8Hwewoue7srx927hYKzHGZpwSehZNdU.3OzVXzwNIcXI8P.7ZZqD+PsUk2Db3OM1ITgjsKnad0a9UuQxYdklXjzY8j2h.rDd8pXgOStCmiW5zii6oYe+zpopieRHb612cNNHUCBe0pE3ksTYm+eNBXsJJKvk+CAOlMARXMLFKvk7eJzwrYPdrVwH78Gx+4fGyVX0Jvaz986ih4mHD+4rNuh4OVV1h+MuTVB.xo121R2cakXJD2pflpYe+jULeCRC++.xORWyhuzDijd3Idvz8BG+zDH5ujqi3M6jt5UskjXb9Iykl49SmDNdCf31a12KsRVXmQ9cqVfWwdt+zwsW.3UZeaCOo.uF.bG1NIs3IoYAwuupvqdeaKMmWxwuLkSJBndIQ3GqhLeLA.fzohHbD.XtoA2oeBEiJHQXI0w+z986WcO2uOWf7p1yCjtj56DlEOKA.4XSLR5r9J3O.fW976nsrE.bTHnJR5up.4uPkR7lmdzzG4EWJcSuszGuF3kE8LMO+nk6s2lWW1.kS5JpWqbjo2V5iW.7S.os0ruWZIHMoC7xqVh23RtEncLI0OyX3wqUfWIgMVjVLDzSPxO9yViaclcjtjqQJ9FqfUPfUEiNPdask8S.v.kS5h.8DiQRruBFOzwrQavASJQgU6HCdBjZqvRqD.7R98ag6sYe2zZPOFb7Re1ZbqO0noViRzbT0hL7fLw1.mUxpqUTWoHt3X8xKYQRZuDX6.7ybROC11q24mqmgStPP8UHXT6X+Bph77ZmYb76X6b6hW2aLYktRZqf3hA3xa12OMZBZuP31ch2zTimlO5V1MP8N70cK.38AhUX+F4K07SPBbadxzYt+zbcmF+0ReCkrIQcqf7zCYbEziN8nW++9PFylgtGNY8D5OljaInAVZx8L10OPPiYSP2mSR+zqakjWPPCrzg1yXW+ORPiYFR2aLoCtL8UnvE.xve7JZoIODN..9pEqwadhGLcuM66HSqO6EbVhXhGLcu6Yrq+SBO+DR3NkWY9NM7wO4AzSJo+JAdYUJwek8LV58rXZdNUKg6kfe5X+4GAKQm1ZuaFg8kDx4lYGo6uXMlBwab9Yd6RCy22J72KDuhpk3UXK9+3SkR7pE3UIfGZgyP4Rdu3dhRw13kuTdw+..0cnKPD7pyhB6JzwrYn.vpXb5v8Y9pi..nnvpHQ3GgjHez.IOdMyNROjZiWlH9rdooVpTwqxqYkvcBxqXOic8eRaw+lEKKA.KwL833aUr.+3jLQdsjpwMMO8jB3yROuLUgW5LikdaGKcE8evHoGzA7kAvs2PNyY9vOqfy6l3AS2akR3y5Auz7+QBPdHsKQlfBtKc5wR+lVW9+32OXjzC10yfuVAvKG.K46vzRZ2u7dhRy9dpYS.qBJBKfKmz..8.KWH7IHADaO3wrIPdrR3CeBRDvR5DyA.LyHo6us13M4.uBfr+wE40i75gHYRwB7iumQweZy99wjsD7ynkoUWpexsgcOP4j+HUm2d8Z38ApKEj82ruyhJoGGD+4dwu9QpioOv1wAOdKs9mZzzo6d3jafPa..aHv2o.3ENB.ssLaVke7XgEAeW8rkjmj00kBhObd6HAHoCCheeG3WuTa3IrEmEFKTIPOTeCkra.7cE00Rvn724sple79gaWh2P0kgG+GLR5AsCSJ.PhqfvJ.Y3mw8ExG6vcz3yGc3d4vJABeB.n3CF5XlEMwHoyhxI21a7v7gJTPo.38QD99sPSkzjP7VKVjeSV.SaO62b7v5A.Fz8FSVIKgKhP+ZfXcX9WvICmbH4kvbDXeh3dI42veXr8Y1QZPGIhcObx5cTi.vvsaPR0Dvt.30L8X3Nry+eXz6YmrA4zURfKHKe9tkzrD3IE4eMqguzd1dpMgOhrt2XRGtR92u.+PPXczwbYy4TRGlDOI.tGA9GO8nXm1u+7xk35YX7dIzs.x.sHN4gvn077+7S+.oOYXhYySOCmbg.5VIYOgIhxCfwqUm+J4gOe5a3jyUT2J.Wenhoflx63O+d2VZt3XjDNItdFFCQnqR.ahjqtYeGc7Y92oE.OFE+y7UwWaoXCX0DVVB.LOuAJmzU0J3B.zOGINCHrtrUyTQyIOdD5vSHwcHf6YlwRi5tpzyvIWBotwPkD.IcmNvabpRXTLRpcFjCnAJmzd8if2km5sQhs.f9yDIBPpFHlB.Oh77usVQbWVm8uwa9FoJduB5mGDmQ9nYpJu.lEB6DDiy57aXiMpWagsItIu.1k2yqbuii6JOjvktGJ4LH0sRxy7DOZxCfGWhW4zkvclGdl3.kS5pZU8YHv6OD+9gjlFf2fpfubn2ji7hSobRmEqfy2Q8A8BmoinmLwucKUSDOIAdHI922VI7mNwHoKg6eWlPxR.f4U3TJmzY6Uw5kGqy6zOOENSArVR1dy9d6ka9G9gcRhGRh+SB3QpUBS0nNGzqXSIKu8h5poG+Wf63OYIRpBAtSO3UE6jVrT2.kS5pRUrIGzaQ.WDDVOivHY5D0Bm+7sAvQDv3dgG4oGKceM66qk1Rb8tIziJhyfPuEHbQfLa1mNl+XQc2R7uGEvCOcAr67vBrhuDWuaFWrfRH3ochEKc6xyOSaKCaKuTFuCTNo8pGAWDb5ZNwO5LZTIdisUB2cd4yG.fUOTxE3nRH4PmHwQPamd94JtL7ssEF956MNbxpJ.rIRUFBucPNXy9d5UijlE.iBxuKEdDeIryYFAGHOjfPSqCKA.lWScWNYkrNVAE5Ad8yHfykDmQS67TKcHAr8EFceOX85XWsUDyV6HX1lU1u6cSI8oB5yPh24wUVkkpAg+nZh2bdnDGyJ5diIcTnMzibXcR5WDDWHQysDAW3b8uc.9emDihpXJecb.amcZ8rvtJ0WAgyPT+GDwEzr+9yqGIsa.bOD7u0C7nkJg8NwHXN6EKO1z8FS5.kP+DXET3z.wwbxwovjzgc9Tih8l297evASJM2xQ+p.Vo.5m9i8lBHElrpvi8zsioxaIlZvASJ8+5GE8TrHV8w6mOvg8WqFd3er+ML8hYBFYdNItSoL5ns5nGWMblxo2ADN+vcjdN9HoCCf6Ej+cjXTmvj+nyh8a+yVSrXI.vbL64e3tCCIuNK.zOIViDZGNTDBc..PhNgVzSZhCKfJfvSgCIhJDnhD1EH+mkvN8.OwSOV5iFu+W1wutOmj9cd80ww7rOVOo.uotlEeI6G5a9N0Mmbldf2JjNaQrFJzE.5.Dc.f1OwKaP4AvAAvgAvgDvAgGSSGGgd7v0qh6yVre1UOaN4zov4JnxRXsN2Be+Anc.zYrK6zEdIxCCfCAhCAgCPfcIxG..iO8noORLu9Fiwj0rvwCbCdGt..ML.5iBKGg7Y+yeT9NDdgm8OGDdBB9f.X69JXb6Y+lFIKA.lf34ynMvxkC8C.HGVC8KtcFgD6UByJhJzgmrdcL6SOF1eVZmQ5a3jy0S8msX2EPAsSHdMSOV5sG66MywtANqjUWuHVmH5GB8AndEPWjnKITDDqfuNSREIbHRLK.p483.D3fD7eUD60Ir6B0wj1b6MeZfxIcU+HXcdh0RgUKnebRrbrvLRWBqjDmPG8jm66WB3vPXVRrW44dnCSRgIKTxlNDFiwbr3k7ref9gT2O2y9AP6RnKxW6M254+sYgJDXNPre34dd9m8uL731w1vzLYI.vXBndGN42PPojuFcJ74arK2GEug8LV58z.u8Lmf5diIcTbYnqZDEovJJ75j.fZBGrHwbUDp8zkvAxakxp4XyfClT5eqq4S.fuNVoqvIVB.dtueION7TiiYyRIL0XLlrhm6Y+zg1q4wxWrO6u1QPkS9YwbVEdZZ0XI.vXBn9FJYEhJE.+5upiRw4GyeeaGXxTkviYKHzXLFiwXLFSiRgl8MfwjmL2Ti7rc0+48O3A5F.qmjO+eiIulEDe11JwO9SsszowDiX6VmwXLFiwXLlFFqB.LlHn2yNYCvoO2y0T.mu6ayO+zik96zru2LFiwXLFiwrzTT6HwFyRU64AR2Ib7ZEzdkzCSGux1JgOay99xXLFiwXLFyRWVE.XLQShq2yAuS.L8I8CwCaMAFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLFiwXLg1++.nfHbBq9twvA....PRE4DQtJDXBB" ],
					"embed" : 1,
					"forceaspect" : 1,
					"id" : "obj-76",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 960.596559822559357, 656.834128379821777, 100.0, 31.25 ],
					"pic" : "/Users/nao/Downloads/qosmo_logo_logo-navy-1024x320.png",
					"presentation" : 1,
					"presentation_rect" : [ 674.676923012733482, 452.5, 187.399999999999977, 58.562499999999993 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.29776406288147, 1020.247587591409683, 55.0, 22.0 ],
					"text" : "alpha $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1449.29776406288147, 909.0, 55.0, 22.0 ],
					"text" : "alpha $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1253.576923012733459, 789.88702517747879, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 562.25, 455.0, 207.0, 55.0 ],
					"text" : "try panning the input and observe the ch1 and ch2 output below"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Ableton Sans Bold",
					"fontsize" : 36.0,
					"id" : "obj-183",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 206.443297207355499, 101.423076570034027, 155.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 566.997206807136536, 36.262683254879903, 168.0, 50.0 ],
					"text" : "Playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1019.576918482780457, 172.014140009880066, 80.0, 22.0 ],
					"text" : "loadmess 0.2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"id" : "obj-175",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1256.842687368392944, 245.653846442699432, 76.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 355.049359238850911, 26.910255432128906, 71.467601991402717, 21.0 ],
					"text" : "Generated!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1205.384615063667297, 216.153847992420197, 42.192307949066162, 22.0 ],
					"text" : "t 1 b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 16.0,
					"id" : "obj-158",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 698.75, 113.920169770717621, 194.0, 26.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 38.778400838375092, 77.756408989429474, 99.0, 45.0 ],
					"text" : "Random Generation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 992.076923012733459, 719.076926350593567, 158.0, 20.0 ],
					"text" : "Simply we have two buffers "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1203.397296369075775, 509.910255432128906, 58.0, 20.0 ],
					"text" : "Audio file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1453.585531175136566, 321.436175227165222, 77.0, 20.0 ],
					"text" : "Spectrogram"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1188.576923012733459, 75.0, 158.0, 20.0 ],
					"text" : "OSC message from Python "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1726.0, 938.747587591409683, 150.0, 114.0 ],
					"text" : "Each channel is cropped and displayed within a single fpic object. The alpha value of each fpic object is set corresponding to the playback volume of the channel. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1726.0, 766.689901173114777, 150.0, 47.0 ],
					"text" : "Spectrograms are saved as a single image with 4 rows. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.076923012733459, 232.0, 102.0, 20.0 ],
					"text" : "Playback / Mixing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.076923012733459, 72.860294818878174, 87.0, 22.0 ],
					"text" : "loadmess 126."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1726.0, 1123.321991145610809, 150.0, 47.0 ],
					"text" : "dumb way to create a morphing animation = alpha blending ;-)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 16.0,
					"id" : "obj-58",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 862.596559822559357, 310.436175227165222, 198.0, 45.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 38.778400838375092, 187.614977835205195, 99.0, 64.0 ],
					"text" : "Morphing between 4 presets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 819.929893155892728, 570.959125459194183, 87.0, 22.0 ],
					"text" : "speedlim 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 819.929893155892728, 531.923074901103973, 153.0, 22.0 ],
					"text" : "pack /generate_xy 0. 0. 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 968.030922174453735, 483.82554966211319, 39.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 864.596559822559357, 483.82554966211319, 39.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "pictslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 862.596559822559357, 352.389372885227203, 118.9803586602211, 123.093604683876038 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.67496112655374, 132.445854357072221, 359.260920716738156, 378.616645642927779 ],
					"rightvalue" : 100,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.576918482780457, 143.999998450279236, 63.0, 63.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.67496112655374, 73.756408989429474, 54.103439711821352, 54.103439711821352 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.576918482780457, 231.653846442699432, 155.0, 22.0 ],
					"text" : "pack /generate_random 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1228.576923012733459, 245.653846442699432, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 431.512802352630274, 26.910255432128906, 43.423079490661621, 43.423079490661621 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "spectroscope~",
					"monochrome" : 0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 194.076923012733459, 896.967446982860565, 123.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 739.576923012733459, 254.922272731662474, 166.0, 60.0 ],
					"range" : [ 0.0, 1.0 ],
					"scroll" : 1,
					"sono" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 102.0, 906.972619354724884, 73.0, 65.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 579.997206807136536, 254.922272731662474, 155.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Ableton Sans Bold",
					"fontsize" : 36.0,
					"id" : "obj-138",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 692.076918482780457, 39.920169770717621, 428.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.778400838375092, 15.411252848904837, 192.0, 50.0 ],
					"text" : "Generation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1392.030922174453735, 450.892727017402649, 71.0, 22.0 ],
					"text" : "prepend pic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 1391.030922174453735, 321.436175227165222, 55.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1582.783488750457764, 1062.0, 55.0, 22.0 ],
					"text" : "alpha $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1521.958749890327454, 1062.0, 55.0, 22.0 ],
					"text" : "alpha $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1454.948444366455078, 1062.0, 55.0, 22.0 ],
					"text" : "alpha $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 1380.030922174453735, 1062.0, 326.321971654891968, 84.0 ],
					"pic" : "/tmp/img_5072.png",
					"presentation" : 1,
					"presentation_rect" : [ 579.997206807136536, 168.922272731662474, 326.321971654891968, 84.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 3.475360512733459, 874.508669912815094, 35.0, 93.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 44.475360512733459, 979.472619354724884, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "list", "list" ],
					"patching_rect" : [ 69.475360512733459, 758.391749978065491, 71.0, 22.0 ],
					"text" : "omx.comp~"
				}

			}
, 			{
				"box" : 				{
					"alpha" : 0.0,
					"id" : "obj-57",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 1447.12250292301178, 948.247587591409683, 326.321971654891968, 84.0 ],
					"pic" : "/tmp/img_6917.png",
					"presentation" : 1,
					"presentation_rect" : [ 579.997206807136536, 168.922272731662474, 326.321971654891968, 84.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1188.576923012733459, 287.730769455432892, 144.265764355659485, 22.0 ],
					"text" : "unpack s s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1183.576923012733459, 717.076926350593567, 95.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 1183.576923012733459, 677.03605055809021, 31.0, 22.0 ],
					"text" : "t 0 s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"int" : 1,
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1243.884615063667297, 568.997091114521027, 85.307692050933838, 65.923078656196594 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 1233.209805190563202, 520.423075735569, 55.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1188.576923012733459, 137.730769455432892, 97.0, 22.0 ],
					"text" : "route /generated"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1188.576923012733459, 101.423076570034027, 104.0, 22.0 ],
					"text" : "udpreceive 10018"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 780.576918482780457, 661.459128379821777, 142.0, 22.0 ],
					"text" : "udpsend localhost 10015"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 1183.576923012733459, 757.576926350593567, 89.0, 22.0 ],
					"text" : "buffer~ loop1 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 57.975360512733459, 367.730769455432892, 82.5, 22.0 ],
					"text" : "play~ loop1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 48.076923012733459, 133.014140009880066, 20.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "toggle",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "toggle",
							"parameter_type" : 3
						}

					}
,
					"varname" : "toggle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.076923012733459, 144.014140009880066, 63.0, 22.0 ],
					"text" : "tempo $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 70.076923012733459, 175.189401149749756, 103.0, 22.0 ],
					"text" : "transport"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-187",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.475360512733459, 26.920169770717621, 597.0, 195.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.129892504918416, 9.756408989429474, 494.513216733932495, 526.331727484466001 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-189",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 541.076918482780457, 1038.920169770717621, 1254.0, 1182.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 539.063706278800964, 9.756408989429474, 385.513216733932495, 345.83800174991643 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-132", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"midpoints" : [ 1198.076923012733459, 187.442308723926544, 1214.884615063667297, 187.442308723926544 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"order" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 2 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"order" : 1,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"order" : 2,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"order" : 0,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"order" : 1,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-24" : [ "toggle", "toggle", 0 ],
			"obj-54" : [ "live.gain~[1]", "live.gain~[1]", 0 ],
			"obj-69" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "img_5072.png",
				"bootpath" : "/private/tmp",
				"patcherrelativepath" : "../../../../../private/tmp",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "img_6917.png",
				"bootpath" : "/private/tmp",
				"patcherrelativepath" : "../../../../../private/tmp",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "qosmo_logo_logo-navy-1024x320.png",
				"bootpath" : "~/Downloads",
				"patcherrelativepath" : "../../../Downloads",
				"type" : "PNG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
