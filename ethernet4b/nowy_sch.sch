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
        <signal name="XLXN_5(15:0)" />
        <signal name="XLXN_6(4:0)" />
        <signal name="XLXN_7(4:0)" />
        <blockdef name="nowyRXTX">
            <timestamp>2014-3-11T19:49:20</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="button">
            <timestamp>2014-3-10T9:25:2</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="nowyRXTX" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="write_read" />
            <blockpin signalname="XLXN_2" name="strt" />
            <blockpin signalname="XLXN_3" name="reset" />
            <blockpin signalname="XLXN_4" name="clk" />
            <blockpin signalname="XLXN_5(15:0)" name="data_in(15:0)" />
            <blockpin signalname="XLXN_6(4:0)" name="phy_addr(4:0)" />
            <blockpin signalname="XLXN_7(4:0)" name="reg_addr(4:0)" />
            <blockpin name="busy" />
            <blockpin name="MDC" />
            <blockpin name="data_out(15:0)" />
            <blockpin name="MDIO" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="button" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="clk" />
            <blockpin name="btn" />
            <blockpin signalname="XLXN_2" name="strt" />
        </block>
        <block symbolname="constant" name="XLXI_5">
            <attr value="F0F0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_5(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="1F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_6(4:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_7">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_7(4:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="1488" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1200" y="1696" name="XLXI_2" orien="R0" />
        <instance x="1184" y="992" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1248" y1="992" y2="1072" x1="1248" />
            <wire x2="1408" y1="1072" y2="1072" x1="1248" />
        </branch>
        <instance x="672" y="1504" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1056" y1="1136" y2="1408" x1="1056" />
            <wire x2="1408" y1="1136" y2="1136" x1="1056" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1408" y1="1200" y2="1200" x1="1264" />
            <wire x2="1264" y1="1200" y2="1568" x1="1264" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="592" y1="1152" y2="1152" x1="368" />
            <wire x2="592" y1="1152" y2="1264" x1="592" />
            <wire x2="592" y1="1264" y2="1408" x1="592" />
            <wire x2="672" y1="1408" y2="1408" x1="592" />
            <wire x2="1408" y1="1264" y2="1264" x1="592" />
        </branch>
        <instance x="1168" y="1744" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1184" y="1840" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1216" y="1936" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_5(15:0)">
            <wire x2="1312" y1="1328" y2="1776" x1="1312" />
            <wire x2="1408" y1="1328" y2="1328" x1="1312" />
        </branch>
        <branch name="XLXN_6(4:0)">
            <wire x2="1328" y1="1392" y2="1872" x1="1328" />
            <wire x2="1408" y1="1392" y2="1392" x1="1328" />
        </branch>
        <branch name="XLXN_7(4:0)">
            <wire x2="1360" y1="1456" y2="1968" x1="1360" />
            <wire x2="1408" y1="1456" y2="1456" x1="1360" />
        </branch>
    </sheet>
</drawing>