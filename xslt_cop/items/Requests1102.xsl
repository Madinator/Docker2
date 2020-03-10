<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="Requests1102">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <xsl:value-of select='Requests/@title'/>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <xsl:for-each select="Requests/Request">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="@date"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="@provider"/>
                                            </td>
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