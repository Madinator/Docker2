<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectDetails">

        <br/>

        <p class="title">
            <xsl:value-of select="Footer/SubjectDetails/@stitle"/>
        </p>

        <table class="full_width bordered">
            <tbody>
                <tr>
                    <th>
                        <xsl:value-of select="SubjectDetails/Request/RequestorName/@title"/>
                    </th>
                    <th>
                        <xsl:value-of select="SubjectDetails/Request/SearchType/@title"/>
                    </th>
                    <th>
                        <xsl:value-of select="SubjectDetails/Request/RequestDate/@title"/>
                    </th>
                </tr>

                <xsl:for-each select="SubjectDetails/Request">

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

    </xsl:template>

</xsl:stylesheet>