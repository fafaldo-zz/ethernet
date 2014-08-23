<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(11:0)" />
        <signal name="XLXN_2(10:0)" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="clk" />
        <signal name="TX_CLK" />
        <signal name="PUSH" />
        <signal name="start" />
        <signal name="busy" />
        <signal name="full" />
        <signal name="TX_EN" />
        <signal name="empty" />
        <signal name="TX_D(3:0)" />
        <signal name="data_in(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="TX_CLK" />
        <port polarity="Input" name="PUSH" />
        <port polarity="Input" name="start" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="full" />
        <port polarity="Output" name="TX_EN" />
        <port polarity="Output" name="empty" />
        <port polarity="Output" name="TX_D(3:0)" />
        <port polarity="Input" name="data_in(7:0)" />
        <blockdef name="new_tx_frame_buffer">
            <timestamp>2014-8-18T20:21:18</timestamp>
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
        <blockdef name="new_tx_fifo_control_unit">
            <timestamp>2014-8-18T19:39:50</timestamp>
            <rect width="256" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-752" y2="-752" x1="64" />
            <line x2="0" y1="-512" y2="-512" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="new_tx_frame_buffer" name="XLXI_1">
            <blockpin signalname="XLXN_5" name="CLKA" />
            <blockpin signalname="XLXN_6" name="CLKB" />
            <blockpin signalname="XLXN_7" name="ENA" />
            <blockpin signalname="XLXN_8" name="ENB" />
            <blockpin name="SSRA" />
            <blockpin name="SSRB" />
            <blockpin name="WEA" />
            <blockpin signalname="XLXN_9" name="WEB" />
            <blockpin signalname="XLXN_1(11:0)" name="ADDRA(11:0)" />
            <blockpin signalname="XLXN_2(10:0)" name="ADDRB(10:0)" />
            <blockpin name="DIA(3:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="DIB(7:0)" />
            <blockpin name="DIPB(0:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="DOA(3:0)" />
            <blockpin name="DOB(7:0)" />
            <blockpin name="DOPB(0:0)" />
        </block>
        <block symbolname="new_tx_fifo_control_unit" name="XLXI_2">
            <blockpin name="EOF" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="TX_CLK" name="Tx_Clk" />
            <blockpin signalname="PUSH" name="PUSH" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="XLXN_4(3:0)" name="doA(3:0)" />
            <blockpin signalname="data_in(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_5" name="clkA" />
            <blockpin signalname="XLXN_6" name="clkB" />
            <blockpin signalname="XLXN_7" name="enA" />
            <blockpin signalname="XLXN_8" name="enB" />
            <blockpin signalname="XLXN_9" name="weB" />
            <blockpin signalname="empty" name="empty" />
            <blockpin signalname="full" name="full" />
            <blockpin signalname="TX_EN" name="Tx_En" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="XLXN_1(11:0)" name="addrA(11:0)" />
            <blockpin signalname="XLXN_2(10:0)" name="addrB(10:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="diB(7:0)" />
            <blockpin signalname="TX_D(3:0)" name="Tx_D(3:0)" />
            <blockpin name="test(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="864" y="1856" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2016" y="1728" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1(11:0)">
            <wire x2="2016" y1="1440" y2="1440" x1="1248" />
        </branch>
        <branch name="XLXN_2(10:0)">
            <wire x2="2016" y1="1504" y2="1504" x1="1248" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="1632" y1="1568" y2="1568" x1="1248" />
            <wire x2="1632" y1="1568" y2="1632" x1="1632" />
            <wire x2="2016" y1="1632" y2="1632" x1="1632" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="1296" y1="1632" y2="1632" x1="1248" />
            <wire x2="1296" y1="1632" y2="1792" x1="1296" />
            <wire x2="2480" y1="1792" y2="1792" x1="1296" />
            <wire x2="2480" y1="928" y2="928" x1="2400" />
            <wire x2="2480" y1="928" y2="1792" x1="2480" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1632" y1="864" y2="864" x1="1248" />
            <wire x2="1632" y1="864" y2="928" x1="1632" />
            <wire x2="2016" y1="928" y2="928" x1="1632" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1616" y1="928" y2="928" x1="1248" />
            <wire x2="1616" y1="928" y2="992" x1="1616" />
            <wire x2="2016" y1="992" y2="992" x1="1616" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1600" y1="992" y2="992" x1="1248" />
            <wire x2="1600" y1="992" y2="1056" x1="1600" />
            <wire x2="2016" y1="1056" y2="1056" x1="1600" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1584" y1="1056" y2="1056" x1="1248" />
            <wire x2="1584" y1="1056" y2="1120" x1="1584" />
            <wire x2="2016" y1="1120" y2="1120" x1="1584" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1568" y1="1120" y2="1120" x1="1248" />
            <wire x2="1568" y1="1120" y2="1376" x1="1568" />
            <wire x2="2016" y1="1376" y2="1376" x1="1568" />
        </branch>
        <branch name="clk">
            <wire x2="864" y1="1104" y2="1104" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="1104" name="clk" orien="R180" />
        <branch name="TX_CLK">
            <wire x2="864" y1="1344" y2="1344" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="1344" name="TX_CLK" orien="R180" />
        <branch name="PUSH">
            <wire x2="864" y1="1584" y2="1584" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="1584" name="PUSH" orien="R180" />
        <branch name="start">
            <wire x2="864" y1="1824" y2="1824" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="1824" name="start" orien="R180" />
        <branch name="busy">
            <wire x2="1280" y1="1376" y2="1376" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1376" name="busy" orien="R0" />
        <branch name="full">
            <wire x2="1280" y1="1248" y2="1248" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1248" name="full" orien="R0" />
        <branch name="TX_EN">
            <wire x2="1280" y1="1312" y2="1312" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1312" name="TX_EN" orien="R0" />
        <branch name="empty">
            <wire x2="1280" y1="1184" y2="1184" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1184" name="empty" orien="R0" />
        <branch name="TX_D(3:0)">
            <wire x2="1264" y1="1760" y2="1760" x1="1248" />
            <wire x2="1328" y1="1760" y2="1760" x1="1264" />
        </branch>
        <branch name="data_in(7:0)">
            <wire x2="1264" y1="1696" y2="1696" x1="1248" />
            <wire x2="1328" y1="1696" y2="1696" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1328" y="1760" name="TX_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1328" y="1696" name="data_in(7:0)" orien="R0" />
    </sheet>
</drawing>