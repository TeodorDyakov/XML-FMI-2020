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
    </div>

  <div style="padding-left:16px"></div>
 

  <div id = "departments">
    <xsl:for-each select="HRManagement/departmentList/departmentInfo">
      <xsl:variable name="dId"><xsl:value-of select="depId"/></xsl:variable>
      <xsl:variable name="leaderId"><xsl:value-of select="leaderId"/></xsl:variable>
      <xsl:variable name="depLeader" select="/HRManagement/employeeList/employee[id = $leaderId]"/>
      
      <div  class = "out">
        <div class = "depHeader">
          <strong><h2>
          <xsl:value-of select="departmentName"/></h2></strong>
        </div>
          
        <div class="manager">
          <strong><h>Мениджър: </h></strong>
          <xsl:value-of select="$depLeader/personal-info/firstName"/>&#160;<xsl:value-of
          select="$depLeader/personal-info/familyName"/>
        </div>
        
        <div class = "managerEmail">
          <xsl:value-of select="$depLeader/contact-info/email-address"/>
        </div>

        <div class = "names">
          <xsl:for-each select="/HRManagement/employeeList/employee[depId = $dId and id != $leaderId]">
            <li>
              <xsl:value-of select="personal-info/firstName"/>&#160;<xsl:value-of select="personal-info/familyName"/>: <xsl:value-of
              select="contract/position"/>
            </li>
          </xsl:for-each>
        </div>
          <div class = "emails">
          <xsl:for-each select="/HRManagement/employeeList/employee[depId = $dId  and id != $leaderId]">
            <li>
              <xsl:value-of select="contact-info/email-address"/>
            </li>
          </xsl:for-each>
        </div>
      </div>
    </xsl:for-each>
  </div>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
