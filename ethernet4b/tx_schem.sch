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
        <signal name="XLXN_5" />
        <signal name="XLXN_6(11:0)" />
        <signal name="XLXN_7(10:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_9(3:0)" />
        <signal name="XLXN_10" />
        <signal name="clk" />
        <signal name="E_TX_CLK" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <signal name="XLXN_20(7:0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="XLXN_33" />
        <signal name="E_TX_EN" />
        <signal name="XLXN_34(7:0)" />
        <signal name="XLXN_36(3:0)" />
        <signal name="E_TXD(3:0)" />
        <signal name="XLXN_38(7:0)" />
        <signal name="test(7:0)" />
        <signal name="XLXN_40(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="E_TX_CLK" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="E_TX_EN" />
        <port polarity="Output" name="E_TXD(3:0)" />
        <port polarity="Output" name="test(7:0)" />
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
        <blockdef name="RotaryEnc">
            <timestamp>2014-6-26T18:50:40</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2014-6-26T18:50:40</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="vga_tx_display">
            <timestamp>2014-8-18T20:21:45</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="new_tx_frame_buffer" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="CLKA" />
            <blockpin signalname="XLXN_2" name="CLKB" />
            <blockpin signalname="XLXN_3" name="ENA" />
            <blockpin signalname="XLXN_4" name="ENB" />
            <blockpin name="SSRA" />
            <blockpin name="SSRB" />
            <blockpin name="WEA" />
            <blockpin signalname="XLXN_5" name="WEB" />
            <blockpin signalname="XLXN_6(11:0)" name="ADDRA(11:0)" />
            <blockpin signalname="XLXN_7(10:0)" name="ADDRB(10:0)" />
            <blockpin name="DIA(3:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="DIB(7:0)" />
            <blockpin name="DIPB(0:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="DOA(3:0)" />
            <blockpin name="DOB(7:0)" />
            <blockpin name="DOPB(0:0)" />
        </block>
        <block symbolname="new_tx_fifo_control_unit" name="XLXI_2">
            <blockpin name="EOF" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="E_TX_CLK" name="Tx_Clk" />
            <blockpin name="PUSH" />
            <blockpin signalname="XLXN_10" name="start" />
            <blockpin signalname="XLXN_9(3:0)" name="doA(3:0)" />
            <blockpin name="data_in(7:0)" />
            <blockpin signalname="XLXN_1" name="clkA" />
            <blockpin signalname="XLXN_2" name="clkB" />
            <blockpin signalname="XLXN_3" name="enA" />
            <blockpin signalname="XLXN_4" name="enB" />
            <blockpin signalname="XLXN_5" name="weB" />
            <blockpin name="empty" />
            <blockpin name="full" />
            <blockpin signalname="E_TX_EN" name="Tx_En" />
            <blockpin name="busy" />
            <blockpin signalname="XLXN_6(11:0)" name="addrA(11:0)" />
            <blockpin signalname="XLXN_7(10:0)" name="addrB(10:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="diB(7:0)" />
            <blockpin signalname="E_TXD(3:0)" name="Tx_D(3:0)" />
            <blockpin signalname="test(7:0)" name="test(7:0)" />
        </block>
        <block symbolname="RotaryEnc" name="XLXI_3">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin name="RotL" />
            <blockpin signalname="XLXN_10" name="RotR" />
            <blockpin signalname="clk" name="Clk" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_4">
            <blockpin signalname="XLXN_20(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="clk" name="Clk_Sys" />
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin signalname="XLXN_22" name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_24" name="VGA_RGB" />
            <blockpin signalname="XLXN_33" name="Char_WE" />
        </block>
        <block symbolname="vga_tx_display" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="E_TX_CLK" name="E_TX_CLK" />
            <blockpin signalname="E_TX_EN" name="E_TX_EN" />
            <blockpin name="reset" />
            <blockpin signalname="E_TXD(3:0)" name="E_TXD(3:0)" />
            <blockpin signalname="XLXN_33" name="Char_WE" />
            <blockpin signalname="XLXN_20(7:0)" name="Char_DI(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_22" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_24" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_24" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_24" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="672" y="2240" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1072" y="1568" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2192" y="1552" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1824" y1="576" y2="576" x1="1456" />
            <wire x2="1824" y1="576" y2="752" x1="1824" />
            <wire x2="2192" y1="752" y2="752" x1="1824" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1808" y1="640" y2="640" x1="1456" />
            <wire x2="1808" y1="640" y2="816" x1="1808" />
            <wire x2="2192" y1="816" y2="816" x1="1808" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1792" y1="704" y2="704" x1="1456" />
            <wire x2="1792" y1="704" y2="880" x1="1792" />
            <wire x2="2192" y1="880" y2="880" x1="1792" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1776" y1="768" y2="768" x1="1456" />
            <wire x2="1776" y1="768" y2="944" x1="1776" />
            <wire x2="2192" y1="944" y2="944" x1="1776" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1760" y1="832" y2="832" x1="1456" />
            <wire x2="1760" y1="832" y2="1200" x1="1760" />
            <wire x2="2192" y1="1200" y2="1200" x1="1760" />
        </branch>
        <branch name="XLXN_6(11:0)">
            <wire x2="1744" y1="1152" y2="1152" x1="1456" />
            <wire x2="1744" y1="1152" y2="1264" x1="1744" />
            <wire x2="2192" y1="1264" y2="1264" x1="1744" />
        </branch>
        <branch name="XLXN_7(10:0)">
            <wire x2="1728" y1="1216" y2="1216" x1="1456" />
            <wire x2="1728" y1="1216" y2="1328" x1="1728" />
            <wire x2="2192" y1="1328" y2="1328" x1="1728" />
        </branch>
        <branch name="XLXN_8(7:0)">
            <wire x2="1824" y1="1280" y2="1280" x1="1456" />
            <wire x2="1824" y1="1280" y2="1456" x1="1824" />
            <wire x2="2192" y1="1456" y2="1456" x1="1824" />
        </branch>
        <branch name="XLXN_9(3:0)">
            <wire x2="1520" y1="1344" y2="1344" x1="1456" />
            <wire x2="1520" y1="1344" y2="1616" x1="1520" />
            <wire x2="2656" y1="1616" y2="1616" x1="1520" />
            <wire x2="2656" y1="752" y2="752" x1="2576" />
            <wire x2="2656" y1="752" y2="1616" x1="2656" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1008" y1="1536" y2="1920" x1="1008" />
            <wire x2="1120" y1="1920" y2="1920" x1="1008" />
            <wire x2="1120" y1="1920" y2="2080" x1="1120" />
            <wire x2="1072" y1="1536" y2="1536" x1="1008" />
            <wire x2="1120" y1="2080" y2="2080" x1="1056" />
        </branch>
        <branch name="clk">
            <wire x2="544" y1="800" y2="800" x1="320" />
            <wire x2="752" y1="800" y2="800" x1="544" />
            <wire x2="752" y1="800" y2="816" x1="752" />
            <wire x2="1072" y1="816" y2="816" x1="752" />
            <wire x2="544" y1="800" y2="2144" x1="544" />
            <wire x2="672" y1="2144" y2="2144" x1="544" />
            <wire x2="544" y1="2144" y2="2512" x1="544" />
            <wire x2="1504" y1="2512" y2="2512" x1="544" />
            <wire x2="2704" y1="2512" y2="2512" x1="1504" />
            <wire x2="2720" y1="2512" y2="2512" x1="2704" />
            <wire x2="1840" y1="2112" y2="2112" x1="1504" />
            <wire x2="1504" y1="2112" y2="2512" x1="1504" />
            <wire x2="2720" y1="2448" y2="2448" x1="2704" />
            <wire x2="2704" y1="2448" y2="2512" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="320" y="800" name="clk" orien="R180" />
        <branch name="E_TX_CLK">
            <wire x2="1056" y1="1056" y2="1056" x1="1040" />
            <wire x2="1072" y1="1056" y2="1056" x1="1056" />
            <wire x2="1056" y1="1056" y2="1632" x1="1056" />
            <wire x2="1104" y1="1632" y2="1632" x1="1056" />
            <wire x2="1104" y1="1632" y2="2176" x1="1104" />
            <wire x2="1840" y1="2176" y2="2176" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1056" name="E_TX_CLK" orien="R180" />
        <iomarker fontsize="28" x="1488" y="1024" name="E_TX_EN" orien="R0" />
        <iomarker fontsize="28" x="1488" y="1472" name="E_TXD(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1488" y="1536" name="test(7:0)" orien="R0" />
        <branch name="ROT_A">
            <wire x2="672" y1="2016" y2="2016" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="2016" name="ROT_A" orien="R180" />
        <branch name="ROT_B">
            <wire x2="672" y1="2080" y2="2080" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="2080" name="ROT_B" orien="R180" />
        <instance x="2720" y="2448" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_20(7:0)">
            <wire x2="2288" y1="2176" y2="2176" x1="2224" />
            <wire x2="2288" y1="2176" y2="2320" x1="2288" />
            <wire x2="2544" y1="2320" y2="2320" x1="2288" />
            <wire x2="2720" y1="1840" y2="1840" x1="2544" />
            <wire x2="2544" y1="1840" y2="2320" x1="2544" />
        </branch>
        <instance x="2368" y="2240" name="XLXI_6" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="2432" y1="2240" y2="2288" x1="2432" />
            <wire x2="2720" y1="2288" y2="2288" x1="2432" />
        </branch>
        <instance x="3216" y="2000" name="XLXI_7" orien="R0" />
        <instance x="3216" y="2080" name="XLXI_8" orien="R0" />
        <instance x="3216" y="2160" name="XLXI_9" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="3184" y1="1968" y2="1968" x1="3152" />
            <wire x2="3216" y1="1968" y2="1968" x1="3184" />
            <wire x2="3184" y1="1968" y2="2048" x1="3184" />
            <wire x2="3216" y1="2048" y2="2048" x1="3184" />
            <wire x2="3184" y1="2048" y2="2128" x1="3184" />
            <wire x2="3216" y1="2128" y2="2128" x1="3184" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3184" y1="1840" y2="1840" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3184" y="1840" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="3184" y1="1904" y2="1904" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3184" y="1904" name="VGA_VS" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3472" y1="2128" y2="2128" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="3472" y="2128" name="VGA_B" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3472" y1="2048" y2="2048" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="3472" y="2048" name="VGA_G" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3472" y1="1968" y2="1968" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="3472" y="1968" name="VGA_R" orien="R0" />
        <instance x="1840" y="2080" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_33">
            <wire x2="2464" y1="2112" y2="2112" x1="2224" />
            <wire x2="2464" y1="1904" y2="2112" x1="2464" />
            <wire x2="2720" y1="1904" y2="1904" x1="2464" />
        </branch>
        <branch name="E_TX_EN">
            <wire x2="1472" y1="1024" y2="1024" x1="1456" />
            <wire x2="1488" y1="1024" y2="1024" x1="1472" />
            <wire x2="1472" y1="1024" y2="1120" x1="1472" />
            <wire x2="1712" y1="1120" y2="1120" x1="1472" />
            <wire x2="1712" y1="1120" y2="2240" x1="1712" />
            <wire x2="1840" y1="2240" y2="2240" x1="1712" />
        </branch>
        <branch name="E_TXD(3:0)">
            <wire x2="1472" y1="1472" y2="1472" x1="1456" />
            <wire x2="1488" y1="1472" y2="1472" x1="1472" />
            <wire x2="1472" y1="1472" y2="2048" x1="1472" />
            <wire x2="1840" y1="2048" y2="2048" x1="1472" />
        </branch>
        <branch name="test(7:0)">
            <wire x2="1488" y1="1536" y2="1536" x1="1456" />
        </branch>
    </sheet>
</drawing>