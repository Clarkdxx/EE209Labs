<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="SETANS_BTN" />
        <signal name="GUESS_BTN" />
        <signal name="SWITCHES(7:0)" />
        <signal name="ANS(7:0)" />
        <signal name="SWCNT_EN" />
        <signal name="SWCNT_CLR" />
        <signal name="ANS(0)" />
        <signal name="ANS(1)" />
        <signal name="ANS(2)" />
        <signal name="ANS(3)" />
        <signal name="ANS(4)" />
        <signal name="ANS(5)" />
        <signal name="ANS(6)" />
        <signal name="ANS(7)" />
        <signal name="SWCNT(0)" />
        <signal name="SWCNT(1)" />
        <signal name="SWCNT(2)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="SWITCHES(0)" />
        <signal name="SWITCHES(1)" />
        <signal name="SWITCHES(2)" />
        <signal name="SWITCHES(3)" />
        <signal name="SWITCHES(4)" />
        <signal name="SWITCHES(5)" />
        <signal name="SWITCHES(6)" />
        <signal name="SWITCHES(7)" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="SWCNT(2:0)" />
        <signal name="CORRCNT_CLR" />
        <signal name="CORRCNT_EN_QUAL" />
        <signal name="ANS_LD" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_92" />
        <signal name="CORRCNT_EN" />
        <signal name="Q(0)" />
        <signal name="Q(1)" />
        <signal name="Q(2)" />
        <signal name="Q(3)" />
        <signal name="CA" />
        <signal name="CB" />
        <signal name="CC" />
        <signal name="CD" />
        <signal name="CE" />
        <signal name="CF" />
        <signal name="CG" />
        <signal name="Q(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="SETANS_BTN" />
        <port polarity="Input" name="GUESS_BTN" />
        <port polarity="Input" name="SWITCHES(7:0)" />
        <port polarity="Output" name="CA" />
        <port polarity="Output" name="CB" />
        <port polarity="Output" name="CC" />
        <port polarity="Output" name="CD" />
        <port polarity="Output" name="CE" />
        <port polarity="Output" name="CF" />
        <port polarity="Output" name="CG" />
        <blockdef name="mmind_fsm">
            <timestamp>2015-9-4T22:42:15</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="m8_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-544" y2="-544" x1="0" />
            <line x2="96" y1="-608" y2="-608" x1="0" />
            <line x2="96" y1="-672" y2="-672" x1="0" />
            <line x2="96" y1="-736" y2="-736" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="160" />
            <line x2="160" y1="-268" y2="-160" x1="160" />
            <line x2="96" y1="-224" y2="-224" x1="128" />
            <line x2="128" y1="-264" y2="-224" x1="128" />
            <line x2="96" y1="-96" y2="-96" x1="192" />
            <line x2="192" y1="-276" y2="-96" x1="192" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-280" y2="-32" x1="224" />
            <line x2="256" y1="-512" y2="-512" x1="320" />
            <line x2="96" y1="-768" y2="-256" x1="96" />
            <line x2="96" y1="-704" y2="-768" x1="256" />
            <line x2="256" y1="-288" y2="-704" x1="256" />
            <line x2="256" y1="-256" y2="-288" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="96" y1="-480" y2="-480" x1="0" />
        </blockdef>
        <blockdef name="fd8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="sevenseg_decoder">
            <timestamp>2012-10-31T22:12:29</timestamp>
            <rect width="400" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
            <line x2="528" y1="-352" y2="-352" x1="464" />
            <line x2="528" y1="-288" y2="-288" x1="464" />
            <line x2="528" y1="-160" y2="-160" x1="464" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <block symbolname="mmind_fsm" name="FSM">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="SETANS_BTN" name="SETANS" />
            <blockpin signalname="GUESS_BTN" name="GUESS" />
            <blockpin signalname="SWCNT(2:0)" name="SWCNT(2:0)" />
            <blockpin signalname="SWCNT_CLR" name="SWCNT_CLR" />
            <blockpin signalname="SWCNT_EN" name="SWCNT_EN" />
            <blockpin signalname="CORRCNT_CLR" name="CORRCNT_CLR" />
            <blockpin signalname="CORRCNT_EN" name="CORRCNT_EN" />
            <blockpin signalname="ANS_LD" name="ANS_LD" />
        </block>
        <block symbolname="cb4ce" name="XLXI_3">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CORRCNT_EN_QUAL" name="CE" />
            <blockpin signalname="CORRCNT_CLR" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="Q(0)" name="Q0" />
            <blockpin signalname="Q(1)" name="Q1" />
            <blockpin signalname="Q(2)" name="Q2" />
            <blockpin signalname="Q(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb4ce" name="XLXI_4">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="SWCNT_EN" name="CE" />
            <blockpin signalname="SWCNT_CLR" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="SWCNT(0)" name="Q0" />
            <blockpin signalname="SWCNT(1)" name="Q1" />
            <blockpin signalname="SWCNT(2)" name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="fd8ce" name="XLXI_6">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="ANS_LD" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="SWITCHES(7:0)" name="D(7:0)" />
            <blockpin signalname="ANS(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="m8_1e" name="XLXI_7">
            <blockpin signalname="SWITCHES(0)" name="D0" />
            <blockpin signalname="SWITCHES(1)" name="D1" />
            <blockpin signalname="SWITCHES(2)" name="D2" />
            <blockpin signalname="SWITCHES(3)" name="D3" />
            <blockpin signalname="SWITCHES(4)" name="D4" />
            <blockpin signalname="SWITCHES(5)" name="D5" />
            <blockpin signalname="SWITCHES(6)" name="D6" />
            <blockpin signalname="SWITCHES(7)" name="D7" />
            <blockpin signalname="XLXN_37" name="E" />
            <blockpin signalname="SWCNT(0)" name="S0" />
            <blockpin signalname="SWCNT(1)" name="S1" />
            <blockpin signalname="SWCNT(2)" name="S2" />
            <blockpin signalname="XLXN_88" name="O" />
        </block>
        <block symbolname="m8_1e" name="XLXI_8">
            <blockpin signalname="ANS(0)" name="D0" />
            <blockpin signalname="ANS(1)" name="D1" />
            <blockpin signalname="ANS(2)" name="D2" />
            <blockpin signalname="ANS(3)" name="D3" />
            <blockpin signalname="ANS(4)" name="D4" />
            <blockpin signalname="ANS(5)" name="D5" />
            <blockpin signalname="ANS(6)" name="D6" />
            <blockpin signalname="ANS(7)" name="D7" />
            <blockpin signalname="XLXN_37" name="E" />
            <blockpin signalname="SWCNT(0)" name="S0" />
            <blockpin signalname="SWCNT(1)" name="S1" />
            <blockpin signalname="SWCNT(2)" name="S2" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_37" name="P" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="CORRCNT_EN" name="I0" />
            <blockpin signalname="XLXN_89" name="I1" />
            <blockpin signalname="CORRCNT_EN_QUAL" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_11">
            <blockpin signalname="XLXN_88" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="sevenseg_decoder" name="SEVSEG">
            <blockpin signalname="Q(0)" name="I0" />
            <blockpin signalname="Q(1)" name="I1" />
            <blockpin signalname="Q(2)" name="I2" />
            <blockpin signalname="Q(3)" name="I3" />
            <blockpin signalname="CA" name="A" />
            <blockpin signalname="CB" name="B" />
            <blockpin signalname="CC" name="C" />
            <blockpin signalname="CE" name="E" />
            <blockpin signalname="CD" name="D" />
            <blockpin signalname="CF" name="F" />
            <blockpin signalname="CG" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="160" type="branch" />
            <wire x2="384" y1="160" y2="160" x1="288" />
            <wire x2="608" y1="160" y2="160" x1="384" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="256" type="branch" />
            <wire x2="384" y1="256" y2="256" x1="288" />
            <wire x2="608" y1="256" y2="256" x1="384" />
        </branch>
        <branch name="SETANS_BTN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="416" y="368" type="branch" />
            <wire x2="416" y1="368" y2="368" x1="288" />
            <wire x2="608" y1="368" y2="368" x1="416" />
        </branch>
        <branch name="GUESS_BTN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="400" y="480" type="branch" />
            <wire x2="400" y1="480" y2="480" x1="288" />
            <wire x2="608" y1="480" y2="480" x1="400" />
        </branch>
        <branch name="SWITCHES(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="416" y="624" type="branch" />
            <wire x2="416" y1="624" y2="624" x1="288" />
            <wire x2="608" y1="624" y2="624" x1="416" />
        </branch>
        <iomarker fontsize="28" x="288" y="160" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="288" y="256" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="288" y="368" name="SETANS_BTN" orien="R180" />
        <iomarker fontsize="28" x="288" y="480" name="GUESS_BTN" orien="R180" />
        <iomarker fontsize="28" x="288" y="624" name="SWITCHES(7:0)" orien="R180" />
        <instance x="304" y="1376" name="XLXI_6" orien="R0" />
        <branch name="ANS(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1120" type="branch" />
            <wire x2="752" y1="1120" y2="1120" x1="688" />
            <wire x2="800" y1="1120" y2="1120" x1="752" />
        </branch>
        <branch name="SWITCHES(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="192" y="1120" type="branch" />
            <wire x2="192" y1="1120" y2="1120" x1="96" />
            <wire x2="304" y1="1120" y2="1120" x1="192" />
        </branch>
        <branch name="ANS_LD">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1184" type="branch" />
            <wire x2="240" y1="1184" y2="1184" x1="160" />
            <wire x2="304" y1="1184" y2="1184" x1="240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1248" type="branch" />
            <wire x2="256" y1="1248" y2="1248" x1="160" />
            <wire x2="304" y1="1248" y2="1248" x1="256" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1344" type="branch" />
            <wire x2="240" y1="1344" y2="1344" x1="160" />
            <wire x2="304" y1="1344" y2="1344" x1="240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="224" y="2544" type="branch" />
            <wire x2="224" y1="2544" y2="2544" x1="160" />
            <wire x2="256" y1="2544" y2="2544" x1="224" />
        </branch>
        <instance x="512" y="1552" name="XLXI_9" orien="R0" />
        <branch name="SWITCHES(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1792" type="branch" />
            <wire x2="1120" y1="1792" y2="1792" x1="1088" />
            <wire x2="1216" y1="1792" y2="1792" x1="1120" />
        </branch>
        <branch name="SWITCHES(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1856" type="branch" />
            <wire x2="1120" y1="1856" y2="1856" x1="1088" />
            <wire x2="1216" y1="1856" y2="1856" x1="1120" />
        </branch>
        <branch name="SWITCHES(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1920" type="branch" />
            <wire x2="1120" y1="1920" y2="1920" x1="1088" />
            <wire x2="1216" y1="1920" y2="1920" x1="1120" />
        </branch>
        <branch name="SWITCHES(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1984" type="branch" />
            <wire x2="1120" y1="1984" y2="1984" x1="1088" />
            <wire x2="1216" y1="1984" y2="1984" x1="1120" />
        </branch>
        <branch name="SWITCHES(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2048" type="branch" />
            <wire x2="1136" y1="2048" y2="2048" x1="1088" />
            <wire x2="1216" y1="2048" y2="2048" x1="1136" />
        </branch>
        <branch name="SWITCHES(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="2112" type="branch" />
            <wire x2="1120" y1="2112" y2="2112" x1="1088" />
            <wire x2="1216" y1="2112" y2="2112" x1="1120" />
        </branch>
        <branch name="SWITCHES(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="2176" type="branch" />
            <wire x2="1120" y1="2176" y2="2176" x1="1088" />
            <wire x2="1216" y1="2176" y2="2176" x1="1120" />
        </branch>
        <branch name="SWITCHES(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="2240" type="branch" />
            <wire x2="1120" y1="2240" y2="2240" x1="1088" />
            <wire x2="1216" y1="2240" y2="2240" x1="1120" />
        </branch>
        <instance x="1216" y="2528" name="XLXI_7" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="576" y1="1552" y2="1616" x1="576" />
            <wire x2="960" y1="1616" y2="1616" x1="576" />
            <wire x2="1216" y1="1616" y2="1616" x1="960" />
            <wire x2="960" y1="1616" y2="2496" x1="960" />
            <wire x2="1216" y1="2496" y2="2496" x1="960" />
        </branch>
        <instance x="1216" y="1648" name="XLXI_8" orien="R0" />
        <branch name="ANS(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="912" type="branch" />
            <wire x2="1136" y1="912" y2="912" x1="1088" />
            <wire x2="1216" y1="912" y2="912" x1="1136" />
        </branch>
        <branch name="ANS(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="976" type="branch" />
            <wire x2="1136" y1="976" y2="976" x1="1088" />
            <wire x2="1216" y1="976" y2="976" x1="1136" />
        </branch>
        <branch name="ANS(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1040" type="branch" />
            <wire x2="1136" y1="1040" y2="1040" x1="1088" />
            <wire x2="1216" y1="1040" y2="1040" x1="1136" />
        </branch>
        <branch name="ANS(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1104" type="branch" />
            <wire x2="1136" y1="1104" y2="1104" x1="1088" />
            <wire x2="1216" y1="1104" y2="1104" x1="1136" />
        </branch>
        <branch name="ANS(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1168" type="branch" />
            <wire x2="1136" y1="1168" y2="1168" x1="1088" />
            <wire x2="1216" y1="1168" y2="1168" x1="1136" />
        </branch>
        <branch name="ANS(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1232" type="branch" />
            <wire x2="1136" y1="1232" y2="1232" x1="1088" />
            <wire x2="1216" y1="1232" y2="1232" x1="1136" />
        </branch>
        <branch name="ANS(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1296" type="branch" />
            <wire x2="1136" y1="1296" y2="1296" x1="1088" />
            <wire x2="1216" y1="1296" y2="1296" x1="1136" />
        </branch>
        <branch name="ANS(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1360" type="branch" />
            <wire x2="1136" y1="1360" y2="1360" x1="1088" />
            <wire x2="1216" y1="1360" y2="1360" x1="1136" />
        </branch>
        <branch name="SWCNT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="2224" type="branch" />
            <wire x2="720" y1="2224" y2="2224" x1="640" />
            <wire x2="880" y1="2224" y2="2224" x1="720" />
            <wire x2="880" y1="2224" y2="2304" x1="880" />
            <wire x2="1216" y1="2304" y2="2304" x1="880" />
            <wire x2="880" y1="1424" y2="2224" x1="880" />
            <wire x2="1216" y1="1424" y2="1424" x1="880" />
        </branch>
        <branch name="SWCNT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="2288" type="branch" />
            <wire x2="720" y1="2288" y2="2288" x1="640" />
            <wire x2="848" y1="2288" y2="2288" x1="720" />
            <wire x2="864" y1="2288" y2="2288" x1="848" />
            <wire x2="864" y1="2288" y2="2368" x1="864" />
            <wire x2="1216" y1="2368" y2="2368" x1="864" />
            <wire x2="848" y1="1488" y2="2288" x1="848" />
            <wire x2="1216" y1="1488" y2="1488" x1="848" />
        </branch>
        <branch name="SWCNT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="2352" type="branch" />
            <wire x2="720" y1="2352" y2="2352" x1="640" />
            <wire x2="816" y1="2352" y2="2352" x1="720" />
            <wire x2="848" y1="2352" y2="2352" x1="816" />
            <wire x2="848" y1="2352" y2="2432" x1="848" />
            <wire x2="1216" y1="2432" y2="2432" x1="848" />
            <wire x2="816" y1="1552" y2="2352" x1="816" />
            <wire x2="1216" y1="1552" y2="1552" x1="816" />
        </branch>
        <instance x="1376" y="448" name="FSM" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="160" type="branch" />
            <wire x2="1312" y1="160" y2="160" x1="1248" />
            <wire x2="1376" y1="160" y2="160" x1="1312" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="224" type="branch" />
            <wire x2="1280" y1="224" y2="224" x1="1248" />
            <wire x2="1376" y1="224" y2="224" x1="1280" />
        </branch>
        <branch name="SETANS_BTN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="288" type="branch" />
            <wire x2="1296" y1="288" y2="288" x1="1248" />
            <wire x2="1376" y1="288" y2="288" x1="1296" />
        </branch>
        <branch name="GUESS_BTN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="352" type="branch" />
            <wire x2="1280" y1="352" y2="352" x1="1248" />
            <wire x2="1376" y1="352" y2="352" x1="1280" />
        </branch>
        <branch name="SWCNT(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="416" type="branch" />
            <wire x2="1264" y1="416" y2="416" x1="1216" />
            <wire x2="1376" y1="416" y2="416" x1="1264" />
        </branch>
        <branch name="SWCNT_CLR">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="160" type="branch" />
            <wire x2="1936" y1="160" y2="160" x1="1824" />
            <wire x2="2000" y1="160" y2="160" x1="1936" />
        </branch>
        <branch name="SWCNT_EN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="224" type="branch" />
            <wire x2="1936" y1="224" y2="224" x1="1824" />
            <wire x2="2000" y1="224" y2="224" x1="1936" />
        </branch>
        <branch name="CORRCNT_CLR">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="288" type="branch" />
            <wire x2="1936" y1="288" y2="288" x1="1824" />
            <wire x2="2000" y1="288" y2="288" x1="1936" />
        </branch>
        <branch name="ANS_LD">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="416" type="branch" />
            <wire x2="1952" y1="416" y2="416" x1="1824" />
            <wire x2="2000" y1="416" y2="416" x1="1952" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1520" type="branch" />
            <wire x2="2336" y1="1520" y2="1520" x1="2288" />
            <wire x2="2432" y1="1520" y2="1520" x1="2336" />
        </branch>
        <branch name="CORRCNT_CLR">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1616" type="branch" />
            <wire x2="2352" y1="1616" y2="1616" x1="2288" />
            <wire x2="2432" y1="1616" y2="1616" x1="2352" />
        </branch>
        <instance x="256" y="2672" name="XLXI_4" orien="R0" />
        <branch name="SWCNT_EN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="208" y="2480" type="branch" />
            <wire x2="208" y1="2480" y2="2480" x1="160" />
            <wire x2="256" y1="2480" y2="2480" x1="208" />
        </branch>
        <branch name="SWCNT_CLR">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="208" y="2640" type="branch" />
            <wire x2="208" y1="2640" y2="2640" x1="160" />
            <wire x2="256" y1="2640" y2="2640" x1="208" />
        </branch>
        <instance x="1648" y="1424" name="XLXI_11" orien="R0" />
        <branch name="XLXN_87">
            <wire x2="1632" y1="1136" y2="1136" x1="1536" />
            <wire x2="1632" y1="1136" y2="1296" x1="1632" />
            <wire x2="1648" y1="1296" y2="1296" x1="1632" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="1648" y1="2016" y2="2016" x1="1536" />
            <wire x2="1648" y1="1360" y2="1360" x1="1568" />
            <wire x2="1568" y1="1360" y2="1472" x1="1568" />
            <wire x2="1648" y1="1472" y2="1472" x1="1568" />
            <wire x2="1648" y1="1472" y2="2016" x1="1648" />
        </branch>
        <instance x="1984" y="1552" name="XLXI_10" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="1920" y1="1328" y2="1328" x1="1904" />
            <wire x2="1920" y1="1328" y2="1424" x1="1920" />
            <wire x2="1984" y1="1424" y2="1424" x1="1920" />
        </branch>
        <branch name="CORRCNT_EN_QUAL">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1456" type="branch" />
            <wire x2="2336" y1="1456" y2="1456" x1="2240" />
            <wire x2="2432" y1="1456" y2="1456" x1="2336" />
        </branch>
        <branch name="CORRCNT_EN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="352" type="branch" />
            <wire x2="1936" y1="352" y2="352" x1="1824" />
            <wire x2="2000" y1="352" y2="352" x1="1936" />
        </branch>
        <branch name="CORRCNT_EN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1488" type="branch" />
            <wire x2="1888" y1="1488" y2="1488" x1="1824" />
            <wire x2="1984" y1="1488" y2="1488" x1="1888" />
        </branch>
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1200" type="branch" />
            <wire x2="2848" y1="1200" y2="1200" x1="2816" />
            <wire x2="2864" y1="1200" y2="1200" x1="2848" />
        </branch>
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1264" type="branch" />
            <wire x2="2848" y1="1264" y2="1264" x1="2816" />
            <wire x2="2864" y1="1264" y2="1264" x1="2848" />
        </branch>
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="1328" type="branch" />
            <wire x2="2832" y1="1328" y2="1328" x1="2816" />
            <wire x2="2864" y1="1328" y2="1328" x1="2832" />
        </branch>
        <branch name="Q(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="1392" type="branch" />
            <wire x2="2832" y1="1392" y2="1392" x1="2816" />
            <wire x2="2864" y1="1392" y2="1392" x1="2832" />
        </branch>
        <branch name="CA">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1200" type="branch" />
            <wire x2="3488" y1="1200" y2="1200" x1="3392" />
            <wire x2="3504" y1="1200" y2="1200" x1="3488" />
        </branch>
        <branch name="CB">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1264" type="branch" />
            <wire x2="3488" y1="1264" y2="1264" x1="3392" />
            <wire x2="3504" y1="1264" y2="1264" x1="3488" />
        </branch>
        <branch name="CC">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1328" type="branch" />
            <wire x2="3488" y1="1328" y2="1328" x1="3392" />
            <wire x2="3504" y1="1328" y2="1328" x1="3488" />
        </branch>
        <branch name="CD">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1392" type="branch" />
            <wire x2="3488" y1="1392" y2="1392" x1="3392" />
            <wire x2="3504" y1="1392" y2="1392" x1="3488" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1456" type="branch" />
            <wire x2="3488" y1="1456" y2="1456" x1="3392" />
            <wire x2="3504" y1="1456" y2="1456" x1="3488" />
        </branch>
        <branch name="CF">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1520" type="branch" />
            <wire x2="3488" y1="1520" y2="1520" x1="3392" />
            <wire x2="3504" y1="1520" y2="1520" x1="3488" />
        </branch>
        <branch name="CG">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1584" type="branch" />
            <wire x2="3488" y1="1584" y2="1584" x1="3392" />
            <wire x2="3504" y1="1584" y2="1584" x1="3488" />
        </branch>
        <instance x="2432" y="1648" name="XLXI_3" orien="R0" />
        <instance x="2864" y="1616" name="SEVSEG" orien="R0">
        </instance>
        <branch name="CA">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="112" type="branch" />
            <wire x2="3168" y1="112" y2="112" x1="3104" />
            <wire x2="3216" y1="112" y2="112" x1="3168" />
        </branch>
        <branch name="CB">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="176" type="branch" />
            <wire x2="3168" y1="176" y2="176" x1="3104" />
            <wire x2="3216" y1="176" y2="176" x1="3168" />
        </branch>
        <branch name="CC">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="240" type="branch" />
            <wire x2="3168" y1="240" y2="240" x1="3104" />
            <wire x2="3216" y1="240" y2="240" x1="3168" />
        </branch>
        <branch name="CD">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="304" type="branch" />
            <wire x2="3168" y1="304" y2="304" x1="3104" />
            <wire x2="3216" y1="304" y2="304" x1="3168" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="368" type="branch" />
            <wire x2="3168" y1="368" y2="368" x1="3104" />
            <wire x2="3216" y1="368" y2="368" x1="3168" />
        </branch>
        <branch name="CF">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="432" type="branch" />
            <wire x2="3168" y1="432" y2="432" x1="3104" />
            <wire x2="3216" y1="432" y2="432" x1="3168" />
        </branch>
        <branch name="CG">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="496" type="branch" />
            <wire x2="3168" y1="496" y2="496" x1="3104" />
            <wire x2="3216" y1="496" y2="496" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3216" y="112" name="CA" orien="R0" />
        <iomarker fontsize="28" x="3216" y="176" name="CB" orien="R0" />
        <iomarker fontsize="28" x="3216" y="240" name="CC" orien="R0" />
        <iomarker fontsize="28" x="3216" y="304" name="CD" orien="R0" />
        <iomarker fontsize="28" x="3216" y="368" name="CE" orien="R0" />
        <iomarker fontsize="28" x="3216" y="432" name="CF" orien="R0" />
        <iomarker fontsize="28" x="3216" y="496" name="CG" orien="R0" />
        <branch name="Q(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1008" type="branch" />
            <wire x2="2816" y1="1008" y2="1008" x1="2736" />
            <wire x2="2912" y1="1008" y2="1008" x1="2816" />
        </branch>
    </sheet>
</drawing>