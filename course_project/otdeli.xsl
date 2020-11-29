<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="styles.css"></link>
  </head>

  <body>
    <div class="topnav">
      <a href="slujiteli.html">Служители</a>
      <a href="otdeli.html">Отдели</a>
      <a href="#pozicii">Позиции</a>
    </div>

  <div style="padding-left:16px"></div>
 

  <div id = "departments">
    <xsl:for-each select="HRManagement/departmentList/departmentInfo">
      <div  class = "out">
        <p><xsl:value-of select="departmentName"/></p>
      </div>
    </xsl:for-each>
  </div>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
