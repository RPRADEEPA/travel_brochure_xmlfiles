<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" omit-xml-declaration = "no" doctype-system = "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>
<xsl:template match = "/">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
<title>details</title>
</head>
<body>
<style>
	body{
		background-color:yellow;
	}
	a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}
	.next {
  background-color: #4CAF50;
  color: white;
}
</style>
   <p> <b>HOTEL DETAILS</b> </p>
	<table border = "1" bgcolor = "grey">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Rent</th>
			<th>Rating</th>
			<th>Location</th>
		</tr>
	</thead>
	<xsl:for-each select = "/accomadation/hotel">
		<tr>
            <td><xsl:value-of select = "@hid"/></td>
			<td><xsl:value-of select = "name"/></td>
			<td><xsl:value-of select = "rent"/></td>
			<td><xsl:value-of select = "ratings"/></td>
			<td><xsl:value-of select = "location"/></td>
		</tr>
	</xsl:for-each>
	</table>
	<a href="accom.html" class="next">contacts</a>
</body>
</html>
</xsl:template>
</xsl:stylesheet>