<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="styles.css"></link>
  </head>
  <body>
      <xsl:for-each select="HRManagement/employeeList/employee">
        <div  class = "out">
          <div class = "column"><img class = "pp" src="profilePic.webp"/> </div>

          <div class = "details">
            <h>Лични данни:</h>
            <li><strong>Име: </strong> <xsl:value-of select="personal-info/firstName"/></li>
            <li><strong>Презиме: </strong><xsl:value-of select="personal-info/secondName"/></li>
            <li><strong>Фамилия: </strong><xsl:value-of select="personal-info/familyName"/></li>
            <li><strong>e-mail: </strong><xsl:value-of select="contact-info/email-address"/></li>
            <li><strong>telephone: </strong><xsl:value-of select="contact-info/telephone"/></li>
          </div>

          <div class = "contract">
            <h>Договор:</h>
            <li><strong>Позиция: </strong><xsl:value-of select="contract/position"/></li>
            <li><strong>тип: </strong><xsl:value-of select="contract/type"/></li>
            <li><strong>Начало: </strong><xsl:value-of select="contract/signDate"/></li>
            <li><strong>Срок: </strong><xsl:value-of select="contract/duration"/></li>
            <li><strong>Край: </strong><xsl:value-of select="contract/endDate"/></li>
          </div>
          
        </div>
      </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
