<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_9(11:0)" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_16" />
        <signal name="E_RX_DV" />
        <signal name="E_RX_CLK" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="E_RX_D(4:0)" />
        <signal name="led2">
        </signal>
        <signal name="led1">
        </signal>
        <signal name="XLXN_24" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="ROT_B" />
        <signal name="ROT_A" />
        <signal name="led0" />
        <signal name="XLXN_31" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="dane(7:0)">
        </signal>
        <signal name="dane2(7:0)" />
        <signal name="XLXN_37" />
        <signal name="XLXN_40(11:0)" />
        <signal name="XLXN_43" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="E_RX_DV" />
        <port polarity="Input" name="E_RX_CLK" />
        <port polarity="Input" name="E_RX_D(4:0)" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="dane2(7:0)" />
        <blockdef name="header_display">
            <timestamp>2014-3-25T8:38:46</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
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
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="MII_RX">
            <timestamp>2014-3-25T11:15:55</timestamp>
            <rect width="64" x="432" y="20" height="24" />
            <line x2="496" y1="32" y2="32" x1="432" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-608" y2="-608" x1="432" />
            <line x2="496" y1="-320" y2="-320" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
            <rect width="368" x="64" y="-640" height="704" />
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
        <blockdef name="RotaryEnc">
            <timestamp>2008-8-28T17:16:17</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="header_display" name="XLXI_1">
            <blockpin signalname="XLXN_2" name="tx_busy" />
            <blockpin signalname="XLXN_24" name="busy" />
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_3" name="start" />
            <blockpin signalname="led0" name="reset" />
            <blockpin name="ram_output(7:0)" />
            <blockpin signalname="XLXN_5" name="char_we" />
            <blockpin name="ram_clk" />
            <blockpin name="ram_enable" />
            <blockpin signalname="XLXN_6(7:0)" name="char(7:0)" />
            <blockpin signalname="XLXN_9(11:0)" name="ram_address(11:0)" />
        </block>
        <block symbolname="MII_RX" name="XLXI_2">
            <blockpin signalname="E_RX_DV" name="recv_strobe" />
            <blockpin signalname="E_RX_CLK" name="recv_clock" />
            <blockpin signalname="XLXN_19" name="recv_error" />
            <blockpin signalname="XLXN_20" name="next_frame" />
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="led0" name="reset" />
            <blockpin signalname="XLXN_3" name="ram_clk" />
            <blockpin signalname="XLXN_43" name="ram_enable" />
            <blockpin signalname="E_RX_D(4:0)" name="recv_data(4:0)" />
            <blockpin signalname="XLXN_9(11:0)" name="ram_address(11:0)" />
            <blockpin signalname="led1" name="data_received" />
            <blockpin signalname="led2" name="busy" />
            <blockpin signalname="dane2(7:0)" name="ram_output(7:0)" />
            <blockpin name="test(7:0)" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_3">
            <blockpin signalname="XLXN_6(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_16" name="Home" />
            <blockpin signalname="XLXN_16" name="NewLine" />
            <blockpin signalname="XLXN_16" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_16" name="CursorOn" />
            <blockpin signalname="XLXN_16" name="ScrollEn" />
            <blockpin signalname="XLXN_16" name="ScrollClear" />
            <blockpin signalname="XLXN_2" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_31" name="VGA_RGB" />
            <blockpin signalname="XLXN_5" name="Char_WE" />
        </block>
        <block symbolname="RotaryEnc" name="XLXI_5">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin signalname="led0" name="RotL" />
            <blockpin signalname="XLXN_3" name="RotR" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_16" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="XLXN_43" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="2720" y="1776" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1728" y="1648" name="XLXI_1" orien="R0">
        </instance>
        <instance x="704" y="2464" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1728" y1="1296" y2="1296" x1="1600" />
            <wire x2="1600" y1="1296" y2="2048" x1="1600" />
            <wire x2="3264" y1="2048" y2="2048" x1="1600" />
            <wire x2="3264" y1="1424" y2="1424" x1="3152" />
            <wire x2="3264" y1="1424" y2="2048" x1="3264" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="608" y1="1568" y2="1984" x1="608" />
            <wire x2="1248" y1="1984" y2="1984" x1="608" />
            <wire x2="1248" y1="1984" y2="2304" x1="1248" />
            <wire x2="1568" y1="2304" y2="2304" x1="1248" />
            <wire x2="768" y1="1568" y2="1568" x1="608" />
            <wire x2="1248" y1="2304" y2="2304" x1="1088" />
            <wire x2="1728" y1="1488" y2="1488" x1="1568" />
            <wire x2="1568" y1="1488" y2="2304" x1="1568" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2464" y1="1296" y2="1296" x1="2224" />
            <wire x2="2464" y1="1232" y2="1296" x1="2464" />
            <wire x2="2720" y1="1232" y2="1232" x1="2464" />
        </branch>
        <branch name="XLXN_6(7:0)">
            <wire x2="2432" y1="1536" y2="1536" x1="2224" />
            <wire x2="2432" y1="1168" y2="1536" x1="2432" />
            <wire x2="2720" y1="1168" y2="1168" x1="2432" />
        </branch>
        <branch name="XLXN_9(11:0)">
            <wire x2="768" y1="1760" y2="1760" x1="704" />
            <wire x2="704" y1="1760" y2="1904" x1="704" />
            <wire x2="2272" y1="1904" y2="1904" x1="704" />
            <wire x2="2224" y1="1616" y2="1632" x1="2224" />
            <wire x2="2272" y1="1632" y2="1632" x1="2224" />
            <wire x2="2272" y1="1632" y2="1904" x1="2272" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="496" y1="2080" y2="2080" x1="160" />
            <wire x2="496" y1="2080" y2="2368" x1="496" />
            <wire x2="704" y1="2368" y2="2368" x1="496" />
            <wire x2="1520" y1="2080" y2="2080" x1="496" />
            <wire x2="2656" y1="2080" y2="2080" x1="1520" />
            <wire x2="768" y1="1440" y2="1440" x1="496" />
            <wire x2="496" y1="1440" y2="2080" x1="496" />
            <wire x2="1520" y1="1424" y2="2080" x1="1520" />
            <wire x2="1728" y1="1424" y2="1424" x1="1520" />
            <wire x2="2720" y1="1776" y2="1776" x1="2656" />
            <wire x2="2656" y1="1776" y2="1840" x1="2656" />
            <wire x2="2720" y1="1840" y2="1840" x1="2656" />
            <wire x2="2656" y1="1840" y2="2080" x1="2656" />
        </branch>
        <instance x="2496" y="1968" name="XLXI_6" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2720" y1="1328" y2="1328" x1="2560" />
            <wire x2="2560" y1="1328" y2="1392" x1="2560" />
            <wire x2="2720" y1="1392" y2="1392" x1="2560" />
            <wire x2="2560" y1="1392" y2="1456" x1="2560" />
            <wire x2="2720" y1="1456" y2="1456" x1="2560" />
            <wire x2="2560" y1="1456" y2="1552" x1="2560" />
            <wire x2="2560" y1="1552" y2="1616" x1="2560" />
            <wire x2="2560" y1="1616" y2="1680" x1="2560" />
            <wire x2="2720" y1="1680" y2="1680" x1="2560" />
            <wire x2="2560" y1="1680" y2="1840" x1="2560" />
            <wire x2="2720" y1="1616" y2="1616" x1="2560" />
            <wire x2="2720" y1="1552" y2="1552" x1="2560" />
        </branch>
        <branch name="E_RX_DV">
            <wire x2="768" y1="1184" y2="1184" x1="752" />
        </branch>
        <iomarker fontsize="28" x="752" y="1184" name="E_RX_DV" orien="R180" />
        <branch name="E_RX_CLK">
            <wire x2="768" y1="1248" y2="1248" x1="752" />
        </branch>
        <iomarker fontsize="28" x="752" y="1248" name="E_RX_CLK" orien="R180" />
        <branch name="E_RX_D(4:0)">
            <wire x2="768" y1="1696" y2="1696" x1="336" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1728" y1="1360" y2="1360" x1="1696" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3184" y1="1168" y2="1168" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3184" y="1168" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="3184" y1="1232" y2="1232" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3184" y="1232" name="VGA_VS" orien="R0" />
        <branch name="ROT_B">
            <wire x2="704" y1="2304" y2="2304" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="2304" name="ROT_B" orien="R180" />
        <branch name="ROT_A">
            <wire x2="704" y1="2240" y2="2240" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="2240" name="ROT_A" orien="R180" />
        <branch name="led0">
            <wire x2="688" y1="992" y2="992" x1="384" />
            <wire x2="1632" y1="992" y2="992" x1="688" />
            <wire x2="1632" y1="992" y2="1552" x1="1632" />
            <wire x2="1728" y1="1552" y2="1552" x1="1632" />
            <wire x2="688" y1="992" y2="1008" x1="688" />
            <wire x2="384" y1="992" y2="2560" x1="384" />
            <wire x2="1136" y1="2560" y2="2560" x1="384" />
            <wire x2="688" y1="1008" y2="1008" x1="544" />
            <wire x2="544" y1="1008" y2="1504" x1="544" />
            <wire x2="768" y1="1504" y2="1504" x1="544" />
            <wire x2="1136" y1="2240" y2="2240" x1="1088" />
            <wire x2="1136" y1="2240" y2="2560" x1="1136" />
        </branch>
        <instance x="3472" y="1328" name="XLXI_7" orien="R0" />
        <instance x="3472" y="1456" name="XLXI_8" orien="R0" />
        <instance x="3472" y="1584" name="XLXI_9" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="3184" y1="1296" y2="1296" x1="3152" />
            <wire x2="3376" y1="1296" y2="1296" x1="3184" />
            <wire x2="3472" y1="1296" y2="1296" x1="3376" />
            <wire x2="3376" y1="1296" y2="1424" x1="3376" />
            <wire x2="3472" y1="1424" y2="1424" x1="3376" />
            <wire x2="3376" y1="1424" y2="1552" x1="3376" />
            <wire x2="3472" y1="1552" y2="1552" x1="3376" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3728" y1="1552" y2="1552" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3728" y="1552" name="VGA_B" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3728" y1="1424" y2="1424" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3728" y="1424" name="VGA_G" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3728" y1="1296" y2="1296" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3728" y="1296" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="160" y="2080" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="336" y="1696" name="E_RX_D(4:0)" orien="R180" />
        <branch name="dane2(7:0)">
            <wire x2="1312" y1="1760" y2="1760" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1312" y="1760" name="dane2(7:0)" orien="R0" />
        <instance x="768" y="1792" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_19">
            <wire x2="768" y1="1312" y2="1312" x1="752" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="768" y1="1376" y2="1376" x1="752" />
        </branch>
        <branch name="led1">
            <wire x2="1312" y1="1184" y2="1184" x1="1264" />
        </branch>
        <branch name="led2">
            <wire x2="1312" y1="1472" y2="1472" x1="1264" />
        </branch>
        <instance x="208" y="1552" name="XLXI_10" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="272" y1="1552" y2="1632" x1="272" />
            <wire x2="768" y1="1632" y2="1632" x1="272" />
        </branch>
    </sheet>
</drawing>