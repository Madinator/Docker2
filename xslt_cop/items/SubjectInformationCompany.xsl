<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectInformation">

        <div class="printable">

            <table style="margin-top: 10px; border-bottom: 1px solid #ccc; margin-bottom: 10px;">
                <tbody>
                    <tr>
                        <td class="content_row space">
                            <table>
                                <tbody>
                                    <tr>
                                        <th class="row_15">
                                            <xsl:value-of select='Header/NameNative/@title'/>
                                        </th>
                                        <th class="row_15">
                                            <xsl:value-of select='Header/AbbrName/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='Header/TradeName/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='Header/LegalForm/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='ClassificationOfBorrower/CountryOfFoundation/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Header/Registered/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='ClassificationOfBorrower/StatusOfBusiness/@title'/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <xsl:value-of select='Header/NameNative/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/AbbrName/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/TradeName/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/LegalForm/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='ClassificationOfBorrower/CountryOfFoundation/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/Registered/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='ClassificationOfBorrower/StatusOfBusiness/@value'/>
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