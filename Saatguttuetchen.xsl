<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Saatguttütchen</title>
        <style>
          #top-right-image {
            position: absolute;
            top: 0;
            right: 0;
            margin: 10px;
            width: 200px;
            height: 100px;
          }
          #saatgut-table {
            margin-top: 50px; /* Ein paar Pixel nach unten verschieben */
            border: 2px solid black;
            border-collapse: collapse;
            background-color: rgba(144, 238, 144, 0.05);
          }
          h1 {
            font-family: Times New Roman, sans-serif; /* Schriftart */
            font-size: 48px; /* Schriftgröße */
            font-weight: bold; /* Fett */
            text-decoration: underline; /* Unterstrichen */
          }
          .horizontal-line td {
            border-top: 2px solid black; /* Horizontale Linie */
          }
        </style>
      </head>
      <body>
        <h1>SAATGUTTÜTCHEN</h1>
        <img id="top-right-image" src="Bilder/HTWK.jpg" alt="Logo der HTWK"/>
        <table id="saatgut-table">
          <tr>
            <th> </th>
            <th> </th>
            <th> </th>
            <th> </th>
            <th> </th>
            <th> </th>
            <th> </th>
            <th> </th>
            <th> </th>
          </tr>
          <xsl:for-each select="saatguttuetchen/tuete">
            <tr>
              <td><strong>Gemüseart:</strong><br>
              </br><xsl:value-of select="gemueseart"/></td>
              <td><strong>Familie:</strong><br>
              </br><xsl:value-of select="familie"/></td>
              <td><strong>Inhaltsmenge:</strong><br>
              </br><xsl:value-of select="inhaltsmenge"/></td>
              <td><strong>Marke:</strong><br>
              </br><xsl:value-of select="marke"/></td>
              <td><strong>Aussaatzeit:</strong><br>
              </br><xsl:value-of select="aussaatzeit"/></td>
              <td><strong>Erntezeit:</strong><br>
              </br><xsl:value-of select="erntezeit"/></td>
              <td>
<strong>Standort:</strong><br>
              </br>
                <xsl:value-of select="standort"/>
                <xsl:choose>
                  <xsl:when test="standort='sonnig'"> &#9788;</xsl:when>
                  <xsl:when test="standort='halbschattig'"> &#9728;</xsl:when> 
                  <xsl:when test="standort='schattig'"> &#9729;</xsl:when>
                  <xsl:when test="standort='sonnig bis halbschattig'"> &#9788; &#9728;</xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </td>
              <td><strong>Kosten:</strong><br>
              </br><xsl:value-of select="kosten"/> €</td>
              <td><img src="Bilder/{@id}.jpg" alt="{gemueseart}" width="125" height="150"/></td>
            </tr>
            <tr class="horizontal-line">
              <td colspan="10"></td>
            </tr>
            <tr>
              <td colspan="9"><strong>Beschreibung:</strong></td>
            </tr>
            <tr>
              <td colspan="9"><xsl:value-of select="beschreibung"/></td>
            </tr>
            <tr class="horizontal-line">
              <td colspan="10"></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
