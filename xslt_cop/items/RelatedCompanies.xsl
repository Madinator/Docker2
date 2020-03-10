<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="RelatedCompanies">
        <xsl:if test="count(RelatedCompanies//Company) != 0">
        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <xsl:value-of select='RelatedCompanies/@title'/>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <th class="row_15">
                                            <xsl:value-of select='RelatedCompanies/SubjectRole/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='RelatedCompanies//Company/CompanyName/@title'/>
                                        </th>
                                        <th class="row_30">
                                            <xsl:value-of select='RelatedCompanies//Company/Documents/Document/DocumentType/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='RelatedCompanies//Company/Documents/Document/DocumentNumber/@title'/>
                                        </th>
                                    </tr>
                                    <xsl:for-each select="RelatedCompanies//Company">
                                        <xsl:if test="count(Documents/Document) = 0">
                                            <tr>
                                                <td class="row_20">
                                                    <b>
                                                        <xsl:value-of select="CompanyName/@value"/>
                                                    </b>
                                                </td>
                                                <td class="row_20">
                                                    <b>
                                                        <xsl:value-of select="../@value"/>
                                                    </b>
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:for-each select="Documents/Document">
                                            <tr>
                                                <xsl:if test="position() = 1">
                                                    <td class="row_20" rowspan="{count(../*)}">
                                                        <b>
                                                            <xsl:value-of select="../../../@value"/>
                                                        </b>
                                                    </td>
                                                </xsl:if>
                                                <xsl:if test="position() = 1">
                                                    <td class="row_20" rowspan="{count(../*)}">
                                                        <b>
                                                            <xsl:value-of select="../../CompanyName/@value"/>
                                                        </b>
                                                    </td>
                                                </xsl:if>
                                                <td>
                                                    <xsl:value-of select='DocumentType/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='DocumentNumber/@value'/>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>