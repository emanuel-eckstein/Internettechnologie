<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="Saatgut-Overview" page-height="297mm" page-width="210mm" margin="15mm">
                    <fo:region-body margin-top="15mm" margin-bottom="15mm"/>
                    <fo:region-before extent="15mm"/>
                    <fo:region-after extent="15mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="Saatgut-Overview">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block border-bottom="0.5pt solid black" text-align="center" font-size="18pt" font-weight="bold">Saatguttüten Übersicht</fo:block>
                </fo:static-content>

				<fo:flow flow-name="xsl-region-body">
					<xsl:for-each select="saatguttuetchen/tuete">
						<fo:block border="solid 1pt black" padding="4pt" margin-bottom="10pt">
							<fo:table width="100%" border-collapse="separate" border-spacing="0">
								<fo:table-column column-width="auto"/>
								<fo:table-column column-width="auto"/>
								<fo:table-column column-width="auto"/>
								<fo:table-column column-width="auto"/>
								<fo:table-body start-indent="0pt" end-indent="0pt">
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-weight="bold">Gemüseart:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block><xsl:value-of select="gemueseart"/></fo:block>
										</fo:table-cell>
										<fo:table-cell>
                                    <fo:block font-weight="bold">Familie</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Inhaltsmenge</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Marke</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Aussaatzeit</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Erntezeit</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Standort</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Kosten</fo:block>
									</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
                        <fo:block margin-top="6pt">
                            <fo:block font-weight="bold">Beschreibung:</fo:block>
                            <fo:block><xsl:value-of select="beschreibung"/></fo:block>
                        </fo:block>
						</fo:block>
					</xsl:for-each>
				</fo:flow>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
#