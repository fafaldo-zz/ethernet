<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_9(7:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="E_RX_D(3:0)" />
        <signal name="E_RX_CLK" />
        <signal name="E_RX_DV" />
        <signal name="full" />
        <signal name="XLXN_17" />
        <signal name="test(7:0)" />
        <signal name="REST" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="E_RX_D(3:0)" />
        <port polarity="Input" name="E_RX_CLK" />
        <port polarity="Input" name="E_RX_DV" />
        <port polarity="Output" name="full" />
        <port polarity="Output" name="test(7:0)" />
        <port polarity="Input" name="REST" />
        <blockdef name="ethernetRX">
            <timestamp>2014-8-30T9:45:0</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="ICMP_detector">
            <timestamp>2014-8-29T19:57:54</timestamp>
            <rect width="64" x="368" y="84" height="24" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="304" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="CUnit">
            <timestamp>2014-8-30T9:59:9</timestamp>
            <rect width="64" x="384" y="20" height="24" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-192" y2="-192" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <rect width="320" x="64" y="-384" height="448" />
        </blockdef>
        <block symbolname="ethernetRX" name="XLXI_1">
            <blockpin signalname="E_RX_D(3:0)" name="RX_D(3:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="E_RX_CLK" name="RX_CLK" />
            <blockpin signalname="E_RX_DV" name="RX_DV" />
            <blockpin signalname="XLXN_16" name="POP" />
            <blockpin signalname="XLXN_15" name="empty" />
            <blockpin signalname="full" name="full" />
            <blockpin signalname="XLXN_14" name="EOF" />
            <blockpin signalname="XLXN_9(7:0)" name="data_out(7:0)" />
        </block>
        <block symbolname="ICMP_detector" name="XLXI_3">
            <blockpin signalname="XLXN_12" name="enable" />
            <blockpin signalname="XLXN_17" name="reset" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_9(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_13" name="ICMP_detected" />
            <blockpin name="test(7:0)" />
        </block>
        <block symbolname="CUnit" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_15" name="empty" />
            <blockpin signalname="XLXN_14" name="EOF" />
            <blockpin signalname="XLXN_13" name="ICMP_recognized" />
            <blockpin signalname="REST" name="reset" />
            <blockpin signalname="XLXN_9(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_17" name="frame_reset" />
            <blockpin signalname="XLXN_12" name="enable" />
            <blockpin signalname="XLXN_16" name="POP" />
            <blockpin signalname="test(7:0)" name="test(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="1152" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1952" y="1456" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_9(7:0)">
            <wire x2="992" y1="1248" y2="1792" x1="992" />
            <wire x2="1088" y1="1792" y2="1792" x1="992" />
            <wire x2="1440" y1="1248" y2="1248" x1="992" />
            <wire x2="1440" y1="1248" y2="1424" x1="1440" />
            <wire x2="1952" y1="1424" y2="1424" x1="1440" />
            <wire x2="1440" y1="1104" y2="1104" x1="1424" />
            <wire x2="1440" y1="1104" y2="1248" x1="1440" />
        </branch>
        <branch name="clk">
            <wire x2="560" y1="928" y2="928" x1="416" />
            <wire x2="1040" y1="928" y2="928" x1="560" />
            <wire x2="560" y1="928" y2="1328" x1="560" />
            <wire x2="1488" y1="1328" y2="1328" x1="560" />
            <wire x2="560" y1="1328" y2="1728" x1="560" />
            <wire x2="1088" y1="1728" y2="1728" x1="560" />
            <wire x2="1488" y1="1104" y2="1328" x1="1488" />
            <wire x2="1952" y1="1104" y2="1104" x1="1488" />
        </branch>
        <instance x="1088" y="1824" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_12">
            <wire x2="1088" y1="1600" y2="1600" x1="1072" />
            <wire x2="1072" y1="1600" y2="1888" x1="1072" />
            <wire x2="2464" y1="1888" y2="1888" x1="1072" />
            <wire x2="2464" y1="1264" y2="1264" x1="2400" />
            <wire x2="2464" y1="1264" y2="1888" x1="2464" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1728" y1="1600" y2="1600" x1="1520" />
            <wire x2="1728" y1="1296" y2="1600" x1="1728" />
            <wire x2="1952" y1="1296" y2="1296" x1="1728" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1680" y1="1024" y2="1024" x1="1424" />
            <wire x2="1680" y1="1024" y2="1232" x1="1680" />
            <wire x2="1952" y1="1232" y2="1232" x1="1680" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1664" y1="864" y2="864" x1="1424" />
            <wire x2="1664" y1="864" y2="1168" x1="1664" />
            <wire x2="1952" y1="1168" y2="1168" x1="1664" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="976" y1="768" y2="1120" x1="976" />
            <wire x2="1040" y1="1120" y2="1120" x1="976" />
            <wire x2="2448" y1="768" y2="768" x1="976" />
            <wire x2="2448" y1="768" y2="1424" x1="2448" />
            <wire x2="2448" y1="1424" y2="1424" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="416" y="928" name="clk" orien="R180" />
        <branch name="E_RX_D(3:0)">
            <wire x2="1040" y1="864" y2="864" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="864" name="E_RX_D(3:0)" orien="R180" />
        <branch name="E_RX_CLK">
            <wire x2="1040" y1="992" y2="992" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="992" name="E_RX_CLK" orien="R180" />
        <branch name="E_RX_DV">
            <wire x2="1040" y1="1056" y2="1056" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1056" name="E_RX_DV" orien="R180" />
        <branch name="full">
            <wire x2="1456" y1="944" y2="944" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="944" name="full" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1008" y1="1536" y2="1664" x1="1008" />
            <wire x2="1088" y1="1664" y2="1664" x1="1008" />
            <wire x2="2432" y1="1536" y2="1536" x1="1008" />
            <wire x2="2432" y1="1104" y2="1104" x1="2400" />
            <wire x2="2432" y1="1104" y2="1488" x1="2432" />
            <wire x2="2432" y1="1488" y2="1536" x1="2432" />
        </branch>
        <branch name="test(7:0)">
            <wire x2="2416" y1="1488" y2="1488" x1="2400" />
            <wire x2="2416" y1="1472" y2="1488" x1="2416" />
            <wire x2="2592" y1="1472" y2="1472" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2592" y="1472" name="test(7:0)" orien="R0" />
        <branch name="REST">
            <wire x2="1952" y1="1360" y2="1360" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1360" name="REST" orien="R180" />
    </sheet>
</drawing>