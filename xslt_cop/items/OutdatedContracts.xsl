<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="OutdatedContracts">

        <p class="title contract_group" style="padding-left: 10px;">
            <xsl:value-of select="OutdatedContracts/@stitle"/>
        </p>

        <xsl:if test="OutdatedContracts/Contract">

            <div class="printable">
                <table class="bordered">
                    <tbody>
                        <tr>
                            <th><xsl:value-of select="OutdatedContracts/Contract[1]/CodeOfContract/@title"/></th>
                            <th><xsl:value-of select="OutdatedContracts/Contract[1]/DateOfCreditStart/@title"/></th>
                            <th><xsl:value-of select="OutdatedContracts/Contract[1]/DateOfCreditEnd/@title"/></th>
                            <th><xsl:value-of select="OutdatedContracts/Contract[1]/DateOfRealRepayment/@title"/></th>
                            <th><xsl:value-of select="OutdatedContracts/Contract[1]/SubjectRole/@title"/></th>
                            <th><xsl:value-of select="OutdatedContracts/Contract[1]/FinancialInstitution/@title"/></th>
                        </tr>
                        <xsl:for-each select="OutdatedContracts/Contract">
                            <tr>
                                <td><xsl:value-of select="CodeOfContract/@value"/></td>
                                <td><xsl:value-of select="DateOfCreditStart/@value"/></td>
                                <td><xsl:value-of select="DateOfCreditEnd/@value"/></td>
                                <td><xsl:value-of select="DateOfRealRepayment/@value"/></td>
                                <td>
                                    <xsl:for-each select="SubjectRole">
                                        <xsl:value-of select="@value"/>
                                        <xsl:if test="not(position() = count(../SubjectRole))">,<xsl:text disable-output-escaping="yes">&#160;</xsl:text></xsl:if>
                                    </xsl:for-each>
                                </td>
                                <td><xsl:value-of select="FinancialInstitution/@value"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>

        </xsl:if>

        <xsl:if test="not(OutdatedContracts/Contract)">
            <p><xsl:value-of select="Footer/NoOutdatedContracts/@stitle"/></p>
        </xsl:if>

    </xsl:template>

</xsl:stylesheet>