<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="OverdueContracts">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="row_15 title_row">
                            <p class="title">
                                <xsl:value-of select='OverdueContracts/@title'/>
                            </p>
                        </td>
                        <td class="content_row space">

                            <table class="bg">
                                <tbody>

                                    <tr class="h_tr">
                                        <th><xsl:value-of select="OverdueContracts/Contract/CodeOfContract/@title"/></th>
                                        <th><xsl:value-of select="OverdueContracts/Contract/PaymentCount/@title"/></th>
                                        <th><xsl:value-of select="OverdueContracts/Contract/OverdueAmount/@title"/></th>
                                        <th><xsl:value-of select="OverdueContracts/Contract/TypeOfFounding/@title"/></th>
                                        <th><xsl:value-of select="OverdueContracts/Contract/LastUpdate/@title"/></th>
                                    </tr>

                                    <xsl:for-each select="OverdueContracts/Contract">

                                        <xsl:variable name="oddeven">
                                            <xsl:if test="(position() mod 3) = 1">odd</xsl:if>
                                            <xsl:if test="not((position() mod 3) = 1)">even</xsl:if>
                                        </xsl:variable>
                                        <tr class="data_row {$oddeven}">

                                            <td><xsl:value-of select="CodeOfContract/@value"/></td>
                                            <td><xsl:value-of select="PaymentCount/@value"/></td>
                                            <td><xsl:value-of select="OverdueAmount/@value"/></td>
                                            <td><xsl:value-of select="TypeOfFounding/@value"/></td>
                                            <td><xsl:value-of select="LastUpdate/@value"/></td>

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