<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="styles.css"></link>
  </head>

  <script>
    function sortBySalary() {
      document.getElementById('sorted').style.display = 'inline';
      document.getElementById('unsorted').style.display = 'none';
    };

    function sortByName() {
      document.getElementById('sorted').style.display = 'none';
      document.getElementById('unsorted').style.display = 'inline';
    };

  </script>
  <body>
    <div class="topnav">
      <a href="slujiteli.html">Служители</a>
      <a href="otdeli.html">Отдели</a>
      <a href="#pozicii">Позиции</a>
    </div>

  <div style="padding-left:16px"></div>
  
  <button class="button" onclick="sortBySalary();">Сортирай по заплата</button>
  <button class="button" onclick="sortByName();">Сортирай по име</button>
  
  <div id = "sorted">
    <xsl:for-each select="HRManagement/employeeList/employee">
    <xsl:sort select="contract/salary"></xsl:sort>
      <div  class = "out">
        
        <div class = "details">
          
          <ul>Лични данни:
            <li><strong>Име: </strong> <xsl:value-of select="personal-info/firstName"/></li>
            <li><strong>Презиме: </strong><xsl:value-of select="personal-info/secondName"/></li>
            <li><strong>Фамилия: </strong><xsl:value-of select="personal-info/familyName"/></li>
            <li><strong>e-mail: </strong><xsl:value-of select="contact-info/email-address"/></li>
            <li><strong>Телефон: </strong><xsl:value-of select="contact-info/telephone"/></li>
        </ul>
        </div>

        <div class = "contract">
          <ul>Договор:
            <li><strong>Позиция: </strong><xsl:value-of select="contract/position"/></li>
            <li><strong>Вид: </strong><xsl:value-of select="contract/type"/></li>
            <li><strong>Начало: </strong><xsl:value-of select="contract/signDate"/></li>
             <xsl:if test="contract/duration">
              <li><strong>Срок: </strong><xsl:value-of select="contract/duration"/></li>
            </xsl:if>
            <xsl:if test="contract/duration">
              <li><strong>Край: </strong><xsl:value-of select="contract/endDate"/></li>
            </xsl:if>
            <li><strong>Заплата: </strong><xsl:value-of select="contract/salary"/> лв.</li>
          </ul>
        </div>

          <img class = "profilePicture" src="profilePics/{id}.jpg"/>

      </div>
    </xsl:for-each>
  </div>

  <div id = "unsorted">
    <xsl:for-each select="HRManagement/employeeList/employee">
    <xsl:sort select="personal-info/firstName"></xsl:sort>
      <div  class = "out">
        
        <div class = "details">
          <ul>Лични данни:
            <li><strong>Име: </strong> <xsl:value-of select="personal-info/firstName"/></li>
            <li><strong>Презиме: </strong><xsl:value-of select="personal-info/secondName"/></li>
            <li><strong>Фамилия: </strong><xsl:value-of select="personal-info/familyName"/></li>
            <li><strong>e-mail: </strong><xsl:value-of select="contact-info/email-address"/></li>
            <li><strong>Телефон: </strong><xsl:value-of select="contact-info/telephone"/></li>
        </ul>
        </div>


        <div class = "contract">
          <ul>Договор:
            <li><strong>Позиция: </strong><xsl:value-of select="contract/position"/></li>
            <li><strong>Вид: </strong><xsl:value-of select="contract/type"/></li>
            <li><strong>Начало: </strong><xsl:value-of select="contract/signDate"/></li>
             <xsl:if test="contract/duration">
              <li><strong>Срок: </strong><xsl:value-of select="contract/duration"/></li>
            </xsl:if>
            <xsl:if test="contract/duration">
              <li><strong>Край: </strong><xsl:value-of select="contract/endDate"/></li>
            </xsl:if>
            <li><strong>Заплата: </strong><xsl:value-of select="contract/salary"/> лв.</li>
          </ul>
        </div>

        <div class = "column">
          <img class = "profilePicture" src="profilePics/{id}.jpg"/>
        </div>

      </div>
    </xsl:for-each>
  </div>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
