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
        <signal name="XLXN_6(11:0)" />
        <signal name="XLXN_7(10:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11(7:0)" />
        <signal name="XLXN_12(7:0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
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
        <signal name="E_RX_CLK" />
        <signal name="E_RX_DV" />
        <signal name="E_RX_D(3:0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(13:0)" />
        <signal name="XLXN_22(12:0)" />
        <signal name="XLXN_23(0:0)" />
        <signal name="XLXN_24(1:0)" />
        <signal name="empty" />
        <signal name="full" />
        <signal name="EOF" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="E_RX_CLK" />
        <port polarity="Input" name="E_RX_DV" />
        <port polarity="Input" name="E_RX_D(3:0)" />
        <port polarity="Output" name="empty" />
        <port polarity="Output" name="full" />
        <port polarity="Output" name="EOF" />
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
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="E_RX_CLK" name="Rx_Clk" />
            <blockpin signalname="E_RX_DV" name="Rx_DV" />
            <blockpin signalname="XLXN_14" name="POP" />
            <blockpin signalname="XLXN_11(7:0)" name="doB(7:0)" />
            <blockpin signalname="XLXN_24(1:0)" name="doEOFB(1:0)" />
            <blockpin signalname="E_RX_D(3:0)" name="Rx_D(3:0)" />
            <blockpin signalname="XLXN_1" name="clkA" />
            <blockpin signalname="XLXN_2" name="clkB" />
            <blockpin signalname="XLXN_3" name="enA" />
            <blockpin signalname="XLXN_4" name="enB" />
            <blockpin signalname="XLXN_10" name="weA" />
            <blockpin signalname="XLXN_19" name="EOFenA" />
            <blockpin signalname="XLXN_20" name="EOFweA" />
            <blockpin signalname="empty" name="empty" />
            <blockpin signalname="full" name="full" />
            <blockpin signalname="EOF" name="EOF" />
            <blockpin signalname="XLXN_6(11:0)" name="addrA(11:0)" />
            <blockpin signalname="XLXN_7(10:0)" name="addrB(10:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="diA(3:0)" />
            <blockpin signalname="XLXN_21(13:0)" name="addrEOFA(13:0)" />
            <blockpin signalname="XLXN_22(12:0)" name="addrEOFB(12:0)" />
            <blockpin signalname="XLXN_23(0:0)" name="diEOFA(0:0)" />
            <blockpin signalname="XLXN_12(7:0)" name="data_out(7:0)" />
            <blockpin name="test(7:0)" />
        </block>
        <block symbolname="new_frame_buffer" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="CLKA" />
            <blockpin signalname="XLXN_2" name="CLKB" />
            <blockpin signalname="XLXN_3" name="ENA" />
            <blockpin signalname="XLXN_4" name="ENB" />
            <blockpin name="SSRA" />
            <blockpin name="SSRB" />
            <blockpin signalname="XLXN_10" name="WEA" />
            <blockpin name="WEB" />
            <blockpin signalname="XLXN_6(11:0)" name="ADDRA(11:0)" />
            <blockpin signalname="XLXN_7(10:0)" name="ADDRB(10:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="DIA(3:0)" />
            <blockpin name="DIB(7:0)" />
            <blockpin name="DIPB(0:0)" />
            <blockpin name="DOA(3:0)" />
            <blockpin signalname="XLXN_11(7:0)" name="DOB(7:0)" />
            <blockpin name="DOPB(0:0)" />
        </block>
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
            <blockpin signalname="XLXN_12(7:0)" name="ram_output(7:0)" />
            <blockpin signalname="XLXN_15" name="char_we" />
            <blockpin signalname="XLXN_14" name="ram_enable" />
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
        <block symbolname="new_eof_buffer" name="XLXI_9">
            <blockpin signalname="XLXN_1" name="CLKA" />
            <blockpin signalname="XLXN_2" name="CLKB" />
            <blockpin signalname="XLXN_19" name="ENA" />
            <blockpin signalname="XLXN_4" name="ENB" />
            <blockpin name="SSRA" />
            <blockpin name="SSRB" />
            <blockpin signalname="XLXN_20" name="WEA" />
            <blockpin name="WEB" />
            <blockpin signalname="XLXN_21(13:0)" name="ADDRA(13:0)" />
            <blockpin signalname="XLXN_22(12:0)" name="ADDRB(12:0)" />
            <blockpin signalname="XLXN_23(0:0)" name="DIA(0:0)" />
            <blockpin name="DIB(1:0)" />
            <blockpin name="DOA(0:0)" />
            <blockpin signalname="XLXN_24(1:0)" name="DOB(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1008" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1840" y="1072" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1648" y1="272" y2="272" x1="1312" />
            <wire x2="1840" y1="272" y2="272" x1="1648" />
            <wire x2="1648" y1="176" y2="272" x1="1648" />
            <wire x2="2288" y1="176" y2="176" x1="1648" />
            <wire x2="2288" y1="176" y2="416" x1="2288" />
            <wire x2="2656" y1="416" y2="416" x1="2288" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1584" y1="336" y2="336" x1="1312" />
            <wire x2="1840" y1="336" y2="336" x1="1584" />
            <wire x2="1584" y1="192" y2="336" x1="1584" />
            <wire x2="2272" y1="192" y2="192" x1="1584" />
            <wire x2="2272" y1="192" y2="480" x1="2272" />
            <wire x2="2656" y1="480" y2="480" x1="2272" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1840" y1="400" y2="400" x1="1312" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1616" y1="464" y2="464" x1="1312" />
            <wire x2="1840" y1="464" y2="464" x1="1616" />
            <wire x2="1616" y1="160" y2="464" x1="1616" />
            <wire x2="2256" y1="160" y2="160" x1="1616" />
            <wire x2="2256" y1="160" y2="608" x1="2256" />
            <wire x2="2656" y1="608" y2="608" x1="2256" />
        </branch>
        <branch name="XLXN_6(11:0)">
            <wire x2="1840" y1="784" y2="784" x1="1312" />
        </branch>
        <branch name="XLXN_7(10:0)">
            <wire x2="1840" y1="848" y2="848" x1="1312" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="1840" y1="912" y2="912" x1="1312" />
        </branch>
        <instance x="1440" y="2000" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2656" y="2176" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_10">
            <wire x2="1568" y1="1168" y2="1168" x1="1312" />
            <wire x2="1568" y1="656" y2="1168" x1="1568" />
            <wire x2="1840" y1="656" y2="656" x1="1568" />
        </branch>
        <branch name="XLXN_11(7:0)">
            <wire x2="2336" y1="80" y2="80" x1="816" />
            <wire x2="2336" y1="80" y2="656" x1="2336" />
            <wire x2="816" y1="80" y2="784" x1="816" />
            <wire x2="928" y1="784" y2="784" x1="816" />
            <wire x2="2336" y1="656" y2="656" x1="2224" />
        </branch>
        <branch name="XLXN_12(7:0)">
            <wire x2="1376" y1="976" y2="976" x1="1312" />
            <wire x2="1376" y1="976" y2="1968" x1="1376" />
            <wire x2="1440" y1="1968" y2="1968" x1="1376" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1440" y1="1840" y2="1840" x1="624" />
        </branch>
        <instance x="240" y="2000" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_14">
            <wire x2="2304" y1="128" y2="128" x1="848" />
            <wire x2="2304" y1="128" y2="1872" x1="2304" />
            <wire x2="848" y1="128" y2="656" x1="848" />
            <wire x2="928" y1="656" y2="656" x1="848" />
            <wire x2="2304" y1="1872" y2="1872" x1="1872" />
        </branch>
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
        <branch name="CLK">
            <wire x2="176" y1="2272" y2="2272" x1="96" />
            <wire x2="688" y1="2272" y2="2272" x1="176" />
            <wire x2="784" y1="2272" y2="2272" x1="688" />
            <wire x2="800" y1="2272" y2="2272" x1="784" />
            <wire x2="1728" y1="2272" y2="2272" x1="800" />
            <wire x2="176" y1="1904" y2="2272" x1="176" />
            <wire x2="240" y1="1904" y2="1904" x1="176" />
            <wire x2="928" y1="272" y2="272" x1="688" />
            <wire x2="688" y1="272" y2="2272" x1="688" />
            <wire x2="800" y1="1776" y2="2272" x1="800" />
            <wire x2="1440" y1="1776" y2="1776" x1="800" />
            <wire x2="1728" y1="2240" y2="2272" x1="1728" />
            <wire x2="2592" y1="2240" y2="2240" x1="1728" />
            <wire x2="2656" y1="2240" y2="2240" x1="2592" />
            <wire x2="2656" y1="2176" y2="2176" x1="2592" />
            <wire x2="2592" y1="2176" y2="2240" x1="2592" />
        </branch>
        <branch name="E_RX_CLK">
            <wire x2="928" y1="400" y2="400" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="400" name="E_RX_CLK" orien="R180" />
        <branch name="E_RX_DV">
            <wire x2="928" y1="528" y2="528" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="528" name="E_RX_DV" orien="R180" />
        <branch name="E_RX_D(3:0)">
            <wire x2="928" y1="912" y2="912" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="912" name="E_RX_D(3:0)" orien="R180" />
        <iomarker fontsize="28" x="96" y="2272" name="CLK" orien="R180" />
        <instance x="2656" y="1152" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_19">
            <wire x2="2288" y1="1232" y2="1232" x1="1312" />
            <wire x2="2288" y1="544" y2="1232" x1="2288" />
            <wire x2="2656" y1="544" y2="544" x1="2288" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2272" y1="1296" y2="1296" x1="1312" />
            <wire x2="2272" y1="800" y2="1296" x1="2272" />
            <wire x2="2656" y1="800" y2="800" x1="2272" />
        </branch>
        <branch name="XLXN_21(13:0)">
            <wire x2="2256" y1="1360" y2="1360" x1="1312" />
            <wire x2="2256" y1="928" y2="1360" x1="2256" />
            <wire x2="2656" y1="928" y2="928" x1="2256" />
        </branch>
        <branch name="XLXN_22(12:0)">
            <wire x2="2240" y1="1424" y2="1424" x1="1312" />
            <wire x2="2240" y1="992" y2="1424" x1="2240" />
            <wire x2="2656" y1="992" y2="992" x1="2240" />
        </branch>
        <branch name="XLXN_23(0:0)">
            <wire x2="2336" y1="1488" y2="1488" x1="1312" />
            <wire x2="2336" y1="1056" y2="1488" x1="2336" />
            <wire x2="2656" y1="1056" y2="1056" x1="2336" />
        </branch>
        <branch name="XLXN_24(1:0)">
            <wire x2="912" y1="208" y2="1232" x1="912" />
            <wire x2="928" y1="1232" y2="1232" x1="912" />
            <wire x2="3104" y1="208" y2="208" x1="912" />
            <wire x2="3104" y1="208" y2="1120" x1="3104" />
            <wire x2="3104" y1="1120" y2="1120" x1="3040" />
        </branch>
        <branch name="empty">
            <wire x2="1344" y1="592" y2="592" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="592" name="empty" orien="R0" />
        <branch name="full">
            <wire x2="1344" y1="656" y2="656" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="656" name="full" orien="R0" />
        <branch name="EOF">
            <wire x2="1344" y1="720" y2="720" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="720" name="EOF" orien="R0" />
    </sheet>
</drawing>