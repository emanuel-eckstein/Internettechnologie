<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Saatguttütchen</title>
                <!-- Hier würden die Styles und andere Head-Elemente eingefügt -->
            </head>
            <body>
                <h1>SAATGUTTÜTCHEN</h1>
                <!-- Fügen Sie Ihr Logo-Bild hier ein -->
                <table id="saatgut-table">
                    <!-- Überschriften für Ihre Tabelle -->
                    <tr>
                        <th>Gemüseart</th>
                        <th>Familie</th>
                        <!-- Weitere Überschriften entsprechend Ihrer XML-Struktur -->
                    </tr>
                    <!-- Iterieren Sie über die Elemente in Ihrem XML-Dokument -->
                    <xsl:for-each select="//tuete">
                        <tr>
                            <td><xsl:value-of select="gemueseart"/></td>
                            <td><xsl:value-of select="familie"/></td>
                            <!-- Weitere Datenzellen entsprechend Ihrer XML-Struktur -->
                        </tr>
                        <tr>
                            <td colspan="9"><strong>Beschreibung:</strong></td>
                        </tr>
                        <tr>
                            <td colspan="9"><xsl:value-of select="beschreibung"/></td>
                        </tr>
                        <!-- Fügen Sie horizontale Linien zwischen den Einträgen hinzu -->
                        <tr class="horizontal-line">
                            <td colspan="10"></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

