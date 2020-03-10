<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="FooterContent">
        <p>
            <xsl:value-of select="Footer/ContactInfo/@value"/>
        </p>
    </xsl:template>

    <xsl:template name="Footer">

        <div class="printable">

            <xsl:if test="/Root/ExistingContracts or /Root/TerminatedContracts">
                <table class="full_width bordered">
                    <tbody>
                        <tr>
                            <td class="space content_row">
                                <xsl:call-template name="FooterContent"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </xsl:if>
            <xsl:if test="not(/Root/ExistingContracts or /Root/TerminatedContracts)">
                <table class="full_width" id='{Header/@name}'>
                    <tbody>
                        <tr>
                            <td class="row_15 title_row">

                            </td>
                            <td class="space content_row" style="border-bottom: 1px solid #ccc;">
                                <xsl:call-template name="FooterContent"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </xsl:if>
        </div>

    </xsl:template>

</xsl:stylesheet>