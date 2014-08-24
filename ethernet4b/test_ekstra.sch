<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(7:0)" />
        <signal name="XLXN_3" />
        <signal name="clk" />
        <signal name="XLXN_8" />
        <signal name="reset" />
        <signal name="XLXN_11" />
        <signal name="test(7:0)" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <signal name="RX_DV" />
        <signal name="RX_CLK" />
        <signal name="RX_D(3:0)" />
        <signal name="sss" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="test(7:0)" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="RX_DV" />
        <port polarity="Input" name="RX_CLK" />
        <port polarity="Input" name="RX_D(3:0)" />
        <port polarity="Input" name="sss" />
        <blockdef name="RotaryEnc">
            <timestamp>2014-6-26T18:50:40</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="ethernetRX">
            <timestamp>2014-8-23T22:35:27</timestamp>
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
            <timestamp>2014-8-23T22:22:41</timestamp>
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
        <block symbolname="RotaryEnc" name="XLXI_1">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin name="RotL" />
            <blockpin name="RotR" />
            <blockpin signalname="clk" name="Clk" />
        </block>
        <block symbolname="ethernetRX" name="XLXI_2">
            <blockpin signalname="RX_D(3:0)" name="RX_D(3:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RX_CLK" name="RX_CLK" />
            <blockpin signalname="RX_DV" name="RX_DV" />
            <blockpin signalname="XLXN_11" name="POP" />
            <blockpin name="empty" />
            <blockpin name="full" />
            <blockpin signalname="XLXN_3" name="EOF" />
            <blockpin signalname="XLXN_2(7:0)" name="data_out(7:0)" />
        </block>
        <block symbolname="MAC_source" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="enable" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_2(7:0)" name="data_in(7:0)" />
            <blockpin name="source_MAC(47:0)" />
            <blockpin signalname="test(7:0)" name="test(7:0)" />
        </block>
        <block symbolname="CU" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="sss" name="start" />
            <blockpin signalname="XLXN_3" name="EOF" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_2(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_8" name="enable" />
            <blockpin signalname="XLXN_11" name="POP" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="576" y="2096" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2208" y="1776" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1312" y="1360" name="XLXI_4" orien="R0">
        </instance>
        <instance x="592" y="944" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2(7:0)">
            <wire x2="1136" y1="896" y2="896" x1="976" />
            <wire x2="1136" y1="896" y2="1328" x1="1136" />
            <wire x2="1200" y1="1328" y2="1328" x1="1136" />
            <wire x2="1312" y1="1328" y2="1328" x1="1200" />
            <wire x2="1200" y1="1328" y2="1744" x1="1200" />
            <wire x2="2208" y1="1744" y2="1744" x1="1200" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1152" y1="816" y2="816" x1="976" />
            <wire x2="1152" y1="816" y2="1264" x1="1152" />
            <wire x2="1312" y1="1264" y2="1264" x1="1152" />
        </branch>
        <branch name="clk">
            <wire x2="384" y1="720" y2="720" x1="96" />
            <wire x2="592" y1="720" y2="720" x1="384" />
            <wire x2="384" y1="720" y2="1136" x1="384" />
            <wire x2="1312" y1="1136" y2="1136" x1="384" />
            <wire x2="384" y1="1136" y2="1680" x1="384" />
            <wire x2="384" y1="1680" y2="2000" x1="384" />
            <wire x2="576" y1="2000" y2="2000" x1="384" />
            <wire x2="2208" y1="1680" y2="1680" x1="384" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1952" y1="1232" y2="1232" x1="1696" />
            <wire x2="1952" y1="1232" y2="1552" x1="1952" />
            <wire x2="2208" y1="1552" y2="1552" x1="1952" />
        </branch>
        <branch name="reset">
            <wire x2="1648" y1="1568" y2="1568" x1="64" />
            <wire x2="1648" y1="1568" y2="1616" x1="1648" />
            <wire x2="1824" y1="1616" y2="1616" x1="1648" />
            <wire x2="2208" y1="1616" y2="1616" x1="1824" />
            <wire x2="1824" y1="1136" y2="1136" x1="1696" />
            <wire x2="1824" y1="1136" y2="1616" x1="1824" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="592" y1="912" y2="912" x1="512" />
            <wire x2="512" y1="912" y2="992" x1="512" />
            <wire x2="1760" y1="992" y2="992" x1="512" />
            <wire x2="1760" y1="992" y2="1328" x1="1760" />
            <wire x2="1760" y1="1328" y2="1328" x1="1696" />
        </branch>
        <branch name="test(7:0)">
            <wire x2="2704" y1="1808" y2="1808" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1808" name="test(7:0)" orien="R0" />
        <branch name="ROT_A">
            <wire x2="576" y1="1872" y2="1872" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="1872" name="ROT_A" orien="R180" />
        <branch name="ROT_B">
            <wire x2="576" y1="1936" y2="1936" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="1936" name="ROT_B" orien="R180" />
        <branch name="RX_DV">
            <wire x2="592" y1="848" y2="848" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="848" name="RX_DV" orien="R180" />
        <branch name="RX_CLK">
            <wire x2="592" y1="784" y2="784" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="784" name="RX_CLK" orien="R180" />
        <branch name="RX_D(3:0)">
            <wire x2="592" y1="656" y2="656" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="656" name="RX_D(3:0)" orien="R180" />
        <iomarker fontsize="28" x="96" y="720" name="clk" orien="R180" />
        <iomarker fontsize="28" x="64" y="1568" name="reset" orien="R180" />
        <branch name="sss">
            <wire x2="1312" y1="1200" y2="1200" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1200" name="sss" orien="R180" />
    </sheet>
</drawing>