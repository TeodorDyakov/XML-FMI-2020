<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Employees</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>First Name</th>
        <th>Family Name</th>
        <th>Position</th>
        <th>Salary</th>
      </tr>
      <xsl:for-each select="HRManagement/employeeList/employee">
      <tr>
        <td><xsl:value-of select="personal-info/firstName"/></td>
        <td><xsl:value-of select="personal-info/secondName"/></td>
        <td><xsl:value-of select="contract/position"/></td>
        <td><xsl:value-of select="contract/salary"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
