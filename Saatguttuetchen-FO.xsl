<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simpleA4"
                                       page-height="29.7cm"
                                       page-width="21cm"
                                       margin="2cm">
                    <fo:region-body margin-top="3cm" margin-bottom="2cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="simpleA4">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block font-size="24pt" font-weight="bold" text-align="center" text-decoration="underline">
                        SAATGUTTÜTCHEN
                    </fo:block>
                </fo:static-content>

                <fo:flow flow-name="xsl-region-body">
                    <xsl:for-each select="saatguttuetchen/tuete">
                        <fo:block font-weight="bold" space-after="5mm">
                            Gemüseart: <xsl:value-of select="gemueseart"/>
                        </fo:block>
                        <fo:block>
                            Familie: <xsl:value-of select="familie"/>
                        </fo:block>
                        <fo:block>
                            Inhaltsmenge: <xsl:value-of select="inhaltsmenge"/>
                        </fo:block>
                        <fo:block>
                            Marke: <xsl:value-of select="marke"/>
                        </fo:block>
                        <fo:block>
                            Aussaatzeit: <xsl:value-of select="aussaatzeit"/>
                        </fo:block>
                        <fo:block>
                            Erntezeit: <xsl:value-of select="erntezeit"/>
                        </fo:block>
                        <fo:block>
                            Standort: <xsl:value-of select="standort"/>
                        </fo:block>
                        <fo:block>
                            Kosten: <xsl:value-of select="kosten"/> €
                        </fo:block>
                        <fo:block space-after="5mm">
                            Beschreibung: <xsl:value-of select="beschreibung"/>
                        </fo:block>
                        <fo:block border-top="1pt solid black" space-before="5mm"/>
                    </xsl:for-each>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
