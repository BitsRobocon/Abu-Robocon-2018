<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ArduinoMegaOutline">
<packages>
<package name="MEGAOUTLINE">
<description>Empty box</description>
<pad name="AREF" x="-26.67" y="24.13" drill="0.8"/>
<pad name="GND@1" x="-24.13" y="24.13" drill="0.8"/>
<pad name="13" x="-21.59" y="24.13" drill="0.8"/>
<pad name="12" x="-19.05" y="24.13" drill="0.8"/>
<pad name="11" x="-16.51" y="24.13" drill="0.8"/>
<pad name="10" x="-13.97" y="24.13" drill="0.8"/>
<pad name="9" x="-11.43" y="24.13" drill="0.8"/>
<pad name="8" x="-8.89" y="24.13" drill="0.8"/>
<pad name="7" x="-5.08" y="24.13" drill="0.8"/>
<pad name="6" x="-2.54" y="24.13" drill="0.8"/>
<pad name="5" x="0" y="24.13" drill="0.8"/>
<pad name="4" x="2.54" y="24.13" drill="0.8"/>
<pad name="3" x="5.08" y="24.13" drill="0.8"/>
<pad name="2" x="7.62" y="24.13" drill="0.8"/>
<pad name="1" x="10.16" y="24.13" drill="0.8"/>
<pad name="0" x="12.7" y="24.13" drill="0.8"/>
<pad name="14" x="17.78" y="24.13" drill="0.8"/>
<pad name="15" x="20.32" y="24.13" drill="0.8"/>
<pad name="16" x="22.86" y="24.13" drill="0.8"/>
<pad name="17" x="25.4" y="24.13" drill="0.8"/>
<pad name="18" x="27.94" y="24.13" drill="0.8"/>
<pad name="19" x="30.48" y="24.13" drill="0.8"/>
<pad name="20" x="33.02" y="24.13" drill="0.8"/>
<pad name="21" x="35.56" y="24.13" drill="0.8"/>
<pad name="GND@4" x="43.18" y="24.13" drill="0.8"/>
<pad name="22" x="43.18" y="21.59" drill="0.8"/>
<pad name="24" x="43.18" y="19.05" drill="0.8"/>
<pad name="26" x="43.18" y="16.51" drill="0.8"/>
<pad name="28" x="43.18" y="13.97" drill="0.8"/>
<pad name="30" x="43.18" y="11.43" drill="0.8"/>
<pad name="32" x="43.18" y="8.89" drill="0.8"/>
<pad name="34" x="43.18" y="6.35" drill="0.8"/>
<pad name="36" x="43.18" y="3.81" drill="0.8"/>
<pad name="38" x="43.18" y="1.27" drill="0.8"/>
<pad name="40" x="43.18" y="-1.27" drill="0.8"/>
<pad name="42" x="43.18" y="-3.81" drill="0.8"/>
<pad name="44" x="43.18" y="-6.35" drill="0.8"/>
<pad name="46" x="43.18" y="-8.89" drill="0.8"/>
<pad name="48" x="43.18" y="-11.43" drill="0.8"/>
<pad name="50" x="43.18" y="-13.97" drill="0.8"/>
<pad name="52" x="43.18" y="-16.51" drill="0.8"/>
<pad name="GND@6" x="43.18" y="-19.05" drill="0.8"/>
<pad name="GND@7" x="45.72" y="-19.05" drill="0.8"/>
<pad name="53" x="45.72" y="-16.51" drill="0.8"/>
<pad name="51" x="45.72" y="-13.97" drill="0.8"/>
<pad name="49" x="45.72" y="-11.43" drill="0.8"/>
<pad name="47" x="45.72" y="-8.89" drill="0.8"/>
<pad name="45" x="45.72" y="-6.35" drill="0.8"/>
<pad name="43" x="45.72" y="-3.81" drill="0.8"/>
<pad name="41" x="45.72" y="-1.27" drill="0.8"/>
<pad name="39" x="45.72" y="1.27" drill="0.8"/>
<pad name="37" x="45.72" y="3.81" drill="0.8"/>
<pad name="35" x="45.72" y="6.35" drill="0.8"/>
<pad name="33" x="45.72" y="8.89" drill="0.8"/>
<pad name="31" x="45.72" y="11.43" drill="0.8"/>
<pad name="29" x="45.72" y="13.97" drill="0.8"/>
<pad name="27" x="45.72" y="16.51" drill="0.8"/>
<pad name="25" x="45.72" y="19.05" drill="0.8"/>
<pad name="23" x="45.72" y="21.59" drill="0.8"/>
<pad name="GND@5" x="45.72" y="24.13" drill="0.8"/>
<pad name="A15" x="40.64" y="-24.13" drill="0.8"/>
<pad name="A14" x="38.1" y="-24.13" drill="0.8"/>
<pad name="A13" x="35.56" y="-24.13" drill="0.8"/>
<pad name="A12" x="33.02" y="-24.13" drill="0.8"/>
<pad name="A11" x="30.48" y="-24.13" drill="0.8"/>
<pad name="A10" x="27.94" y="-24.13" drill="0.8"/>
<pad name="A9" x="25.4" y="-24.13" drill="0.8"/>
<pad name="A8" x="22.86" y="-24.13" drill="0.8"/>
<pad name="A7" x="17.78" y="-24.13" drill="0.8"/>
<pad name="A6" x="15.24" y="-24.13" drill="0.8"/>
<pad name="A5" x="12.7" y="-24.13" drill="0.8"/>
<pad name="A4" x="10.16" y="-24.13" drill="0.8"/>
<pad name="A3" x="7.62" y="-24.13" drill="0.8"/>
<pad name="A2" x="5.08" y="-24.13" drill="0.8"/>
<pad name="A1" x="2.54" y="-24.13" drill="0.8"/>
<pad name="A0" x="0" y="-24.13" drill="0.8"/>
<pad name="VIN" x="-5.08" y="-24.13" drill="0.8"/>
<pad name="GND@3" x="-7.62" y="-24.13" drill="0.8"/>
<pad name="GND@2" x="-10.16" y="-24.13" drill="0.8"/>
<pad name="5V" x="-12.7" y="-24.13" drill="0.8"/>
<pad name="3V3" x="-15.24" y="-24.13" drill="0.8"/>
<pad name="RESET" x="-17.78" y="-24.13" drill="0.8"/>
<wire x1="-50.8" y1="26.67" x2="50.8" y2="26.67" width="0.254" layer="21"/>
<wire x1="50.8" y1="26.67" x2="50.8" y2="-26.67" width="0.254" layer="21"/>
<wire x1="50.8" y1="-26.67" x2="-50.8" y2="-26.67" width="0.254" layer="21"/>
<wire x1="-50.8" y1="-26.67" x2="-50.8" y2="26.67" width="0.254" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MEGA_SYMBOL">
<description>Symbol as Mega card</description>
<wire x1="50.8" y1="-26.67" x2="-50.8" y2="-26.67" width="0.254" layer="94"/>
<wire x1="-50.8" y1="-26.67" x2="-50.8" y2="26.67" width="0.254" layer="94"/>
<wire x1="-50.8" y1="26.67" x2="50.8" y2="26.67" width="0.254" layer="94"/>
<wire x1="50.8" y1="26.67" x2="50.8" y2="-26.67" width="0.254" layer="94"/>
<pin name="AREF" x="-26.67" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="GND@1" x="-24.13" y="24.13" visible="pin" length="middle" rot="R90"/>
<pin name="13" x="-21.59" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="12" x="-19.05" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="11" x="-16.51" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="10" x="-13.97" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="9" x="-11.43" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="8" x="-8.89" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="7" x="-5.08" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="6" x="-2.54" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="5" x="0" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="4" x="2.54" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="3" x="5.08" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="2" x="7.62" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="1" x="10.16" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="0" x="12.7" y="24.13" visible="pad" length="middle" rot="R90"/>
<text x="10.16" y="16.51" size="1.27" layer="94" rot="R90">Tx</text>
<text x="12.7" y="16.51" size="1.27" layer="94" rot="R90">Rx</text>
<pin name="14" x="17.78" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="15" x="20.32" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="16" x="22.86" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="17" x="25.4" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="18" x="27.94" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="19" x="30.48" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="20" x="33.02" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="21" x="35.56" y="24.13" visible="pad" length="middle" rot="R90"/>
<text x="17.78" y="15.24" size="1.27" layer="94" rot="R90">Tx3</text>
<text x="20.32" y="15.24" size="1.27" layer="94" rot="R90">Rx3</text>
<text x="22.86" y="15.24" size="1.27" layer="94" rot="R90">Tx2</text>
<text x="25.4" y="15.24" size="1.27" layer="94" rot="R90">Rx2</text>
<text x="27.94" y="15.24" size="1.27" layer="94" rot="R90">Tx1</text>
<text x="30.48" y="15.24" size="1.27" layer="94" rot="R90">Rx1</text>
<text x="33.02" y="15.24" size="1.27" layer="94" rot="R90">SDA</text>
<text x="35.56" y="15.24" size="1.27" layer="94" rot="R90">SCL</text>
<pin name="GND@4" x="43.18" y="24.13" visible="pin" length="middle" rot="R90"/>
<pin name="GND@5" x="45.72" y="24.13" visible="pin" length="middle" rot="R90"/>
<pin name="23" x="45.72" y="21.59" visible="pad" length="short"/>
<pin name="25" x="45.72" y="19.05" visible="pad" length="short"/>
<pin name="27" x="45.72" y="16.51" visible="pad" length="short"/>
<pin name="29" x="45.72" y="13.97" visible="pad" length="short"/>
<pin name="31" x="45.72" y="11.43" visible="pad" length="short"/>
<pin name="33" x="45.72" y="8.89" visible="pad" length="short"/>
<pin name="35" x="45.72" y="6.35" visible="pad" length="short"/>
<pin name="37" x="45.72" y="3.81" visible="pad" length="short"/>
<pin name="39" x="45.72" y="1.27" visible="pad" length="short"/>
<pin name="41" x="45.72" y="-1.27" visible="pad" length="short"/>
<pin name="43" x="45.72" y="-3.81" visible="pad" length="short"/>
<pin name="45" x="45.72" y="-6.35" visible="pad" length="short"/>
<pin name="47" x="45.72" y="-8.89" visible="pad" length="short"/>
<pin name="49" x="45.72" y="-11.43" visible="pad" length="short"/>
<pin name="51" x="45.72" y="-13.97" visible="pad" length="short"/>
<pin name="53" x="45.72" y="-16.51" visible="pad" length="short"/>
<pin name="GND@7" x="45.72" y="-19.05" visible="pin" length="short"/>
<pin name="22" x="43.18" y="21.59" visible="pad" length="short" rot="R180"/>
<pin name="24" x="43.18" y="19.05" visible="pad" length="short" rot="R180"/>
<pin name="26" x="43.18" y="16.51" visible="pad" length="short" rot="R180"/>
<pin name="28" x="43.18" y="13.97" visible="pad" length="short" rot="R180"/>
<pin name="30" x="43.18" y="11.43" visible="pad" length="short" rot="R180"/>
<pin name="32" x="43.18" y="8.89" visible="pad" length="short" rot="R180"/>
<pin name="34" x="43.18" y="6.35" visible="pad" length="short" rot="R180"/>
<pin name="36" x="43.18" y="3.81" visible="pad" length="short" rot="R180"/>
<pin name="38" x="43.18" y="1.27" visible="pad" length="short" rot="R180"/>
<pin name="40" x="43.18" y="-1.27" visible="pad" length="short" rot="R180"/>
<pin name="42" x="43.18" y="-3.81" visible="pad" length="short" rot="R180"/>
<pin name="44" x="43.18" y="-6.35" visible="pad" length="short" rot="R180"/>
<pin name="46" x="43.18" y="-8.89" visible="pad" length="short" rot="R180"/>
<pin name="48" x="43.18" y="-11.43" visible="pad" length="short" rot="R180"/>
<pin name="50" x="43.18" y="-13.97" visible="pad" length="short" rot="R180"/>
<pin name="52" x="43.18" y="-16.51" visible="pad" length="short" rot="R180"/>
<pin name="GND@6" x="43.18" y="-19.05" visible="pin" length="short" rot="R180"/>
<pin name="A15" x="40.64" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A14" x="38.1" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A13" x="35.56" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A12" x="33.02" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A11" x="30.48" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A10" x="27.94" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A9" x="25.4" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A8" x="22.86" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A7" x="17.78" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A6" x="15.24" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A5" x="12.7" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A4" x="10.16" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A3" x="7.62" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A2" x="5.08" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A1" x="2.54" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A0" x="0" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="VIN" x="-5.08" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="GND@3" x="-7.62" y="-24.13" visible="pin" length="middle" rot="R270"/>
<pin name="GND@2" x="-10.16" y="-24.13" visible="pin" length="middle" rot="R270"/>
<pin name="5V" x="-12.7" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="3V3" x="-15.24" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="RESET" x="-17.78" y="-24.13" visible="pad" length="middle" rot="R270"/>
<text x="12.7" y="-19.05" size="1.778" layer="94" font="vector">Analog in</text>
<text x="35.56" y="-5.08" size="1.778" layer="94" font="vector" rot="R90">Digital</text>
<text x="-19.05" y="15.24" size="1.778" layer="94" font="vector">PWM and digital</text>
<wire x1="-21.59" y1="20.32" x2="-21.59" y2="17.78" width="0.254" layer="94"/>
<wire x1="-20.32" y1="16.51" x2="-21.59" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="20.32" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="17.78" x2="3.81" y2="16.51" width="0.254" layer="94"/>
<text x="12.7" y="10.16" size="1.778" layer="94" font="vector">Communication</text>
<wire x1="10.16" y1="15.24" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="12.7" x2="11.43" y2="11.43" width="0.254" layer="94"/>
<wire x1="35.56" y1="13.97" x2="35.56" y2="12.7" width="0.254" layer="94"/>
<wire x1="35.56" y1="12.7" x2="33.02" y2="11.43" width="0.254" layer="94"/>
<text x="-21.59" y="-1.27" size="1.778" layer="94">Arduino mega
2560</text>
<wire x1="-53.34" y1="-13.97" x2="-39.37" y2="-13.97" width="0.254" layer="94"/>
<wire x1="-39.37" y1="-13.97" x2="-39.37" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-39.37" y1="-22.86" x2="-53.34" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-53.34" y1="-22.86" x2="-53.34" y2="-13.97" width="0.254" layer="94"/>
<wire x1="-55.88" y1="22.86" x2="-40.64" y2="22.86" width="0.254" layer="94"/>
<wire x1="-40.64" y1="22.86" x2="-40.64" y2="10.16" width="0.254" layer="94"/>
<wire x1="-40.64" y1="10.16" x2="-55.88" y2="10.16" width="0.254" layer="94"/>
<wire x1="-55.88" y1="10.16" x2="-55.88" y2="22.86" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MEGA_DEVICE">
<description>mega card as device</description>
<gates>
<gate name="G$1" symbol="MEGA_SYMBOL" x="0" y="15.24"/>
</gates>
<devices>
<device name="" package="MEGAOUTLINE">
<connects>
<connect gate="G$1" pin="0" pad="0"/>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="41" pad="41"/>
<connect gate="G$1" pin="42" pad="42"/>
<connect gate="G$1" pin="43" pad="43"/>
<connect gate="G$1" pin="44" pad="44"/>
<connect gate="G$1" pin="45" pad="45"/>
<connect gate="G$1" pin="46" pad="46"/>
<connect gate="G$1" pin="47" pad="47"/>
<connect gate="G$1" pin="48" pad="48"/>
<connect gate="G$1" pin="49" pad="49"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="50" pad="50"/>
<connect gate="G$1" pin="51" pad="51"/>
<connect gate="G$1" pin="52" pad="52"/>
<connect gate="G$1" pin="53" pad="53"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A11" pad="A11"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A15" pad="A15"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="A9" pad="A9"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="GND@4" pad="GND@4"/>
<connect gate="G$1" pin="GND@5" pad="GND@5"/>
<connect gate="G$1" pin="GND@6" pad="GND@6"/>
<connect gate="G$1" pin="GND@7" pad="GND@7"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-amp">
<description>&lt;b&gt;AMP Connectors&lt;/b&gt;&lt;p&gt;
RJ45 Jack connectors&lt;br&gt;
 Based on the previous libraris:
 &lt;ul&gt;
 &lt;li&gt;amp.lbr
 &lt;li&gt;amp-j.lbr
 &lt;li&gt;amp-mta.lbr
 &lt;li&gt;amp-nlok.lbr
 &lt;li&gt;amp-sim.lbr
 &lt;li&gt;amp-micro-match.lbr
 &lt;/ul&gt;
 Sources :
 &lt;ul&gt;
 &lt;li&gt;Catalog 82066 Revised 11-95 
 &lt;li&gt;Product Guide 296785 Rev. 8-99
 &lt;li&gt;Product Guide CD-ROM 1999
 &lt;li&gt;www.amp.com
 &lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="10X07MTA">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;&lt;p&gt;
