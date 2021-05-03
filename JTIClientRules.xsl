<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output version="4.0" method="html" encoding="UTF-8" indent="yes" />
<xsl:param name="outLang"></xsl:param>
<xsl:template match="/JcmContent">
   <html>
   <header>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   </header>
   <body>
     <h2>ENS ATP Rules Description (Content <xsl:value-of select="@version" />)</h2>
     <table border="0" width="640px">
       <xsl:for-each select="Rules/Rule">
		<xsl:sort select="@id" data-type="number" order="ascending" />
         <tr bgcolor="#939598"><td><font face="verdana" size="4" color="white"><b>#<xsl:value-of select="position()" /> - <xsl:value-of select="NameAndDescription[@xml:lang=$outLang]/Name"/></b></font></td></tr>
		 <tr bgcolor="#DCDDDD"><td><p align="right">Rule_id:<xsl:value-of select="@id" />  VSE_id:<xsl:value-of select="@identifier" /> Target_Rep:<xsl:value-of select="@targetReputation" /></p></td></tr>
		 <tr bgcolor="#DCDDDD"><td><xsl:value-of select="NameAndDescription[@xml:lang=$outLang]/LongDescription"/></td></tr>
       </xsl:for-each>
     </table>
   </body>
   </html>
 </xsl:template>
</xsl:stylesheet>	