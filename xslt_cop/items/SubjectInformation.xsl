<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectInformation">

        <!--<xsl:if test="/Root/FooterPersonal">-->
            <!--<div class="printable">-->
                <!--<p style="font-size: 14px; text-align: justify;">-->
                    <!--<b>-->
                        <!--<xsl:value-of select="/Root/FooterPersonal/Text1/@title"/>-->
                        <!--<xsl:value-of select="/Root/FooterPersonal/Text1_2/@title"/>-->
                        <!--<a href="http://egov.kz" target="_blank">-->
                            <!--<xsl:value-of select="/Root/FooterPersonal/Text1_3/@title"/>-->
                        <!--</a>-->
                        <!--<xsl:value-of select="/Root/FooterPersonal/Text1_4/@title"/>-->
                    <!--</b>-->
                <!--</p>-->
            <!--</div>-->
        <!--</xsl:if>-->

        <xsl:if test="Header/@EntityType = 'Individual'">
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
                                                <xsl:value-of select='Header/Name/@stitle'/>
                                            </th>
                                            <th class="row_15">
                                                <xsl:value-of select='Header/BirthName/@title'/>
                                            </th>
                                            <th class="row_20">
                                                <xsl:value-of select='ClassificationOfBorrower/Resident/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='Header/DateOfBirth/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='ClassificationOfBorrower/Citizenship/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='Header/Gender/@title'/>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <xsl:value-of select='Header/Surname/@value'/>
                                                <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                <xsl:value-of select='Header/Name/@value'/>
                                                <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                <xsl:value-of select='Header/FathersName/@value'/>
                                            </td>
                                            <td>
                                                <xsl:value-of select='Header/BirthName/@value'/>
                                            </td>
                                            <td>
                                                <xsl:value-of select='ClassificationOfBorrower/Resident/@value'/>
                                            </td>
                                            <td>
                                                <xsl:value-of select='Header/DateOfBirth/@value'/>
                                            </td>
                                            <td>
                                                <xsl:value-of select='ClassificationOfBorrower/Citizenship/@value'/>
                                            </td>
                                            <td>
                                                <xsl:value-of select='Header/Gender/@value'/>
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
        <xsl:if test="not(Header/@EntityType = 'Individual')">
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
                                                <xsl:value-of
                                                        select='ClassificationOfBorrower/CountryOfFoundation/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='Header/Registered/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of
                                                        select='ClassificationOfBorrower/StatusOfBusiness/@title'/>
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
                                                <xsl:value-of
                                                        select='ClassificationOfBorrower/CountryOfFoundation/@value'/>
                                            </td>
                                            <td>
                                                <xsl:value-of select='Header/Registered/@value'/>
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                        select='ClassificationOfBorrower/StatusOfBusiness/@value'/>
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