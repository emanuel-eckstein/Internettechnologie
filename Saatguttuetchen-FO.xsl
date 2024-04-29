<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/saatguttuetchen">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4"
                                       page-height="29.7cm"
                                       page-width="21cm"
                                       margin="2cm">
                    <fo:region-body margin-top="3cm" margin-bottom="2cm"/>
                    <fo:region-before extent="3cm"/>
                    <fo:region-after extent="2cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select="tuete"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template match="tuete">
        <fo:block font-size="12pt" font-family="sans-serif" space-after="12pt">
            <fo:inline font-weight="bold">Gemüseart:</fo:inline>
            <xsl:value-of select="gemueseart"/>
        </fo:block>
        <fo:block font-size="12pt" font-family="sans-serif" space-after="12pt">
            <fo:inline font-weight="bold">Familie:</fo:inline>
            <xsl:value-of select="familie"/>
        </fo:block>
        <fo:block font-size="12pt" font-family="sans-serif" space-after="12pt">
            <fo:inline font-weight="bold">Inhaltsmenge:</fo:inline>
            <xsl:value-of select="inhaltsmenge"/>
        </fo:block>
        <!-- Weitere Datenfelder hier ähnlich einfügen -->
        <fo:block font-size="12pt" font-family="sans-serif" space-after="12pt">
            <fo:inline font-weight="bold">Beschreibung:</fo:inline>
            <xsl:value-of select="beschreibung"/>
        </fo:block>
        <fo:block font-size="12pt" font-family="sans-serif" space-after="12pt">
            <fo:inline font-weight="bold">Kosten:</fo:inline>
            <xsl:value-of select="kosten"/> €
        </fo:block>
        <fo:block space-after="20pt">
            <fo:leader leader-pattern="rule" rule-style="solid" rule-thickness="0.5pt"/>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>

