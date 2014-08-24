<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(7:0)" />
        <signal name="XLXN_7" />
        <signal name="start">
        </signal>
        <signal name="test(7:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="reset" />
        <signal name="RX_D(3:0)" />
        <signal name="RX_CLK" />
        <signal name="RX_DV" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="test(7:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="RX_D(3:0)" />
        <port polarity="Input" name="RX_CLK" />
        <port polarity="Input" name="RX_DV" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <blockdef name="ethernetRX">
            <timestamp>2014-8-24T8:46:51</timestamp>
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
        <blockdef name="MAC_source">
            <timestamp>2014-8-24T9:4:21</timestamp>
            <rect width="64" x="400" y="20" height="24" />
            <line x2="464" y1="32" y2="32" x1="400" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="336" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="CU">
            <timestamp>2014-8-23T20:29:6</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="RotaryEnc">
            <timestamp>2014-6-26T18:50:40</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="ethernetRX" name="XLXI_1">
            <blockpin signalname="RX_D(3:0)" name="RX_D(3:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RX_CLK" name="RX_CLK" />
            <blockpin signalname="RX_DV" name="RX_DV" />
            <blockpin signalname="XLXN_3" name="POP" />
            <blockpin name="empty" />
            <blockpin name="full" />
            <blockpin signalname="XLXN_7" name="EOF" />
            <blockpin signalname="XLXN_5(7:0)" name="data_out(7:0)" />
        </block>
        <block symbolname="MAC_source" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="enable" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_5(7:0)" name="data_in(7:0)" />
            <blockpin name="source_MAC(47:0)" />
            <blockpin signalname="test(7:0)" name="test(7:0)" />
        </block>
        <block symbolname="CU" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="XLXN_7" name="EOF" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_5(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_4" name="enable" />
            <blockpin signalname="XLXN_3" name="POP" />
        </block>
        <block symbolname="RotaryEnc" name="XLXI_4">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin name="RotL" />
            <blockpin signalname="start" name="RotR" />
            <blockpin signalname="clk" name="Clk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="960" y="1072" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1872" y="1888" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1952" y="1024" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="304" y1="848" y2="848" x1="96" />
            <wire x2="304" y1="848" y2="1792" x1="304" />
            <wire x2="1872" y1="1792" y2="1792" x1="304" />
            <wire x2="304" y1="1792" y2="2048" x1="304" />
            <wire x2="720" y1="2048" y2="2048" x1="304" />
            <wire x2="448" y1="848" y2="848" x1="304" />
            <wire x2="960" y1="848" y2="848" x1="448" />
            <wire x2="448" y1="688" y2="848" x1="448" />
            <wire x2="1408" y1="688" y2="688" x1="448" />
            <wire x2="1408" y1="688" y2="800" x1="1408" />
            <wire x2="1952" y1="800" y2="800" x1="1408" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="880" y1="672" y2="1040" x1="880" />
            <wire x2="960" y1="1040" y2="1040" x1="880" />
            <wire x2="2400" y1="672" y2="672" x1="880" />
            <wire x2="2400" y1="672" y2="992" x1="2400" />
            <wire x2="2400" y1="992" y2="992" x1="2336" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1872" y1="1664" y2="1664" x1="1808" />
            <wire x2="1808" y1="1664" y2="2016" x1="1808" />
            <wire x2="2384" y1="2016" y2="2016" x1="1808" />
            <wire x2="2384" y1="896" y2="896" x1="2336" />
            <wire x2="2384" y1="896" y2="2016" x1="2384" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="1600" y1="1024" y2="1024" x1="1344" />
            <wire x2="1600" y1="1024" y2="1856" x1="1600" />
            <wire x2="1872" y1="1856" y2="1856" x1="1600" />
            <wire x2="1952" y1="992" y2="992" x1="1600" />
            <wire x2="1600" y1="992" y2="1024" x1="1600" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1648" y1="944" y2="944" x1="1344" />
            <wire x2="1648" y1="928" y2="944" x1="1648" />
            <wire x2="1952" y1="928" y2="928" x1="1648" />
        </branch>
        <branch name="start">
            <wire x2="1184" y1="1984" y2="1984" x1="1104" />
            <wire x2="1184" y1="1568" y2="1984" x1="1184" />
            <wire x2="1920" y1="1568" y2="1568" x1="1184" />
            <wire x2="1952" y1="864" y2="864" x1="1920" />
            <wire x2="1920" y1="864" y2="1568" x1="1920" />
        </branch>
        <branch name="test(7:0)">
            <wire x2="2368" y1="1920" y2="1920" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1920" name="test(7:0)" orien="R0" />
        <iomarker fontsize="28" x="96" y="848" name="clk" orien="R180" />
        <instance x="720" y="2144" name="XLXI_4" orien="R0">
        </instance>
        <branch name="reset">
            <wire x2="944" y1="1728" y2="1728" x1="736" />
            <wire x2="1872" y1="1728" y2="1728" x1="944" />
            <wire x2="944" y1="1584" y2="1728" x1="944" />
            <wire x2="2368" y1="1584" y2="1584" x1="944" />
            <wire x2="2368" y1="800" y2="800" x1="2336" />
            <wire x2="2368" y1="800" y2="1584" x1="2368" />
        </branch>
        <branch name="RX_D(3:0)">
            <wire x2="960" y1="784" y2="784" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="784" name="RX_D(3:0)" orien="R180" />
        <branch name="RX_CLK">
            <wire x2="960" y1="912" y2="912" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="912" name="RX_CLK" orien="R180" />
        <branch name="RX_DV">
            <wire x2="960" y1="976" y2="976" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="976" name="RX_DV" orien="R180" />
        <branch name="ROT_A">
            <wire x2="720" y1="1920" y2="1920" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="1920" name="ROT_A" orien="R180" />
        <branch name="ROT_B">
            <wire x2="720" y1="1984" y2="1984" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="1984" name="ROT_B" orien="R180" />
        <iomarker fontsize="28" x="736" y="1728" name="reset" orien="R180" />
    </sheet>
</drawing>