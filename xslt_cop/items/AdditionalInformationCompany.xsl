<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="AdditionalInformation">
        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <xsl:value-of select='Footer/TitleAdditionalInformation/@stitle'/>
                            </p>
                        </td>
                        <td class="content_row">
                            <table>
                                <tbody>
                                    <tr>
                                        <th class="row_20">
                                            <xsl:value-of select='Header/FormOfOwnership/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of
                                                    select='ClassificationOfBorrower/EconomicActivityGroup/@title'/>
                                        </th>
                                        <th class="row_30">
                                            <xsl:value-of select='ClassificationOfBorrower/NumberOfEmployees/@title'/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <xsl:value-of select='Header/FormOfOwnership/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                    select='ClassificationOfBorrower/EconomicActivityGroup/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='ClassificationOfBorrower/NumberOfEmployees/@value'/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="title_row row_15">
                        </td>
                        <td class="content_row">
                            <table>
                                <tbody>
                                    <tr>
                                        <th class="row_20">
                                            <xsl:value-of select='Header/item/CEOFirstName/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='Header/item/CEOID/@title'/>
                                        </th>
                                        <th class="row_30">
                                            <xsl:if test="Header/item/CEOIIN/@value != ''">
                                                <xsl:value-of select='Header/item/CEOIIN/@title'/>
                                            </xsl:if>
                                            <xsl:if test="Header/item/CEOIIN/@value = ''">
                                                <xsl:value-of select='Header/item/CEORNN/@title'/>
                                            </xsl:if>
                                        </th>
                                    </tr>
                                    <xsl:for-each select="Header/item">
                                        <tr>
                                            <td>
                                                <xsl:value-of select='CEOSurName/@value'/>
                                                <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                <xsl:value-of select='CEOFirstName/@value'/>
                                                <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                <xsl:value-of select='CEOFathersName/@value'/>
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                        select='CEOID/@value'/>
                                            </td>
                                            <td>
                                                <xsl:if test="CEOIIN/@value != ''">
                                                    <xsl:value-of
                                                            select='CEOIIN/@value'/>
                                                </xsl:if>
                                                <xsl:if test="CEOIIN/@value = ''">
                                                    <xsl:value-of
                                                            select='CEORNN/@value'/>
                                                </xsl:if>
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