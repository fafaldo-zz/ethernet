<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="E_RX_DV" />
        <signal name="E_RX_CLK" />
        <signal name="E_RX_ERR" />
        <signal name="E_RX_D(3:0)" />
        <signal name="DATA_RECEIVED">
        </signal>
        <signal name="BUSY">
        </signal>
        <signal name="TXBUSY">
        </signal>
        <signal name="RXRDY">
        </signal>
        <signal name="RS232_TxD" />
        <signal name="RS232_RxD" />
        <signal name="CLK" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <signal name="XLXN_21" />
        <signal name="RESET" />
        <signal name="XLXN_23(3:0)" />
        <signal name="XLXN_24(7:0)" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="test(7:0)" />
        <port polarity="Input" name="E_RX_DV" />
        <port polarity="Input" name="E_RX_CLK" />
        <port polarity="Input" name="E_RX_ERR" />
        <port polarity="Input" name="E_RX_D(3:0)" />
        <port polarity="Output" name="RS232_TxD" />
        <port polarity="Input" name="RS232_RxD" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="test(7:0)" />
        <blockdef name="RotaryEnc">
            <timestamp>2008-8-28T18:16:0</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="header_display">
            <timestamp>2014-4-30T14:35:50</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <line x2="496" y1="-272" y2="-272" x1="432" />
            <line x2="496" y1="-192" y2="-192" x1="432" />
            <rect width="64" x="432" y="-124" height="24" />
            <line x2="496" y1="-112" y2="-112" x1="432" />
        </blockdef>
        <blockdef name="RS232">
            <timestamp>2008-9-23T11:16:18</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="320" y1="-288" y2="-288" x1="384" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="MII_RX">
            <timestamp>2014-4-30T14:35:45</timestamp>
            <rect width="64" x="432" y="20" height="24" />
            <line x2="496" y1="32" y2="32" x1="432" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="496" y1="-608" y2="-608" x1="432" />
            <line x2="496" y1="-320" y2="-320" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
            <rect width="368" x="64" y="-640" height="768" />
        </blockdef>
        <block symbolname="RotaryEnc" name="XLXI_2">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin name="RotL" />
            <blockpin signalname="XLXN_21" name="RotR" />
            <blockpin signalname="CLK" name="Clk" />
        </block>
        <block symbolname="header_display" name="XLXI_3">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_21" name="start" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="XLXN_23(3:0)" name="ram_output(3:0)" />
            <blockpin signalname="XLXN_25" name="char_we" />
            <blockpin signalname="XLXN_27" name="ram_clk" />
            <blockpin signalname="XLXN_26" name="ram_enable" />
            <blockpin signalname="XLXN_24(7:0)" name="char(7:0)" />
        </block>
        <block symbolname="RS232" name="XLXI_4">
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="RESET" name="Reset" />
            <blockpin signalname="RS232_RxD" name="RS232_RxD" />
            <blockpin signalname="XLXN_25" name="TxStart" />
            <blockpin signalname="XLXN_24(7:0)" name="TxDI(7:0)" />
            <blockpin signalname="TXBUSY" name="TxBusy" />
            <blockpin signalname="RXRDY" name="RxRdy" />
            <blockpin signalname="RS232_TxD" name="RS232_TxD" />
            <blockpin name="RxDO(7:0)" />
            <blockpin signalname="CLK" name="Clk_Sys" />
        </block>
        <block symbolname="MII_RX" name="XLXI_5">
            <blockpin signalname="E_RX_DV" name="recv_strobe" />
            <blockpin signalname="E_RX_CLK" name="recv_clock" />
            <blockpin signalname="E_RX_ERR" name="recv_error" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="XLXN_27" name="ram_clk" />
            <blockpin signalname="XLXN_26" name="ram_enable" />
            <blockpin signalname="E_RX_D(3:0)" name="recv_data(3:0)" />
            <blockpin signalname="DATA_RECEIVED" name="data_received" />
            <blockpin signalname="BUSY" name="busy" />
            <blockpin signalname="XLXN_23(3:0)" name="ram_output(3:0)" />
            <blockpin signalname="test(7:0)" name="test(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="816" y="2256" name="XLXI_2" orien="R0">
        </instance>
        <instance x="736" y="1696" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1664" y="1616" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2704" y="1536" name="XLXI_4" orien="R0">
        </instance>
        <branch name="E_RX_DV">
            <wire x2="736" y1="1088" y2="1088" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="1088" name="E_RX_DV" orien="R180" />
        <branch name="E_RX_CLK">
            <wire x2="736" y1="1152" y2="1152" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="1152" name="E_RX_CLK" orien="R180" />
        <branch name="E_RX_ERR">
            <wire x2="736" y1="1216" y2="1216" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="1216" name="E_RX_ERR" orien="R180" />
        <branch name="E_RX_D(3:0)">
            <wire x2="736" y1="1600" y2="1600" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="1600" name="E_RX_D(3:0)" orien="R180" />
        <branch name="DATA_RECEIVED">
            <wire x2="1264" y1="1088" y2="1088" x1="1232" />
        </branch>
        <branch name="BUSY">
            <wire x2="1264" y1="1376" y2="1376" x1="1232" />
        </branch>
        <branch name="TXBUSY">
            <wire x2="3120" y1="1504" y2="1504" x1="3088" />
        </branch>
        <branch name="RXRDY">
            <wire x2="3120" y1="1440" y2="1440" x1="3088" />
        </branch>
        <branch name="RS232_TxD">
            <wire x2="3120" y1="1312" y2="1312" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1312" name="RS232_TxD" orien="R0" />
        <branch name="RS232_RxD">
            <wire x2="3120" y1="1248" y2="1248" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1248" name="RS232_RxD" orien="R0" />
        <branch name="CLK">
            <wire x2="432" y1="816" y2="816" x1="176" />
            <wire x2="432" y1="816" y2="1344" x1="432" />
            <wire x2="736" y1="1344" y2="1344" x1="432" />
            <wire x2="432" y1="1344" y2="2160" x1="432" />
            <wire x2="816" y1="2160" y2="2160" x1="432" />
            <wire x2="1536" y1="816" y2="816" x1="432" />
            <wire x2="1536" y1="816" y2="1392" x1="1536" />
            <wire x2="1664" y1="1392" y2="1392" x1="1536" />
            <wire x2="2432" y1="816" y2="816" x1="1536" />
            <wire x2="2432" y1="816" y2="1504" x1="2432" />
            <wire x2="2432" y1="1504" y2="1568" x1="2432" />
            <wire x2="2704" y1="1568" y2="1568" x1="2432" />
            <wire x2="2704" y1="1504" y2="1504" x1="2432" />
        </branch>
        <branch name="ROT_A">
            <wire x2="816" y1="2032" y2="2032" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="2032" name="ROT_A" orien="R180" />
        <branch name="ROT_B">
            <wire x2="816" y1="2096" y2="2096" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="2096" name="ROT_B" orien="R180" />
        <branch name="XLXN_21">
            <wire x2="1536" y1="2096" y2="2096" x1="1200" />
            <wire x2="1536" y1="1456" y2="2096" x1="1536" />
            <wire x2="1664" y1="1456" y2="1456" x1="1536" />
        </branch>
        <branch name="RESET">
            <wire x2="368" y1="2352" y2="2352" x1="160" />
            <wire x2="1600" y1="2352" y2="2352" x1="368" />
            <wire x2="2528" y1="2352" y2="2352" x1="1600" />
            <wire x2="368" y1="1408" y2="2352" x1="368" />
            <wire x2="736" y1="1408" y2="1408" x1="368" />
            <wire x2="1600" y1="1520" y2="2352" x1="1600" />
            <wire x2="1664" y1="1520" y2="1520" x1="1600" />
            <wire x2="2528" y1="1440" y2="2352" x1="2528" />
            <wire x2="2704" y1="1440" y2="1440" x1="2528" />
        </branch>
        <branch name="XLXN_23(3:0)">
            <wire x2="1360" y1="1664" y2="1664" x1="1232" />
            <wire x2="1360" y1="1584" y2="1664" x1="1360" />
            <wire x2="1664" y1="1584" y2="1584" x1="1360" />
        </branch>
        <branch name="XLXN_24(7:0)">
            <wire x2="2352" y1="1504" y2="1504" x1="2160" />
            <wire x2="2352" y1="1312" y2="1504" x1="2352" />
            <wire x2="2704" y1="1312" y2="1312" x1="2352" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2608" y1="1264" y2="1264" x1="2160" />
            <wire x2="2608" y1="1264" y2="1376" x1="2608" />
            <wire x2="2704" y1="1376" y2="1376" x1="2608" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="736" y1="1536" y2="1536" x1="320" />
            <wire x2="320" y1="1536" y2="1808" x1="320" />
            <wire x2="2208" y1="1808" y2="1808" x1="320" />
            <wire x2="2208" y1="1424" y2="1424" x1="2160" />
            <wire x2="2208" y1="1424" y2="1808" x1="2208" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="272" y1="1472" y2="1840" x1="272" />
            <wire x2="2272" y1="1840" y2="1840" x1="272" />
            <wire x2="736" y1="1472" y2="1472" x1="272" />
            <wire x2="2272" y1="1344" y2="1344" x1="2160" />
            <wire x2="2272" y1="1344" y2="1840" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="176" y="816" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="160" y="2352" name="RESET" orien="R180" />
        <branch name="test(7:0)">
            <wire x2="1264" y1="1728" y2="1728" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1728" name="test(7:0)" orien="R0" />
    </sheet>
</drawing>