<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
<head>
<!--<link rel="stylesheet" type="text/css" href="static/styl.css">-->
</head>
</head>
<body>
  <h1>Ryby akwariowe</h1>
  <h2>Spis ryb akwariowych</h2>
  <table border="1">
    <tr bgcolor="lightblue">
      <th>Gatunek</th>
      <th>Pochodzenie</th>
	  <th>Średnia długość (cm)</th>
	  <th>Wymagane akwarium (l)</th>
	  <th>Temperatura (&#8451;)</th>
	  <th>Kwaśność wody (pH)</th>
	  <th>Kupiono</th>
    </tr>
    <xsl:for-each select="dane/ryby/rodzina/ryba">
    <tr>
      <td><xsl:value-of select="gatunek"/></td>
      <td><xsl:value-of select="pochodzenie"/></td>
	  <td><xsl:value-of select="śr_długość"/></td>
	  <td><xsl:value-of select="woda/wlk_akwarium"/></td>
	  <td><xsl:value-of select="woda/temp_min"/> - <xsl:value-of select="woda/temp_max"/></td>
	  <td><xsl:value-of select="woda/kwaśność_min"/> - <xsl:value-of select="woda/kwaśność_max"/></td>
	  <td><xsl:value-of select="woda/@opis"/></td>
    </tr>
    </xsl:for-each>
  </table>
  <table border="1">
    <tr bgcolor="lightgreen">
      <th>Nazwa</th>
      <th>Tempo wzrostu</th>
	  <th>Wymagane akwarium (l)</th>
	  <th>Temperatura (&#8451;)</th>
	  <th>Kwaśność wody (pH)</th>
	  <th>Kupiono</th>
    </tr>
    <xsl:for-each select="dane/rośliny/roślina">
    <tr>
      <td><xsl:value-of select="nazwa"/></td>
      <td><xsl:value-of select="wzrost"/></td>
	  <td><xsl:value-of select="woda/wlk_akwarium"/></td>
	  <td><xsl:value-of select="woda/temp_min"/> - <xsl:value-of select="woda/temp_max"/></td>
	  <td><xsl:value-of select="woda/kwaśność_min"/> - <xsl:value-of select="woda/kwaśność_max"/></td>
	  <td><xsl:value-of select="woda/@opis"/></td>
    </tr>
    </xsl:for-each>
  </table>
  
  <table border="1">
    <tr bgcolor="pink">
      <th>Nazwa</th>
      <th>Pojemność (l)</th>
	  <th>Cena (zł)</th>
    </tr>
    <xsl:for-each select="dane/akwaria/akwarium">
    <tr>
      <td><xsl:value-of select="nazwa"/></td>
      <td><xsl:value-of select="pojemność"/></td>
	  <td><xsl:value-of select="cena"/></td>
    </tr>
    </xsl:for-each>
  </table>

  
  
  <select id="rodz">
  <xsl:for-each select="dane/ryby/rodzina/ryba">
	<option><xsl:value-of select="gatunek"/></option>
  </xsl:for-each>
  </select>
  <button type="button" onclick="kup()">Kup</button>
  
  <p id="napis">Nazwa</p>
  
  
  <script>
function kup() {
			var gat = document.getElementById("rodz").value;
			document.getElementById("napis").innerHTML = gat;
}
</script> 


</body>
</html>
</xsl:template>
</xsl:stylesheet>