<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="Advertising">

        <xsl:for-each select="Advertising/Item">
            <xsl:copy-of select="*"/>
        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>