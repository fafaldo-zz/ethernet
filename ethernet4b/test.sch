<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(15:0)" />
        <signal name="XLXN_6(4:0)" />
        <signal name="XLXN_7(4:0)" />
        <signal name="clk_in" />
        <signal name="XLXN_9" />
        <signal name="ddane(15:0)" />
        <signal name="btn" />
        <signal name="busy">
        </signal>
        <signal name="mdc" />
        <signal name="mdio" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="ddane(15:0)" />
        <port polarity="Input" name="btn" />
        <port polarity="Output" name="mdc" />
        <port polarity="BiDirectional" name="mdio" />
        <blockdef name="SMI_divider">
            <timestamp>2014-3-10T9:12:18</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SMI_RXTX">
            <timestamp>2014-3-10T9:12:26</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-480" y2="-480" x1="384" />
            <line x2="448" y1="-336" y2="-336" x1="384" />
            <rect width="64" x="384" y="-204" height="24" />
            <line x2="448" y1="-192" y2="-192" x1="384" />
            <line x2="448" y1="-48" y2="-48" x1="384" />
            <rect width="320" x="64" y="-512" height="576" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="button">
            <timestamp>2014-3-10T9:25:0</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="SMI_divider" name="XLXI_1">
            <blockpin signalname="clk_in" name="clk_in" />
            <blockpin signalname="XLXN_2" name="clk_out" />
        </block>
        <block symbolname="SMI_RXTX" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="write_read" />
            <blockpin signalname="XLXN_4" name="reset" />
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="XLXN_2" name="clk_div" />
            <blockpin signalname="XLXN_5(15:0)" name="data_in(15:0)" />
            <blockpin signalname="XLXN_6(4:0)" name="phy_addr(4:0)" />
            <blockpin signalname="XLXN_7(4:0)" name="reg_addr(4:0)" />
            <blockpin signalname="mdio" name="MDIO" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="mdc" name="MDC" />
            <blockpin signalname="ddane(15:0)" name="data_out(15:0)" />
            <blockpin signalname="XLXN_9" name="strt" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="G" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_5(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_5">
            <attr value="6" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_6(4:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_7(4:0)" name="O" />
        </block>
        <block symbolname="button" name="XLXI_7">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="btn" name="btn" />
            <blockpin signalname="XLXN_9" name="strt" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1600" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <instance x="672" y="1072" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1056" y1="1040" y2="1328" x1="1056" />
            <wire x2="1600" y1="1328" y2="1328" x1="1056" />
        </branch>
        <instance x="1392" y="1792" name="XLXI_3" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1600" y1="1072" y2="1072" x1="1456" />
            <wire x2="1456" y1="1072" y2="1200" x1="1456" />
            <wire x2="1600" y1="1200" y2="1200" x1="1456" />
            <wire x2="1456" y1="1200" y2="1664" x1="1456" />
        </branch>
        <instance x="1120" y="1360" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1120" y="1472" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1120" y="1584" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_5(15:0)">
            <wire x2="1600" y1="1392" y2="1392" x1="1264" />
        </branch>
        <branch name="XLXN_6(4:0)">
            <wire x2="1344" y1="1504" y2="1504" x1="1264" />
            <wire x2="1344" y1="1456" y2="1504" x1="1344" />
            <wire x2="1600" y1="1456" y2="1456" x1="1344" />
        </branch>
        <branch name="XLXN_7(4:0)">
            <wire x2="1376" y1="1616" y2="1616" x1="1264" />
            <wire x2="1376" y1="1520" y2="1616" x1="1376" />
            <wire x2="1600" y1="1520" y2="1520" x1="1376" />
        </branch>
        <instance x="1024" y="2000" name="XLXI_7" orien="R0">
        </instance>
        <branch name="clk_in">
            <wire x2="560" y1="1040" y2="1040" x1="448" />
            <wire x2="672" y1="1040" y2="1040" x1="560" />
            <wire x2="560" y1="1040" y2="1264" x1="560" />
            <wire x2="608" y1="1264" y2="1264" x1="560" />
            <wire x2="1600" y1="1264" y2="1264" x1="608" />
            <wire x2="608" y1="1264" y2="1904" x1="608" />
            <wire x2="1024" y1="1904" y2="1904" x1="608" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1536" y1="1904" y2="1904" x1="1408" />
            <wire x2="1536" y1="1584" y2="1904" x1="1536" />
            <wire x2="1600" y1="1584" y2="1584" x1="1536" />
        </branch>
        <branch name="ddane(15:0)">
            <wire x2="2272" y1="1360" y2="1360" x1="2048" />
            <wire x2="2336" y1="1360" y2="1360" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="448" y="1040" name="clk_in" orien="R180" />
        <branch name="btn">
            <wire x2="1024" y1="1968" y2="1968" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="1968" name="btn" orien="R180" />
        <branch name="busy">
            <wire x2="2080" y1="1072" y2="1072" x1="2048" />
        </branch>
        <branch name="mdc">
            <wire x2="2080" y1="1216" y2="1216" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1216" name="mdc" orien="R0" />
        <branch name="mdio">
            <wire x2="2080" y1="1504" y2="1504" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1504" name="mdio" orien="R0" />
        <iomarker fontsize="28" x="2336" y="1360" name="ddane(15:0)" orien="R0" />
    </sheet>
</drawing>