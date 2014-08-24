<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_13" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_18" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <signal name="CLK" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27(7:0)" />
        <signal name="E_RX_D(3:0)" />
        <signal name="E_RX_CLK" />
        <signal name="E_RX_DV" />
        <signal name="EOF" />
        <signal name="full" />
        <signal name="empty" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="E_RX_D(3:0)" />
        <port polarity="Input" name="E_RX_CLK" />
        <port polarity="Input" name="E_RX_DV" />
        <port polarity="Output" name="EOF" />
        <port polarity="Output" name="full" />
        <port polarity="Output" name="empty" />
        <blockdef name="RotaryEnc">
            <timestamp>2014-6-26T18:50:40</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vga_display">
            <timestamp>2014-8-10T15:28:40</timestamp>
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
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
        <block symbolname="RotaryEnc" name="XLXI_3">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin name="RotL" />
            <blockpin signalname="XLXN_13" name="RotR" />
            <blockpin signalname="CLK" name="Clk" />
        </block>
        <block symbolname="vga_display" name="XLXI_4">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_13" name="start" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_27(7:0)" name="ram_output(7:0)" />
            <blockpin signalname="XLXN_15" name="char_we" />
            <blockpin signalname="XLXN_26" name="ram_enable" />
            <blockpin signalname="XLXN_16(7:0)" name="char(7:0)" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_5">
            <blockpin signalname="XLXN_16(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="CLK" name="Clk_Sys" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_18" name="VGA_RGB" />
            <blockpin signalname="XLXN_15" name="Char_WE" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="XLXN_18" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_18" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_18" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="ethernetRX" name="XLXI_10">
            <blockpin signalname="E_RX_D(3:0)" name="RX_D(3:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="E_RX_CLK" name="RX_CLK" />
            <blockpin signalname="E_RX_DV" name="RX_DV" />
            <blockpin signalname="XLXN_26" name="POP" />
            <blockpin signalname="empty" name="empty" />
            <blockpin signalname="full" name="full" />
            <blockpin signalname="EOF" name="EOF" />
            <blockpin signalname="XLXN_27(7:0)" name="data_out(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="2000" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2656" y="2176" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_13">
            <wire x2="1440" y1="1840" y2="1840" x1="624" />
        </branch>
        <instance x="240" y="2000" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="2256" y1="1776" y2="1776" x1="1872" />
            <wire x2="2256" y1="1632" y2="1776" x1="2256" />
            <wire x2="2656" y1="1632" y2="1632" x1="2256" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="2240" y1="1968" y2="1968" x1="1872" />
            <wire x2="2240" y1="1568" y2="1968" x1="2240" />
            <wire x2="2656" y1="1568" y2="1568" x1="2240" />
        </branch>
        <instance x="3136" y="1728" name="XLXI_6" orien="R0" />
        <instance x="3136" y="1824" name="XLXI_7" orien="R0" />
        <instance x="3136" y="1920" name="XLXI_8" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="3120" y1="1696" y2="1696" x1="3088" />
            <wire x2="3136" y1="1696" y2="1696" x1="3120" />
            <wire x2="3120" y1="1696" y2="1792" x1="3120" />
            <wire x2="3136" y1="1792" y2="1792" x1="3120" />
            <wire x2="3120" y1="1792" y2="1888" x1="3120" />
            <wire x2="3136" y1="1888" y2="1888" x1="3120" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3392" y1="1696" y2="1696" x1="3360" />
        </branch>
        <iomarker fontsize="28" x="3392" y="1696" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3392" y1="1792" y2="1792" x1="3360" />
        </branch>
        <iomarker fontsize="28" x="3392" y="1792" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3392" y1="1888" y2="1888" x1="3360" />
        </branch>
        <iomarker fontsize="28" x="3392" y="1888" name="VGA_B" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="3120" y1="1632" y2="1632" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1632" name="VGA_VS" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="3120" y1="1568" y2="1568" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1568" name="VGA_HS" orien="R0" />
        <branch name="ROT_A">
            <wire x2="240" y1="1776" y2="1776" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="1776" name="ROT_A" orien="R180" />
        <branch name="ROT_B">
            <wire x2="240" y1="1840" y2="1840" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="1840" name="ROT_B" orien="R180" />
        <iomarker fontsize="28" x="96" y="2272" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="176" y1="2272" y2="2272" x1="96" />
            <wire x2="688" y1="2272" y2="2272" x1="176" />
            <wire x2="784" y1="2272" y2="2272" x1="688" />
            <wire x2="800" y1="2272" y2="2272" x1="784" />
            <wire x2="1728" y1="2272" y2="2272" x1="800" />
            <wire x2="176" y1="1904" y2="2272" x1="176" />
            <wire x2="240" y1="1904" y2="1904" x1="176" />
            <wire x2="928" y1="272" y2="272" x1="688" />
            <wire x2="928" y1="272" y2="768" x1="928" />
            <wire x2="1424" y1="768" y2="768" x1="928" />
            <wire x2="688" y1="272" y2="2272" x1="688" />
            <wire x2="800" y1="1776" y2="2272" x1="800" />
            <wire x2="1440" y1="1776" y2="1776" x1="800" />
            <wire x2="1728" y1="2240" y2="2272" x1="1728" />
            <wire x2="2592" y1="2240" y2="2240" x1="1728" />
            <wire x2="2656" y1="2240" y2="2240" x1="2592" />
            <wire x2="2656" y1="2176" y2="2176" x1="2592" />
            <wire x2="2592" y1="2176" y2="2240" x1="2592" />
        </branch>
        <instance x="1424" y="992" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_26">
            <wire x2="1424" y1="960" y2="960" x1="1360" />
            <wire x2="1360" y1="960" y2="1072" x1="1360" />
            <wire x2="1936" y1="1072" y2="1072" x1="1360" />
            <wire x2="1936" y1="1072" y2="1872" x1="1936" />
            <wire x2="1936" y1="1872" y2="1872" x1="1872" />
        </branch>
        <branch name="XLXN_27(7:0)">
            <wire x2="1360" y1="1664" y2="1968" x1="1360" />
            <wire x2="1440" y1="1968" y2="1968" x1="1360" />
            <wire x2="1888" y1="1664" y2="1664" x1="1360" />
            <wire x2="1888" y1="944" y2="944" x1="1808" />
            <wire x2="1888" y1="944" y2="1664" x1="1888" />
        </branch>
        <branch name="E_RX_D(3:0)">
            <wire x2="1424" y1="704" y2="704" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="704" name="E_RX_D(3:0)" orien="R180" />
        <branch name="E_RX_CLK">
            <wire x2="1424" y1="832" y2="832" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="832" name="E_RX_CLK" orien="R180" />
        <branch name="E_RX_DV">
            <wire x2="1424" y1="896" y2="896" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="896" name="E_RX_DV" orien="R180" />
        <branch name="EOF">
            <wire x2="1840" y1="864" y2="864" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="864" name="EOF" orien="R0" />
        <branch name="full">
            <wire x2="1840" y1="784" y2="784" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="784" name="full" orien="R0" />
        <branch name="empty">
            <wire x2="1840" y1="704" y2="704" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="704" name="empty" orien="R0" />
    </sheet>
</drawing>