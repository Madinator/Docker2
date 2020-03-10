<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectInformationNegativeCompany">
        <div class="printable">
            <table class="full_width" id='{Header/@name}'>
                <tbody>
                    <tr>
                        <td class="row_15 title_row">
                            <p class="title">
                                <xsl:value-of select='Header/@stitle'/>
                            </p>
                        </td>
                        <td class="space content_row">
                            <table>
                                <tbody>
                                    <tr class="h_tr">
                                        <th class="row_20">
                                            <xsl:value-of select='Header/NameNative/@title'/>
                                        </th>
                                        <th class="row_15">
                                            <xsl:value-of select='Header/LegalForm/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='Header/FormOfOwnership/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Header/Citizenship/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Header/Registered/@title'/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <xsl:value-of select='Header/NameNative/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/LegalForm/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/FormOfOwnership/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/Citizenship/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/Registered/@value'/>
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