<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="ExistingContracts">

        <p class="title" style="border-top: 1px solid #ccc; margin-top: 0; padding: 5px 10px; font-size: 14pt; text-align: justify;">
            <xsl:value-of select="Footer/TitleDetailedInformation/@stitle"/>
        </p>

        <xsl:if test="/Root/FooterPersonal">
            <p class="title" style="border-top: 1px solid #ccc; margin-top: 0; padding: 5px 10px; font-size: 13pt; color: black; text-decoration: underline; text-align: justify;">
                <xsl:value-of select="/Root/FooterPersonal/Text2/@title"/>
            </p>
            <ul style="font-size: 14px;">
                <li style="margin-bottom: 5px; text-align: justify;">
                    <b><u><xsl:value-of select="/Root/FooterPersonal/Text3/@title"/></u></b>
                    <xsl:value-of select="/Root/FooterPersonal/Text3_2/@title"/>
                    <b><xsl:value-of select="/Root/FooterPersonal/Text3_3/@title"/></b>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <b><u><xsl:value-of select="/Root/FooterPersonal/Text4/@title"/></u></b>
                    <xsl:value-of select="/Root/FooterPersonal/Text4_2/@title"/>
                    <b><xsl:value-of select="/Root/FooterPersonal/Text4_3/@title"/></b>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <b><u><xsl:value-of select="/Root/FooterPersonal/Text5/@title"/></u></b>
                    <xsl:value-of select="/Root/FooterPersonal/Text5_2/@title"/>
                    <b><xsl:value-of select="/Root/FooterPersonal/Text5_3/@title"/></b>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <xsl:value-of select="/Root/FooterPersonal/Text6/@title"/>
                    <b><u><xsl:value-of select="/Root/FooterPersonal/Text6_2/@title"/></u></b>
                    <xsl:value-of select="/Root/FooterPersonal/Text6_3/@title"/>
                    <b><u><xsl:value-of select="/Root/FooterPersonal/Text6_4/@title"/></u></b>
                    <xsl:value-of select="/Root/FooterPersonal/Text6_5/@title"/>
                </li>
            </ul>
        </xsl:if>

        <p class="title contract_group" style="padding-left: 10px;">
            <xsl:value-of select="ExistingContracts/@stitle"/>
        </p>

        <xsl:if test="not(ExistingContracts/Contract)">
            <p>
                <xsl:value-of select="Footer/NoExistingContracts/@stitle"/>
            </p>
        </xsl:if>
        <xsl:if test="ExistingContracts/Contract">
            <xsl:for-each select="ExistingContracts/Contract">



            </xsl:for-each>

        </xsl:if>
    </xsl:template>

</xsl:stylesheet>

