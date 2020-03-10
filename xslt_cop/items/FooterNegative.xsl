<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="FooterNegative">
        <div class="printable">
            <table class="full_width" id='{Header/@name}'>
                <tbody>
                    <tr>
                        <td class="row_15 title_row">

                        </td>
                        <td class="space content_row">

                            <p><xsl:value-of select="FooterNegative/Information/@value"/></p>
                            <br/>
                            <p><xsl:value-of select="FooterNegative/ReportDescription/@value"/></p>

                            <p>
                                <b><xsl:value-of select="FooterNegative/ReportHeader2/@value"/></b>
                                <xsl:value-of select="FooterNegative/Report2/@value"/>
                            </p>

                            <p>
                                <b><xsl:value-of select="FooterNegative/ReportHeader3/@value"/></b>
                                <xsl:value-of select="FooterNegative/Report3/@value"/>
                            </p>

                            <p>
                                <b><xsl:value-of select="FooterNegative/ReportHeader/@value"/></b>
                                <xsl:value-of select="FooterNegative/Report/@value"/>
                            </p>

                            <p>
                                <b><xsl:value-of select="FooterNegative/ReportHeader4/@value"/></b>
                                <xsl:value-of select="FooterNegative/Report4/@value"/>
                            </p>

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </xsl:template>

</xsl:stylesheet>