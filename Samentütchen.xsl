<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Thu Apr 11 12:08:06 CEST 2024 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/samentuetchen">
	<html>
		<body>
		
<h2>Samenütchen</h2>
    		<table border="1">
      			<tr bgcolor="#9acd32">
        			<th>Gemüseart</th>
        			<th>Saatgutyp</th>
        			<th>Inhaltsmenge</th>
        			<th>Marke</th>
        			<th>Aussaatzeit</th>
        			<th>Ernezeit</th>
        			<th>Standort</th>
        			<th>Beschreibung</th>
      			</tr>
      			<xsl:for-each select="samentuetchen/tuete">
        			<tr>
          				<td><xsl:value-of select="gemueseart"/></td>
          				<td><xsl:value-of select="saatguttyp"/></td>
          				<td><xsl:value-of select="inhaltsmenge"/></td>
          				<td><xsl:value-of select="marke"/></td>
          				<td><xsl:value-of select="aussaatzeit"/></td>
          				<td><xsl:value-of select="erntezeit"/></td>
          				<td><xsl:value-of select="standort"/></td>
          				<td><xsl:value-of select="beschreibung"/></td>
        			</tr>
      			</xsl:for-each>
    		</table>
		<xsl:apply-templates/>
		</body>
	</html>
	</xsl:template>

</xsl:stylesheet>


