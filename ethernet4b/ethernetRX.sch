<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RX_D(3:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6(11:0)" />
        <signal name="XLXN_7(10:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14(13:0)" />
        <signal name="XLXN_15(12:0)" />
        <signal name="XLXN_16(0:0)" />
        <signal name="XLXN_17(1:0)" />
        <signal name="clk" />
        <signal name="RX_CLK" />
        <signal name="RX_DV" />
        <signal name="POP" />
        <signal name="empty" />
        <signal name="full" />
        <signal name="EOF" />
        <signal name="data_out(7:0)" />
        <signal name="XLXN_27(7:0)" />
        <port polarity="Input" name="RX_D(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RX_CLK" />
        <port polarity="Input" name="RX_DV" />
        <port polarity="Input" name="POP" />
        <port polarity="Output" name="empty" />
        <port polarity="Output" name="full" />
        <port polarity="Output" name="EOF" />
        <port polarity="Output" name="data_out(7:0)" />
        <blockdef name="fifo_control_unit">
            <timestamp>2014-8-16T19:11:19</timestamp>
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <rect width="64" x="320" y="340" height="24" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <rect width="64" x="320" y="404" height="24" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <rect width="64" x="320" y="468" height="24" />
            <line x2="384" y1="480" y2="480" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-768" height="1280" />
        </blockdef>
        <blockdef name="new_frame_buffer">
            <timestamp>2014-8-10T16:25:8</timestamp>
            <rect width="256" x="64" y="-832" height="832" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-812" height="24" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="new_eof_buffer">
            <timestamp>2014-8-10T16:24:37</timestamp>
            <rect width="256" x="64" y="-768" height="768" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-748" height="24" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="fifo_control_unit" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RX_CLK" name="Rx_Clk" />
            <blockpin signalname="RX_DV" name="Rx_DV" />
            <blockpin signalname="POP" name="POP" />
            <blockpin signalname="XLXN_27(7:0)" name="doB(7:0)" />
            <blockpin signalname="XLXN_17(1:0)" name="doEOFB(1:0)" />
            <blockpin signalname="RX_D(3:0)" name="Rx_D(3:0)" />
            <blockpin signalname="XLXN_10" name="clkA" />
            <blockpin signalname="XLXN_11" name="clkB" />
            <blockpin signalname="XLXN_4" name="enA" />
            <blockpin signalname="XLXN_5" name="enB" />
            <blockpin signalname="XLXN_9" name="weA" />
            <blockpin signalname="XLXN_12" name="EOFenA" />
            <blockpin signalname="XLXN_13" name="EOFweA" />
            <blockpin signalname="empty" name="empty" />
            <blockpin signalname="full" name="full" />
            <blockpin signalname="EOF" name="EOF" />
            <blockpin signalname="XLXN_6(11:0)" name="addrA(11:0)" />
            <blockpin signalname="XLXN_7(10:0)" name="addrB(10:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="diA(3:0)" />
            <blockpin signalname="XLXN_14(13:0)" name="addrEOFA(13:0)" />
            <blockpin signalname="XLXN_15(12:0)" name="addrEOFB(12:0)" />
            <blockpin signalname="XLXN_16(0:0)" name="diEOFA(0:0)" />
            <blockpin signalname="data_out(7:0)" name="data_out(7:0)" />
            <blockpin name="test(7:0)" />
        </block>
        <block symbolname="new_frame_buffer" name="XLXI_2">
            <blockpin signalname="XLXN_10" name="CLKA" />
            <blockpin signalname="XLXN_11" name="CLKB" />
            <blockpin signalname="XLXN_4" name="ENA" />
            <blockpin signalname="XLXN_5" name="ENB" />
            <blockpin name="SSRA" />
            <blockpin name="SSRB" />
            <blockpin signalname="XLXN_9" name="WEA" />
            <blockpin name="WEB" />
            <blockpin signalname="XLXN_6(11:0)" name="ADDRA(11:0)" />
            <blockpin signalname="XLXN_7(10:0)" name="ADDRB(10:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="DIA(3:0)" />
            <blockpin name="DIB(7:0)" />
            <blockpin name="DIPB(0:0)" />
            <blockpin name="DOA(3:0)" />
            <blockpin signalname="XLXN_27(7:0)" name="DOB(7:0)" />
            <blockpin name="DOPB(0:0)" />
        </block>
        <block symbolname="new_eof_buffer" name="XLXI_3">
            <blockpin signalname="XLXN_10" name="CLKA" />
            <blockpin signalname="XLXN_11" name="CLKB" />
            <blockpin signalname="XLXN_12" name="ENA" />
            <blockpin name="ENB" />
            <blockpin name="SSRA" />
            <blockpin name="SSRB" />
            <blockpin signalname="XLXN_13" name="WEA" />
            <blockpin name="WEB" />
            <blockpin signalname="XLXN_14(13:0)" name="ADDRA(13:0)" />
            <blockpin signalname="XLXN_15(12:0)" name="ADDRB(12:0)" />
            <blockpin signalname="XLXN_16(0:0)" name="DIA(0:0)" />
            <blockpin name="DIB(1:0)" />
            <blockpin name="DOA(0:0)" />
            <blockpin signalname="XLXN_17(1:0)" name="DOB(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1952" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1952" y="2208" name="XLXI_3" orien="R0">
        </instance>
        <instance x="624" y="1472" name="XLXI_1" orien="R0">
        </instance>
        <branch name="RX_D(3:0)">
            <wire x2="624" y1="1376" y2="1376" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="1376" name="RX_D(3:0)" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="1504" y1="864" y2="864" x1="1008" />
            <wire x2="1504" y1="496" y2="864" x1="1504" />
            <wire x2="1952" y1="496" y2="496" x1="1504" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1520" y1="928" y2="928" x1="1008" />
            <wire x2="1520" y1="560" y2="928" x1="1520" />
            <wire x2="1952" y1="560" y2="560" x1="1520" />
        </branch>
        <branch name="XLXN_6(11:0)">
            <wire x2="1536" y1="1248" y2="1248" x1="1008" />
            <wire x2="1536" y1="880" y2="1248" x1="1536" />
            <wire x2="1952" y1="880" y2="880" x1="1536" />
        </branch>
        <branch name="XLXN_7(10:0)">
            <wire x2="1552" y1="1312" y2="1312" x1="1008" />
            <wire x2="1552" y1="944" y2="1312" x1="1552" />
            <wire x2="1952" y1="944" y2="944" x1="1552" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="1568" y1="1376" y2="1376" x1="1008" />
            <wire x2="1568" y1="1008" y2="1376" x1="1568" />
            <wire x2="1952" y1="1008" y2="1008" x1="1568" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1584" y1="1632" y2="1632" x1="1008" />
            <wire x2="1952" y1="752" y2="752" x1="1584" />
            <wire x2="1584" y1="752" y2="1632" x1="1584" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1328" y1="736" y2="736" x1="1008" />
            <wire x2="1472" y1="736" y2="736" x1="1328" />
            <wire x2="1328" y1="736" y2="1472" x1="1328" />
            <wire x2="1952" y1="1472" y2="1472" x1="1328" />
            <wire x2="1472" y1="368" y2="736" x1="1472" />
            <wire x2="1952" y1="368" y2="368" x1="1472" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1312" y1="800" y2="800" x1="1008" />
            <wire x2="1488" y1="800" y2="800" x1="1312" />
            <wire x2="1312" y1="800" y2="1536" x1="1312" />
            <wire x2="1952" y1="1536" y2="1536" x1="1312" />
            <wire x2="1488" y1="432" y2="800" x1="1488" />
            <wire x2="1952" y1="432" y2="432" x1="1488" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1616" y1="1696" y2="1696" x1="1008" />
            <wire x2="1952" y1="1600" y2="1600" x1="1616" />
            <wire x2="1616" y1="1600" y2="1696" x1="1616" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1472" y1="1760" y2="1760" x1="1008" />
            <wire x2="1472" y1="1760" y2="1856" x1="1472" />
            <wire x2="1952" y1="1856" y2="1856" x1="1472" />
        </branch>
        <branch name="XLXN_14(13:0)">
            <wire x2="1456" y1="1824" y2="1824" x1="1008" />
            <wire x2="1456" y1="1824" y2="1984" x1="1456" />
            <wire x2="1952" y1="1984" y2="1984" x1="1456" />
        </branch>
        <branch name="XLXN_15(12:0)">
            <wire x2="1440" y1="1888" y2="1888" x1="1008" />
            <wire x2="1440" y1="1888" y2="2048" x1="1440" />
            <wire x2="1952" y1="2048" y2="2048" x1="1440" />
        </branch>
        <branch name="XLXN_16(0:0)">
            <wire x2="1424" y1="1952" y2="1952" x1="1008" />
            <wire x2="1424" y1="1952" y2="2112" x1="1424" />
            <wire x2="1952" y1="2112" y2="2112" x1="1424" />
        </branch>
        <branch name="XLXN_17(1:0)">
            <wire x2="624" y1="1696" y2="1696" x1="544" />
            <wire x2="544" y1="1696" y2="2272" x1="544" />
            <wire x2="2416" y1="2272" y2="2272" x1="544" />
            <wire x2="2416" y1="2176" y2="2176" x1="2336" />
            <wire x2="2416" y1="2176" y2="2272" x1="2416" />
        </branch>
        <branch name="clk">
            <wire x2="624" y1="736" y2="736" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="736" name="clk" orien="R180" />
        <branch name="RX_CLK">
            <wire x2="624" y1="864" y2="864" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="864" name="RX_CLK" orien="R180" />
        <branch name="RX_DV">
            <wire x2="624" y1="992" y2="992" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="992" name="RX_DV" orien="R180" />
        <branch name="POP">
            <wire x2="624" y1="1120" y2="1120" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="1120" name="POP" orien="R180" />
        <branch name="empty">
            <wire x2="1040" y1="1056" y2="1056" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1056" name="empty" orien="R0" />
        <branch name="full">
            <wire x2="1040" y1="1120" y2="1120" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1120" name="full" orien="R0" />
        <branch name="EOF">
            <wire x2="1040" y1="1184" y2="1184" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1184" name="EOF" orien="R0" />
        <branch name="data_out(7:0)">
            <wire x2="1040" y1="1440" y2="1440" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1440" name="data_out(7:0)" orien="R0" />
        <branch name="XLXN_27(7:0)">
            <wire x2="2400" y1="176" y2="176" x1="320" />
            <wire x2="2400" y1="176" y2="752" x1="2400" />
            <wire x2="320" y1="176" y2="1248" x1="320" />
            <wire x2="624" y1="1248" y2="1248" x1="320" />
            <wire x2="2400" y1="752" y2="752" x1="2336" />
        </branch>
    </sheet>
</drawing>