<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="NumberOfQueries">
        <xsl:if test="/Root/NumberOfQueries">
        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="row_15 title_row">
                            <p class="title">
                                <xsl:value-of select='NumberOfQueries/@title'/>
                            </p>
                        </td>

                        <td class="content_row">
                            <table class="bordered">
                                <tbody>

                                    <xsl:if test="NumberOfQueries/DetailsQueries7days">
                                        <tr>
                                            <th colspan="5">
                                                <xsl:value-of select='NumberOfQueries/DetailsQueries7days/@title'/>
                                            </th>
                                        </tr>
                                        <xsl:for-each select="NumberOfQueries/DetailsQueries7days/query">
                                            <xsl:if test="(position() - 1) mod 5 = 0">
                                                <xsl:text disable-output-escaping="yes">&#60;tr&#62;</xsl:text>
                                            </xsl:if>
                                            <td>
                                                <b><xsl:value-of select="position()"/>.</b><xsl:text disable-output-escaping="yes">&#160;</xsl:text><xsl:value-of select='@value'/>
                                            </td>
                                            <xsl:if test="((position() - 1) mod 5 = 4) or (position() = count(/Root/NumberOfQueries/DetailsQueries7days/query))">
                                                <xsl:text disable-output-escaping="yes">&#60;&#47;tr&#62;</xsl:text>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>

                                    <tr>
                                        <th class="row_15">
                                            <xsl:value-of select='NumberOfQueries/Days30/@title'/>
                                        </th>
                                        <th class="row_15">
                                            <xsl:value-of select='NumberOfQueries/Days90/@title'/>
                                        </th>
                                        <th class="row_15">
                                            <xsl:value-of select='NumberOfQueries/Days120/@title'/>
                                        </th>
                                        <th class="row_15">
                                            <xsl:value-of select='NumberOfQueries/Days180/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='NumberOfQueries/Days360/@title'/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <xsl:value-of select='NumberOfQueries/Days30/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='NumberOfQueries/Days90/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='NumberOfQueries/Days120/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='NumberOfQueries/Days180/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='NumberOfQueries/Days360/@value'/>
                                        </td>
                                    </tr>
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