Source: http://ecommas.tycoelectronics.com .. ENG_CD_640456_W.pdf</description>
<wire x1="-8.89" y1="-1.27" x2="-8.89" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.27" x2="-8.89" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.27" x2="8.89" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-1.27" x2="8.89" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.905" x2="-8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.905" x2="8.89" y2="1.27" width="0.1524" layer="21"/>
<pad name="7" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="-3.2512" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.7762" y="2.3508" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="21"/>
<rectangle x1="-7.874" y1="-0.254" x2="-7.366" y2="0.254" layer="21"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="21"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="21"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="21"/>
</package>
<package name="10X06MTA">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;&lt;p&gt;
Source: http://ecommas.tycoelectronics.com .. ENG_CD_640456_W.pdf</description>
<wire x1="-7.62" y1="-1.27" x2="-7.62" y2="1.27" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.27" x2="-7.62" y2="1.27" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.27" x2="7.62" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.27" x2="7.62" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="7.62" y2="1.27" width="0.1524" layer="21"/>
<pad name="6" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="-3.2512" size="1.27" layer="25">&gt;NAME</text>
<text x="-7.4762" y="2.2507" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="21"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="21"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="21"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="21"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="21"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="21"/>
</package>
<package name="10X05MTA">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;&lt;p&gt;
Source: http://ecommas.tycoelectronics.com .. ENG_CD_640456_W.pdf</description>
<wire x1="-6.35" y1="-1.27" x2="-6.35" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.27" x2="-6.35" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.27" x2="6.35" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="6.35" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="1.27" width="0.1524" layer="21"/>
<pad name="5" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="-3.2512" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.1763" y="2.1509" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="21"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="21"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MTA-1_7">
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="-1.905" width="0.254" layer="94"/>
<wire x1="8.89" y1="-1.905" x2="-8.89" y2="-1.905" width="0.254" layer="94"/>
<wire x1="8.89" y1="-1.905" x2="8.89" y2="1.27" width="0.254" layer="94"/>
<wire x1="-8.89" y1="1.27" x2="8.89" y2="1.27" width="0.254" layer="94"/>
<circle x="-7.62" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="-5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="7.62" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="10.16" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-10.16" y="-1.27" size="1.27" layer="95">1</text>
<pin name="1" x="-7.62" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="3" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="4" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="5" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="6" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="7" x="7.62" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="MTA-1_6">
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.905" width="0.254" layer="94"/>
<wire x1="8.89" y1="-1.905" x2="-6.35" y2="-1.905" width="0.254" layer="94"/>
<wire x1="8.89" y1="-1.905" x2="8.89" y2="1.27" width="0.254" layer="94"/>
<wire x1="-6.35" y1="1.27" x2="8.89" y2="1.27" width="0.254" layer="94"/>
<circle x="-5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="7.62" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="10.16" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-7.62" y="-1.27" size="1.27" layer="95">1</text>
<pin name="1" x="-5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="3" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="4" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="5" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="6" x="7.62" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="MTA-1_5">
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.905" width="0.254" layer="94"/>
<wire x1="6.35" y1="-1.905" x2="-6.35" y2="-1.905" width="0.254" layer="94"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="1.27" width="0.254" layer="94"/>
<wire x1="-6.35" y1="1.27" x2="6.35" y2="1.27" width="0.254" layer="94"/>
<circle x="-5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="7.62" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-7.62" y="-1.27" size="1.27" layer="95">1</text>
<pin name="1" x="-5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="3" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="4" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="5" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MTA07-100" prefix="J" uservalue="yes">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MTA-1_7" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="10X07MTA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MTA06-100" prefix="J" uservalue="yes">
<description>&lt;b&gt;AMP connector&lt;/b&gt;&lt;p&gt;
Connection corrected 2014-09-19</description>
<gates>
<gate name="G$1" symbol="MTA-1_6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="10X06MTA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MTA05-100" prefix="J" uservalue="yes">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MTA-1_5" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="10X05MTA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="ArduinoMegaOutline" deviceset="MEGA_DEVICE" device=""/>
<part name="M1" library="con-amp" deviceset="MTA07-100" device=""/>
<part name="M2" library="con-amp" deviceset="MTA07-100" device=""/>
<part name="M3" library="con-amp" deviceset="MTA07-100" device=""/>
<part name="RELAY" library="con-amp" deviceset="MTA06-100" device=""/>
<part name="1" library="con-amp" deviceset="MTA05-100" device=""/>
<part name="2" library="con-amp" deviceset="MTA05-100" device=""/>
<part name="3" library="con-amp" deviceset="MTA05-100" device=""/>
<part name="4" library="con-amp" deviceset="MTA05-100" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="76.2" y="58.42"/>
<instance part="M1" gate="G$1" x="165.1" y="77.47" rot="R90"/>
<instance part="M2" gate="G$1" x="162.56" y="53.34" rot="R90"/>
<instance part="M3" gate="G$1" x="162.56" y="22.86" rot="R90"/>
<instance part="RELAY" gate="G$1" x="66.04" y="118.11"/>
<instance part="1" gate="G$1" x="110.49" y="121.92" rot="R180"/>
<instance part="2" gate="G$1" x="110.49" y="116.84"/>
<instance part="3" gate="G$1" x="135.89" y="120.65" rot="R180"/>
<instance part="4" gate="G$1" x="135.89" y="118.11"/>
</instances>
<busses>
</busses>
<nets>
<net name="22" class="0">
<segment>
<pinref part="M1" gate="G$1" pin="2"/>
<wire x1="167.64" y1="72.39" x2="170.18" y2="72.39" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="22"/>
<wire x1="119.38" y1="80.01" x2="111.76" y2="80.01" width="0.1524" layer="91"/>
</segment>
</net>
<net name="2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="83.82" y1="82.55" x2="83.82" y2="92.71" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="M3" gate="G$1" pin="4"/>
<wire x1="165.1" y1="22.86" x2="172.72" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="24" class="0">
<segment>
<pinref part="M1" gate="G$1" pin="6"/>
<wire x1="167.64" y1="82.55" x2="172.72" y2="82.55" width="0.1524" layer="91"/>
<wire x1="172.72" y1="82.55" x2="172.72" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="24"/>
<wire x1="119.38" y1="77.47" x2="114.3" y2="77.47" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3" class="0">
<segment>
<pinref part="M2" gate="G$1" pin="4"/>
<wire x1="165.1" y1="53.34" x2="172.72" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="3"/>
<wire x1="81.28" y1="82.55" x2="81.28" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="26" class="0">
<segment>
<pinref part="M2" gate="G$1" pin="2"/>
<wire x1="165.1" y1="48.26" x2="171.45" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="26"/>
<wire x1="119.38" y1="74.93" x2="111.76" y2="74.93" width="0.1524" layer="91"/>
</segment>
</net>
<net name="4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="78.74" y1="82.55" x2="78.74" y2="92.71" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="M1" gate="G$1" pin="4"/>
<wire x1="167.64" y1="77.47" x2="170.18" y2="77.47" width="0.1524" layer="91"/>
</segment>
</net>
<net name="30" class="0">
<segment>
<pinref part="M3" gate="G$1" pin="2"/>
<wire x1="165.1" y1="17.78" x2="173.99" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="30"/>
<wire x1="119.38" y1="69.85" x2="114.3" y2="69.85" width="0.1524" layer="91"/>
</segment>
</net>
<net name="23" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="23"/>
<wire x1="121.92" y1="80.01" x2="135.89" y2="80.01" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="1" gate="G$1" pin="5"/>
<wire x1="105.41" y1="124.46" x2="105.41" y2="125.73" width="0.1524" layer="91"/>
</segment>
</net>
<net name="27" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="27"/>
<wire x1="121.92" y1="74.93" x2="132.08" y2="74.93" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="1" gate="G$1" pin="3"/>
<wire x1="110.49" y1="124.46" x2="110.49" y2="125.73" width="0.1524" layer="91"/>
</segment>
</net>
<net name="31" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="31"/>
<wire x1="121.92" y1="69.85" x2="129.54" y2="69.85" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="2" gate="G$1" pin="4"/>
<wire x1="113.03" y1="114.3" x2="113.03" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="33" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="33"/>
<wire x1="121.92" y1="67.31" x2="129.54" y2="67.31" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="2" gate="G$1" pin="3"/>
<wire x1="110.49" y1="114.3" x2="110.49" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="35" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="35"/>
<wire x1="121.92" y1="64.77" x2="130.81" y2="64.77" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="2" gate="G$1" pin="2"/>
<wire x1="107.95" y1="114.3" x2="106.68" y2="115.57" width="0.1524" layer="91"/>
<wire x1="106.68" y1="115.57" x2="106.68" y2="110.49" width="0.1524" layer="91"/>
</segment>
</net>
<net name="36" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="36"/>
<wire x1="119.38" y1="62.23" x2="115.57" y2="62.23" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RELAY" gate="G$1" pin="3"/>
<wire x1="66.04" y1="115.57" x2="66.04" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="37" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="37"/>
<wire x1="121.92" y1="62.23" x2="130.81" y2="62.23" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="2" gate="G$1" pin="1"/>
<wire x1="105.41" y1="114.3" x2="105.41" y2="110.49" width="0.1524" layer="91"/>
</segment>
</net>
<net name="29" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="29"/>
<wire x1="121.92" y1="72.39" x2="129.54" y2="72.39" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="1" gate="G$1" pin="2"/>
<wire x1="113.03" y1="124.46" x2="113.03" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="25" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="25"/>
<wire x1="121.92" y1="77.47" x2="129.54" y2="77.47" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="1" gate="G$1" pin="4"/>
<wire x1="107.95" y1="124.46" x2="107.95" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="38" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="38"/>
<wire x1="119.38" y1="59.69" x2="109.22" y2="59.69" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RELAY" gate="G$1" pin="4"/>
<wire x1="68.58" y1="115.57" x2="68.58" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="39" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="39"/>
<wire x1="121.92" y1="59.69" x2="130.81" y2="59.69" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3" gate="G$1" pin="5"/>
<wire x1="130.81" y1="123.19" x2="130.81" y2="125.73" width="0.1524" layer="91"/>
</segment>
</net>
<net name="40" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="40"/>
<wire x1="119.38" y1="57.15" x2="113.03" y2="57.15" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RELAY" gate="G$1" pin="5"/>
<wire x1="71.12" y1="115.57" x2="71.12" y2="110.49" width="0.1524" layer="91"/>
</segment>
</net>
<net name="41" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="41"/>
<wire x1="121.92" y1="57.15" x2="128.27" y2="57.15" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3" gate="G$1" pin="4"/>
<wire x1="133.35" y1="123.19" x2="133.35" y2="125.73" width="0.1524" layer="91"/>
</segment>
</net>
<net name="42" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="42"/>
<wire x1="119.38" y1="54.61" x2="113.03" y2="54.61" width="0.1524" layer="91"/>
</segment>
</net>
<net name="43" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="43"/>
<wire x1="121.92" y1="54.61" x2="129.54" y2="54.61" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3" gate="G$1" pin="3"/>
<wire x1="135.89" y1="123.19" x2="135.89" y2="125.73" width="0.1524" layer="91"/>
</segment>
</net>
<net name="44" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="44"/>
<wire x1="119.38" y1="52.07" x2="114.3" y2="52.07" width="0.1524" layer="91"/>
</segment>
</net>
<net name="45" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="45"/>
<wire x1="121.92" y1="52.07" x2="133.35" y2="52.07" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3" gate="G$1" pin="2"/>
<wire x1="138.43" y1="123.19" x2="138.43" y2="125.73" width="0.1524" layer="91"/>
</segment>
</net>
<net name="46" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="46"/>
<wire x1="119.38" y1="49.53" x2="113.03" y2="49.53" width="0.1524" layer="91"/>
</segment>
</net>
<net name="47" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="47"/>
<wire x1="121.92" y1="49.53" x2="130.81" y2="49.53" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="4" gate="G$1" pin="4"/>
<wire x1="138.43" y1="115.57" x2="138.43" y2="110.49" width="0.1524" layer="91"/>
</segment>
</net>
<net name="48" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="48"/>
<wire x1="119.38" y1="46.99" x2="114.3" y2="46.99" width="0.1524" layer="91"/>
</segment>
</net>
<net name="49" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="49"/>
<wire x1="121.92" y1="46.99" x2="130.81" y2="46.99" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="4" gate="G$1" pin="3"/>
<wire x1="135.89" y1="115.57" x2="137.16" y2="115.57" width="0.1524" layer="91"/>
<wire x1="137.16" y1="115.57" x2="137.16" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="50" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="50"/>
<wire x1="119.38" y1="44.45" x2="114.3" y2="44.45" width="0.1524" layer="91"/>
</segment>
</net>
<net name="51" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="51"/>
<wire x1="121.92" y1="44.45" x2="130.81" y2="44.45" width="0.1524" layer="91"/>
<wire x1="130.81" y1="44.45" x2="130.81" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="4" gate="G$1" pin="2"/>
<wire x1="133.35" y1="115.57" x2="133.35" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="52" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="52"/>
<wire x1="119.38" y1="41.91" x2="111.76" y2="41.91" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="4" gate="G$1" pin="1"/>
<wire x1="130.81" y1="115.57" x2="130.81" y2="113.03" width="0.1524" layer="91"/>
</segment>
</net>
<net name="53" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="53"/>
<wire x1="121.92" y1="41.91" x2="128.27" y2="41.91" width="0.1524" layer="91"/>
<wire x1="128.27" y1="41.91" x2="128.27" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="RESET"/>
<wire x1="58.42" y1="34.29" x2="58.42" y2="24.13" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3.3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="3V3"/>
<wire x1="60.96" y1="34.29" x2="60.96" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND@2"/>
<wire x1="66.04" y1="34.29" x2="66.04" y2="24.13" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND@3"/>
<wire x1="68.58" y1="34.29" x2="69.85" y2="34.29" width="0.1524" layer="91"/>
<wire x1="69.85" y1="34.29" x2="69.85" y2="24.13" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND@6"/>
<wire x1="119.38" y1="39.37" x2="110.49" y2="39.37" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND@7"/>
<wire x1="121.92" y1="39.37" x2="130.81" y2="39.37" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RELAY" gate="G$1" pin="6"/>
<wire x1="73.66" y1="115.57" x2="73.66" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="1" gate="G$1" pin="1"/>
<wire x1="115.57" y1="124.46" x2="115.57" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3" gate="G$1" pin="1"/>
<wire x1="140.97" y1="123.19" x2="140.97" y2="125.73" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VIN"/>
<wire x1="71.12" y1="34.29" x2="73.66" y2="34.29" width="0.1524" layer="91"/>
<wire x1="73.66" y1="34.29" x2="73.66" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="5"/>
<wire x1="76.2" y1="82.55" x2="76.2" y2="92.71" width="0.1524" layer="91"/>
</segment>
</net>
<net name="6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="6"/>
<wire x1="73.66" y1="82.55" x2="73.66" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="28" class="0">
<segment>
<pinref part="M2" gate="G$1" pin="6"/>
<wire x1="165.1" y1="58.42" x2="171.45" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="28"/>
<wire x1="119.38" y1="72.39" x2="114.3" y2="72.39" width="0.1524" layer="91"/>
</segment>
</net>
<net name="32" class="0">
<segment>
<pinref part="M3" gate="G$1" pin="6"/>
<wire x1="165.1" y1="27.94" x2="171.45" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="32"/>
<wire x1="119.38" y1="67.31" x2="115.57" y2="67.31" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND@4"/>
<wire x1="119.38" y1="82.55" x2="118.11" y2="82.55" width="0.1524" layer="91"/>
<wire x1="118.11" y1="82.55" x2="118.11" y2="90.17" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="5V"/>
<wire x1="63.5" y1="34.29" x2="63.5" y2="24.13" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RELAY" gate="G$1" pin="1"/>
<wire x1="60.96" y1="115.57" x2="60.96" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND@5"/>
<wire x1="121.92" y1="82.55" x2="123.19" y2="82.55" width="0.1524" layer="91"/>
<wire x1="123.19" y1="82.55" x2="123.19" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="2" gate="G$1" pin="5"/>
<wire x1="115.57" y1="114.3" x2="115.57" y2="113.03" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="4" gate="G$1" pin="5"/>
<wire x1="140.97" y1="115.57" x2="140.97" y2="110.49" width="0.1524" layer="91"/>
</segment>
</net>
<net name="34" class="0">
<segment>
<pinref part="RELAY" gate="G$1" pin="2"/>
<wire x1="63.5" y1="115.57" x2="63.5" y2="110.49" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="34"/>
<wire x1="119.38" y1="64.77" x2="115.57" y2="64.77" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
