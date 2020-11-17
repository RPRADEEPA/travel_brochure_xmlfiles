<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" omit-xml-declaration = "no" doctype-system = "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>
<xsl:template match = "/">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
<title>ROUTE</title>
</head>
<body>
<style>
	body{
		background-color:#ff66b2;
	}
</style>
   <p> <b>TRAVEL BROCHURE</b> </p>
	<table border = "1" bgcolor = "pink">
	<thead>
		<tr>
			<th>Mode</th>
			<th>nearest hub</th>
			<th>details</th>
		</tr>
	</thead>
	<xsl:for-each select = "/about/route">
		<tr>
            <td><xsl:value-of select = "transport"/></td>
			<td><xsl:value-of select = "nearest"/></td>
			<td><xsl:value-of select = "desc"/></td>
		</tr>
	</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>