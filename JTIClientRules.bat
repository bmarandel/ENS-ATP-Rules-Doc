:: Benjamin Marandel - Intel Security - 2015
:: JTIClientRules 1.1
:: Build HTML JTI Rule documentation in all language 
:: Supported OS: XP, Vista, 7, 8, 8.1 & 10
::               32 and 64 bits systems.
:: Supported McAfee Agent: 4.X and 5.X
:: ##########################################

@ECHO OFF

ECHO ^<?xml version="1.0" encoding="UTF-8"?^> > JTIClientRules2.xml
FOR /F "usebackq skip=2 tokens=3* delims= " %%A IN (`find "JTIRule.xsd" JTIClientRules.xml`) DO (ECHO ^<JcmContent %%A >> JTIClientRules2.xml)
MORE +4 JTIClientRules.xml >> JTIClientRules2.xml

msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_en-us.htm outLang=en
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_de-de.htm outLang=de
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_es-es.htm outLang=es
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_ja-ja.htm outLang=ja
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_zh-tw.htm outLang=zh-tw
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_zh-cn.htm outLang=zh-cn
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_pt-br.htm outLang=pt-br
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_pt-pt.htm outLang=pt-pt
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_fr-fr.htm outLang=fr
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_it-it.htm outLang=it
msxsl.exe JTIClientRules2.xml JTIClientRules.xsl -o JTIClientRules_ko-ko.htm outLang=ko