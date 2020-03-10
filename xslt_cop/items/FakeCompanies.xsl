<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="FakeCompanies">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='FakeCompanies/@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <td colspan="5">
                                            <xsl:value-of select="FakeCompanies/Status/@value"/>
                                        </td>
                                    </tr>
                                    <xsl:for-each select="FakeCompanies/Company">
                                        <tr>
                                            <td>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="CompanyName/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="CompanyName/@value"/>
                                                </p>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="CompanyRNN/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="CompanyRNN/@value"/>
                                                </p>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="CompanyBIN/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="CompanyBIN/@value"/>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="CEOName/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="CEOName/@value"/>
                                                </p>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="CEORNN/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="CEORNN/@value"/>
                                                </p>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="CEOIIN/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="CEOIIN/@value"/>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="FounderName/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="FounderName/@value"/>
                                                </p>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="FounderRNN/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="FounderRNN/@value"/>
                                                </p>
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="FounderIIN/@title"/>:
                                                    </b>
                                                    <xsl:value-of select="FounderIIN/@value"/>
                                                </p>
                                            </td>
                                            <td align="center">
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="Order/@title"/>
                                                    </b>
                                                </p>
                                                <p>
                                                    <xsl:value-of select="Order/@value"/>
                                                </p>
                                            </td>
                                            <td align="center">
                                                <p>
                                                    <b>
                                                        <xsl:value-of select="CancellationDate/@title"/>
                                                    </b>
                                                </p>
                                                <p>
                                                    <xsl:value-of select="CancellationDate/@value"/>
                                                </p>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                    <tr>
                                        <td colspan="5">
                                            <b>
                                                <xsl:value-of select="FakeCompanies/Source/@title"/>
                                            </b>:
                                            <a href="{FakeCompanies/Source/@value}"><xsl:value-of select="FakeCompanies/Source/@value"/></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <b>
                                                <xsl:value-of select="FakeCompanies/ActualDate/@title"/>
                                            </b>:
                                            <a><xsl:value-of select="FakeCompanies/ActualDate/@value"/></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

</xsl:stylesheet>