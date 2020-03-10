<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectDataInformation1102">
        <xsl:for-each select="/Root/SubjectDetails">
            <div class="printable">

                <p class="title contract_group" style="padding-left: 10px;">
                    <xsl:value-of select="@title"/>
                </p>

                <table class="full_width bordered" style="margin-bottom: 10px;">
                    <tbody>
                        <tr>
                            <th>
                                <xsl:value-of select="Request/RequestorName/@title"/>
                            </th>
                            <th>
                                <xsl:value-of select="Request/SearchType/@title"/>
                            </th>
                            <th>
                                <xsl:value-of select="Request/RequestDate/@title"/>
                            </th>
                        </tr>
                        <xsl:for-each select="Request">
                            <tr>
                                <td>
                                    <xsl:value-of select="RequestorName/@value"/>
                                </td>
                                <td>
                                    <xsl:value-of select="SearchType/@value"/>
                                </td>
                                <td>
                                    <xsl:value-of select="RequestDate/@value"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

            </div>

        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>