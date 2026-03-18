<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="EN" />
        <signal name="XLXN_5" />
        <signal name="PIN" />
        <signal name="COD" />
        <signal name="SALDO" />
        <signal name="VALOR_DEBITO" />
        <signal name="XLXN_14" />
        <signal name="XLXN_21(3:0)" />
        <signal name="XLXN_22(7:0)" />
        <signal name="ECRAA" />
        <port polarity="Input" name="EN" />
        <port polarity="Input" name="PIN" />
        <port polarity="Input" name="COD" />
        <port polarity="Input" name="SALDO" />
        <port polarity="Input" name="VALOR_DEBITO" />
        <port polarity="Output" name="ECRAA" />
        <blockdef name="ComparadorPinCod">
            <timestamp>2024-11-4T18:0:46</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Ecra">
            <timestamp>2024-11-4T18:0:35</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="SomadorComoSubtrator">
            <timestamp>2024-11-4T21:4:43</timestamp>
            <rect width="352" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
        </blockdef>
        <blockdef name="VerificadorDeSaldo">
            <timestamp>2024-11-5T0:25:28</timestamp>
            <rect width="352" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
        </blockdef>
        <block symbolname="Ecra" name="XLXI_6">
            <blockpin signalname="XLXN_5" name="en" />
            <blockpin signalname="XLXN_21(3:0)" name="pin_corret" />
            <blockpin signalname="XLXN_14" name="saldo_suficiente" />
            <blockpin signalname="XLXN_22(7:0)" name="novo_saldo(7:0)" />
            <blockpin signalname="ECRAA" name="ecra(7:0)" />
        </block>
        <block symbolname="ComparadorPinCod" name="XLXI_9">
            <blockpin signalname="XLXN_5" name="en" />
            <blockpin signalname="PIN" name="pin(3:0)" />
            <blockpin signalname="COD" name="cod(4:0)" />
            <blockpin signalname="XLXN_21(3:0)" name="pin_corret" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="EN" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="SomadorComoSubtrator" name="XLXI_12">
            <blockpin signalname="XLXN_5" name="en" />
            <blockpin signalname="SALDO" name="saldo(7:0)" />
            <blockpin signalname="VALOR_DEBITO" name="valor_debito(7:0)" />
            <blockpin signalname="XLXN_21(3:0)" name="pin_corret(3:0)" />
            <blockpin signalname="XLXN_22(7:0)" name="novo_saldo(7:0)" />
        </block>
        <block symbolname="VerificadorDeSaldo" name="XLXI_13">
            <blockpin signalname="SALDO" name="saldo(7:0)" />
            <blockpin signalname="VALOR_DEBITO" name="valor_debito(3:0)" />
            <blockpin signalname="XLXN_14" name="saldo_suficiente" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2448" y="1088" name="XLXI_6" orien="R0">
        </instance>
        <instance x="720" y="1008" name="XLXI_9" orien="R0">
        </instance>
        <instance x="512" y="592" name="XLXI_10" orien="R0" />
        <branch name="EN">
            <wire x2="512" y1="560" y2="560" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="560" name="EN" orien="R180" />
        <branch name="PIN">
            <wire x2="720" y1="912" y2="912" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="912" name="PIN" orien="R180" />
        <branch name="COD">
            <wire x2="720" y1="976" y2="976" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="976" name="COD" orien="R180" />
        <branch name="VALOR_DEBITO">
            <wire x2="1568" y1="992" y2="992" x1="1392" />
            <wire x2="1584" y1="992" y2="992" x1="1568" />
        </branch>
        <branch name="SALDO">
            <wire x2="1568" y1="928" y2="928" x1="1392" />
            <wire x2="1584" y1="928" y2="928" x1="1568" />
        </branch>
        <branch name="SALDO">
            <wire x2="1232" y1="1216" y2="1216" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1216" name="SALDO" orien="R180" />
        <branch name="VALOR_DEBITO">
            <wire x2="1232" y1="1280" y2="1280" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1280" name="VALOR_DEBITO" orien="R180" />
        <branch name="XLXN_14">
            <wire x2="2416" y1="1216" y2="1216" x1="1712" />
            <wire x2="2448" y1="992" y2="992" x1="2416" />
            <wire x2="2416" y1="992" y2="1216" x1="2416" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="544" y1="688" y2="848" x1="544" />
            <wire x2="720" y1="848" y2="848" x1="544" />
            <wire x2="816" y1="688" y2="688" x1="544" />
            <wire x2="816" y1="560" y2="560" x1="736" />
            <wire x2="816" y1="560" y2="688" x1="816" />
            <wire x2="1216" y1="560" y2="560" x1="816" />
            <wire x2="2432" y1="560" y2="560" x1="1216" />
            <wire x2="2432" y1="560" y2="864" x1="2432" />
            <wire x2="2448" y1="864" y2="864" x1="2432" />
            <wire x2="2784" y1="560" y2="560" x1="2432" />
            <wire x2="1216" y1="560" y2="864" x1="1216" />
            <wire x2="1584" y1="864" y2="864" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1392" y="928" name="SALDO" orien="R180" />
        <iomarker fontsize="28" x="1392" y="992" name="VALOR_DEBITO" orien="R180" />
        <branch name="XLXN_21(3:0)">
            <wire x2="1136" y1="848" y2="848" x1="1104" />
            <wire x2="1136" y1="848" y2="1056" x1="1136" />
            <wire x2="1488" y1="1056" y2="1056" x1="1136" />
            <wire x2="1504" y1="1056" y2="1056" x1="1488" />
            <wire x2="1584" y1="1056" y2="1056" x1="1504" />
            <wire x2="1488" y1="1056" y2="1104" x1="1488" />
            <wire x2="1504" y1="1104" y2="1104" x1="1488" />
            <wire x2="2080" y1="1104" y2="1104" x1="1504" />
            <wire x2="2448" y1="928" y2="928" x1="2080" />
            <wire x2="2080" y1="928" y2="944" x1="2080" />
            <wire x2="2080" y1="944" y2="1104" x1="2080" />
        </branch>
        <branch name="XLXN_22(7:0)">
            <wire x2="2256" y1="864" y2="864" x1="2064" />
            <wire x2="2256" y1="864" y2="1056" x1="2256" />
            <wire x2="2448" y1="1056" y2="1056" x1="2256" />
        </branch>
        <branch name="ECRAA">
            <wire x2="2864" y1="864" y2="864" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="2864" y="864" name="ECRAA" orien="R0" />
        <instance x="1584" y="1088" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1232" y="1312" name="XLXI_13" orien="R0">
        </instance>
    </sheet>
</drawing>