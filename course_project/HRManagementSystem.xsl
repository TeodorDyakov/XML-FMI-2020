<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="styles.css"></link>
  </head>
  <body>
    <h2>Employees</h2>
    <table border="1" id = "employees">
      <tr bgcolor="#9acd32">
        <th>Име</th>
        <th>Презиме</th>
        <th>Фамилия</th>
        <th>Начало на договор</th>
        <th>Позиция</th>
        <th>Заплата</th>
        <th>Имейл</th>
        <th>Tелефон</th>
      </tr>
      <xsl:for-each select="HRManagement/employeeList/employee">
      <tr>
        <td><xsl:value-of select="personal-info/firstName"/></td>
        <td><xsl:value-of select="personal-info/secondName"/></td>
        <td><xsl:value-of select="personal-info/familyName"/></td>
        <td><xsl:value-of select="contract/signDate"/></td>
        <td><xsl:value-of select="contract/position"/></td>
        <td><xsl:value-of select="contract/salary"/></td>
        <td><xsl:value-of select="contact-info/email-address"/></td>
        <td><xsl:value-of select="contact-info/telephone"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
