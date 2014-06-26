<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="E_RX_CLK" />
        <signal name="E_RX_D(3:0)" />
        <signal name="CLK" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <signal name="XLXN_21" />
        <signal name="RESET" />
        <signal name="XLXN_26" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29(7:0)" />
        <signal name="XLXN_30" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_35" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_36(7:0)" />
        <signal name="E_RX_DV" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51(11:0)" />
        <signal name="XLXN_52(10:0)" />
        <signal name="XLXN_53(3:0)" />
        <signal name="XLXN_54(7:0)" />
        <signal name="EMPTY" />
        <signal name="FULL" />
        <signal name="test(7:0)" />
        <port polarity="Input" name="E_RX_CLK" />
        <port polarity="Input" name="E_RX_D(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="E_RX_DV" />
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
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
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
        <blockdef name="vga_display">
            <timestamp>2014-6-26T18:35:37</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-128" y2="-128" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="frame_buffer">
            <timestamp>2014-6-26T17:33:42</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
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
            <rect width="64" x="320" y="-620" height="24" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="fifo_control_unit">
            <timestamp>2014-6-26T18:31:15</timestamp>
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
            <line x2="384" y1="-480" y2="-480" x1="320" />
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
            <rect width="256" x="64" y="-768" height="832" />
        </blockdef>
        <block symbolname="RotaryEnc" name="XLXI_2">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin name="RotL" />
            <blockpin signalname="XLXN_21" name="RotR" />
            <blockpin signalname="CLK" name="Clk" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_6">
            <blockpin signalname="XLXN_29(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_30" name="Home" />
            <blockpin signalname="XLXN_30" name="NewLine" />
            <blockpin signalname="XLXN_30" name="Goto00" />
            <blockpin signalname="CLK" name="Clk_Sys" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="XLXN_30" name="CursorOn" />
            <blockpin signalname="XLXN_30" name="ScrollEn" />
            <blockpin signalname="XLXN_30" name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_35" name="VGA_RGB" />
            <blockpin signalname="XLXN_28" name="Char_WE" />
        </block>
        <block symbolname="vga_display" name="XLXI_7">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_21" name="start" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="XLXN_36(7:0)" name="ram_output(7:0)" />
            <blockpin signalname="XLXN_28" name="char_we" />
            <blockpin signalname="XLXN_26" name="ram_enable" />
            <blockpin signalname="XLXN_29(7:0)" name="char(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="XLXN_30" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_35" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="XLXN_35" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="XLXN_35" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="frame_buffer" name="XLXI_12">
            <blockpin signalname="XLXN_46" name="clkA" />
            <blockpin signalname="XLXN_47" name="clkB" />
            <blockpin signalname="XLXN_48" name="enA" />
            <blockpin signalname="XLXN_49" name="enB" />
            <blockpin signalname="XLXN_50" name="weA" />
            <blockpin name="weB" />
            <blockpin signalname="XLXN_51(11:0)" name="addrA(11:0)" />
            <blockpin signalname="XLXN_52(10:0)" name="addrB(10:0)" />
            <blockpin signalname="XLXN_53(3:0)" name="diA(3:0)" />
            <blockpin name="diB(7:0)" />
            <blockpin name="doA(3:0)" />
            <blockpin signalname="XLXN_54(7:0)" name="doB(7:0)" />
        </block>
        <block symbolname="fifo_control_unit" name="XLXI_15">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="E_RX_CLK" name="Rx_Clk" />
            <blockpin signalname="E_RX_DV" name="Rx_DV" />
            <blockpin signalname="XLXN_26" name="POP" />
            <blockpin signalname="XLXN_54(7:0)" name="doB(7:0)" />
            <blockpin signalname="E_RX_D(3:0)" name="Rx_D(3:0)" />
            <blockpin signalname="XLXN_46" name="clkA" />
            <blockpin signalname="XLXN_47" name="clkB" />
            <blockpin signalname="XLXN_48" name="enA" />
            <blockpin signalname="XLXN_49" name="enB" />
            <blockpin signalname="XLXN_50" name="weA" />
            <blockpin signalname="EMPTY" name="empty" />
            <blockpin signalname="FULL" name="full" />
            <blockpin name="EOF" />
            <blockpin signalname="XLXN_51(11:0)" name="addrA(11:0)" />
            <blockpin signalname="XLXN_52(10:0)" name="addrB(10:0)" />
            <blockpin signalname="XLXN_53(3:0)" name="diA(3:0)" />
            <blockpin signalname="XLXN_36(7:0)" name="data_out(7:0)" />
            <blockpin signalname="test(7:0)" name="test(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="816" y="2256" name="XLXI_2" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="432" y1="512" y2="512" x1="176" />
            <wire x2="944" y1="512" y2="512" x1="432" />
            <wire x2="1664" y1="512" y2="512" x1="944" />
            <wire x2="2368" y1="512" y2="512" x1="1664" />
            <wire x2="2368" y1="512" y2="1936" x1="2368" />
            <wire x2="2416" y1="1936" y2="1936" x1="2368" />
            <wire x2="2368" y1="1936" y2="2000" x1="2368" />
            <wire x2="2416" y1="2000" y2="2000" x1="2368" />
            <wire x2="1664" y1="512" y2="1392" x1="1664" />
            <wire x2="1696" y1="1392" y2="1392" x1="1664" />
            <wire x2="432" y1="512" y2="816" x1="432" />
            <wire x2="432" y1="816" y2="1344" x1="432" />
            <wire x2="432" y1="1344" y2="2160" x1="432" />
            <wire x2="816" y1="2160" y2="2160" x1="432" />
            <wire x2="592" y1="816" y2="816" x1="432" />
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
            <wire x2="1696" y1="1456" y2="1456" x1="1536" />
        </branch>
        <branch name="RESET">
            <wire x2="368" y1="2352" y2="2352" x1="160" />
            <wire x2="1600" y1="2352" y2="2352" x1="368" />
            <wire x2="1600" y1="1520" y2="2352" x1="1600" />
            <wire x2="1696" y1="1520" y2="1520" x1="1600" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="320" y1="1200" y2="1856" x1="320" />
            <wire x2="2208" y1="1856" y2="1856" x1="320" />
            <wire x2="592" y1="1200" y2="1200" x1="320" />
            <wire x2="2208" y1="1488" y2="1488" x1="2128" />
            <wire x2="2208" y1="1488" y2="1856" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="160" y="2352" name="RESET" orien="R180" />
        <instance x="1696" y="1616" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2416" y="1936" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_28">
            <wire x2="2416" y1="1392" y2="1392" x1="2128" />
        </branch>
        <branch name="XLXN_29(7:0)">
            <wire x2="2176" y1="1584" y2="1584" x1="2128" />
            <wire x2="2176" y1="1328" y2="1584" x1="2176" />
            <wire x2="2416" y1="1328" y2="1328" x1="2176" />
        </branch>
        <instance x="2192" y="2160" name="XLXI_8" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="2416" y1="1488" y2="1488" x1="2256" />
            <wire x2="2256" y1="1488" y2="1552" x1="2256" />
            <wire x2="2416" y1="1552" y2="1552" x1="2256" />
            <wire x2="2256" y1="1552" y2="1616" x1="2256" />
            <wire x2="2416" y1="1616" y2="1616" x1="2256" />
            <wire x2="2256" y1="1616" y2="1712" x1="2256" />
            <wire x2="2416" y1="1712" y2="1712" x1="2256" />
            <wire x2="2256" y1="1712" y2="1776" x1="2256" />
            <wire x2="2416" y1="1776" y2="1776" x1="2256" />
            <wire x2="2256" y1="1776" y2="1840" x1="2256" />
            <wire x2="2256" y1="1840" y2="2032" x1="2256" />
            <wire x2="2416" y1="1840" y2="1840" x1="2256" />
        </branch>
        <instance x="3040" y="1488" name="XLXI_9" orien="R0" />
        <instance x="3040" y="1568" name="XLXI_10" orien="R0" />
        <instance x="3040" y="1648" name="XLXI_11" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="3264" y1="1328" y2="1328" x1="2848" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3264" y1="1392" y2="1392" x1="2848" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2976" y1="1456" y2="1456" x1="2848" />
            <wire x2="3040" y1="1456" y2="1456" x1="2976" />
            <wire x2="2976" y1="1456" y2="1536" x1="2976" />
            <wire x2="3040" y1="1536" y2="1536" x1="2976" />
            <wire x2="2976" y1="1536" y2="1616" x1="2976" />
            <wire x2="3040" y1="1616" y2="1616" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3264" y="1328" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3264" y="1392" name="VGA_VS" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3296" y1="1456" y2="1456" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1456" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3296" y1="1536" y2="1536" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1536" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3296" y1="1616" y2="1616" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1616" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="176" y="512" name="CLK" orien="R180" />
        <instance x="592" y="1552" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="304" y="1456" name="E_RX_D(3:0)" orien="R180" />
        <branch name="E_RX_D(3:0)">
            <wire x2="592" y1="1456" y2="1456" x1="304" />
        </branch>
        <iomarker fontsize="28" x="336" y="944" name="E_RX_CLK" orien="R180" />
        <branch name="E_RX_CLK">
            <wire x2="592" y1="944" y2="944" x1="336" />
        </branch>
        <iomarker fontsize="28" x="304" y="1072" name="E_RX_DV" orien="R180" />
        <branch name="E_RX_DV">
            <wire x2="592" y1="1072" y2="1072" x1="304" />
        </branch>
        <branch name="XLXN_36(7:0)">
            <wire x2="1024" y1="1520" y2="1520" x1="976" />
            <wire x2="1024" y1="1520" y2="1728" x1="1024" />
            <wire x2="1232" y1="1728" y2="1728" x1="1024" />
            <wire x2="1424" y1="1728" y2="1728" x1="1232" />
            <wire x2="1696" y1="1584" y2="1584" x1="1424" />
            <wire x2="1424" y1="1584" y2="1728" x1="1424" />
        </branch>
        <instance x="1136" y="1424" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_46">
            <wire x2="1136" y1="816" y2="816" x1="976" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1136" y1="880" y2="880" x1="976" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1136" y1="944" y2="944" x1="976" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1136" y1="1008" y2="1008" x1="976" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1136" y1="1072" y2="1072" x1="976" />
        </branch>
        <branch name="XLXN_51(11:0)">
            <wire x2="1008" y1="1328" y2="1328" x1="976" />
            <wire x2="1008" y1="1200" y2="1328" x1="1008" />
            <wire x2="1136" y1="1200" y2="1200" x1="1008" />
        </branch>
        <branch name="XLXN_52(10:0)">
            <wire x2="1024" y1="1392" y2="1392" x1="976" />
            <wire x2="1136" y1="1264" y2="1264" x1="1024" />
            <wire x2="1024" y1="1264" y2="1392" x1="1024" />
        </branch>
        <branch name="XLXN_53(3:0)">
            <wire x2="1056" y1="1456" y2="1456" x1="976" />
            <wire x2="1136" y1="1328" y2="1328" x1="1056" />
            <wire x2="1056" y1="1328" y2="1456" x1="1056" />
        </branch>
        <branch name="XLXN_54(7:0)">
            <wire x2="528" y1="1328" y2="1680" x1="528" />
            <wire x2="1120" y1="1680" y2="1680" x1="528" />
            <wire x2="592" y1="1328" y2="1328" x1="528" />
            <wire x2="1568" y1="1536" y2="1536" x1="1120" />
            <wire x2="1120" y1="1536" y2="1680" x1="1120" />
            <wire x2="1568" y1="1392" y2="1392" x1="1520" />
            <wire x2="1568" y1="1392" y2="1536" x1="1568" />
        </branch>
        <branch name="EMPTY">
            <wire x2="992" y1="1136" y2="1136" x1="976" />
            <wire x2="1024" y1="1136" y2="1136" x1="992" />
            <wire x2="1024" y1="656" y2="1136" x1="1024" />
            <wire x2="1040" y1="656" y2="656" x1="1024" />
        </branch>
        <branch name="FULL">
            <wire x2="976" y1="656" y2="1200" x1="976" />
        </branch>
        <branch name="test(7:0)">
            <wire x2="848" y1="1664" y2="1776" x1="848" />
            <wire x2="928" y1="1776" y2="1776" x1="848" />
            <wire x2="992" y1="1664" y2="1664" x1="848" />
            <wire x2="992" y1="1584" y2="1584" x1="976" />
            <wire x2="992" y1="1584" y2="1664" x1="992" />
        </branch>
        <iomarker fontsize="28" x="928" y="1776" name="test(7:0)" orien="R0" />
    </sheet>
</drawing>