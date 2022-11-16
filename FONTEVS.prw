#INCLUDE 'Protheus.ch'

User Function FonteVs()
    DEFINE DIALOG oDlg TITLE "Calculadora" FROM 180,180 TO 450,570 PIXEL

    Local cGet1 := "0"
    Local lHasButton1 := .T.
    Local cGet2 := "0"
    Local lHasButton2 := .T.
    Local nResult

    oFont := TFont():New('Courier new',,-18,.T.)

    oSay1:= TSay():Create(oDlg,{||''},005,010,,oFont,,,,.T.,CLR_BLACK,CLR_WHITE,200,20)
    oSay1:CtrlRefresh()
    oSay1:SetText("Digite um Número")

    oSay2:= TSay():Create(oDlg,{||''},025,010,,oFont,,,,.T.,CLR_BLACK,CLR_WHITE,200,20)
    oSay2:CtrlRefresh()
    oSay2:SetText("Digite outro número")

    oGet1 := TGet():New( 005, 0120, { | u | If( PCount() == 0, cGet1, cGet1 := u ) },oDlg,;
    060, 010, "!@",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"cGet1",,,,lHasButton1)

    oGet2 := TGet():New( 025, 0120, { | u | If( PCount() == 0, cGet2, cGet2 := u ) },oDlg,;
    060, 010, "!@",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"cGet2",,,,lHasButton2)

    nResult := oGet1 + oGet2

    oSay1:lTransparent = .T.
    oSay1:lWordWrap = .F.

    oSay2:lTransparent = .T.
    oSay2:lWordWrap = .F.

    oTButton1 := TButton():New( 050, 010, " + ",oDlg,, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
    oTButton2 := TButton():New( 050, 055, " - ",oDlg,, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )   
    oTButton3 := TButton():New( 050, 100, " * ",oDlg,, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
    oTButton4 := TButton():New( 050, 145, " / ",oDlg,, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )

    oTButton1:bAction := {||alert("O resultado é: " +nResult)}
    oTButton2:bAction :={||alert ("b")}
    oTButton3:bAction :={||alert ("c")}
    oTButton4:bAction :={||alert ("d")}

    ACTIVATE DIALOG oDlg CENTERED
Return
