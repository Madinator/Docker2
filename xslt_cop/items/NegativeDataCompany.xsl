<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="NegativeDataCompany">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="row_15 title_row">
                            <p class="title">
                                <xsl:value-of select='NegativeData/@title'/>
                            </p>
                        </td>
                        <td class="content_row space">

                            <table class="bg">
                                <tbody>

                                    <tr class="h_tr">
                                        <th><xsl:value-of select="NegativeData/NegativeStatusCompany/StatusOfBusiness/@title"/></th>
                                        <th><xsl:value-of select="NegativeData/NegativeStatusCompany/CourtName/@title"/></th>
                                    </tr>

                                    <xsl:for-each select="NegativeData/NegativeStatusCompany">

                                        <xsl:variable name="oddeven">
                                            <xsl:if test="(position() mod 3) = 1">odd</xsl:if>
                                            <xsl:if test="not((position() mod 3) = 1)">even</xsl:if>
                                        </xsl:variable>
                                        <tr class="data_row {$oddeven}">
                                            <th><xsl:value-of select="StatusOfBusiness/@value"/></th>
                                            <th><xsl:value-of select="CourtName/@value"/></th>
                                        </tr>

                                    </xsl:for-each>

                                </tbody>
                            </table>

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

</xsl:stylesheet>