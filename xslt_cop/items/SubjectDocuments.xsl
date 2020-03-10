<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectDocuments">
        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="row_15 title_row">
                            <p class="title">
                                    <xsl:value-of select='IdentificationDocuments/@stitle'/>
                            </p>
                            <p class="text-align: center;">
                                <xsl:if test="Photo/@value != ''">
                                    <img src="{Photo/@value}" alt="photo" style="width:100px; margin: 5px auto 5px 10px;"/>
                                </xsl:if>
                            </p>
                        </td>
                        <td class="content_row space">
                            <xsl:if test="IdentificationDocuments/Document">
                                <table class="bg">
                                    <tbody>

                                        <tr class="h_tr">
                                            <th class="row_20">
                                                <xsl:value-of select='IdentificationDocuments/Document/Name/@title'/>
                                            </th>
                                            <th class="row_15">
                                                <xsl:value-of select='IdentificationDocuments/Document/Number/@title'/>
                                            </th>
                                            <th class="row_20">
                                                <xsl:value-of
                                                        select='IdentificationDocuments/Document/DateOfIssuance/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of
                                                        select='IdentificationDocuments/Document/DateOfExpiration/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of
                                                        select='IdentificationDocuments/Document/IssuanceLocation/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of
                                                        select='IdentificationDocuments/Document/DateOfInserted/@title'/>
                                            </th>
                                        </tr>

                                        <xsl:if test="boolean(IdentificationDocuments/Document/@type = 'Current')">
                                            <tr>
                                                <td colspan="6" class="mini-title">
                                                    <xsl:value-of select="IdentificationDocuments/Document[@type = 'Current']/@stitle"/>
                                                </td>
                                            </tr>
                                            <xsl:for-each select="IdentificationDocuments/Document">
                                                <xsl:if test="@type = 'Current'">
                                                    <xsl:variable name="oddeven">
                                                        <xsl:if test="(position() mod 3) = 1">odd</xsl:if>
                                                        <xsl:if test="not((position() mod 3) = 1)">even</xsl:if>
                                                    </xsl:variable>
                                                    <tr class="data_row {$oddeven}">
                                                        <td>
                                                            <xsl:value-of select='Name/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='Number/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='DateOfIssuance/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='DateOfExpiration/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='IssuanceLocation/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='DateOfInserted/@value'/>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </xsl:if>

                                        <xsl:if test="boolean(IdentificationDocuments/Document/@type = 'Historical')">
                                            <tr>
                                                <td colspan="6" class="mini-title">
                                                    <xsl:value-of select="IdentificationDocuments/Document[@type = 'Historical']/@stitle"/>
                                                </td>
                                            </tr>
                                            <xsl:for-each select="IdentificationDocuments/Document">
                                                <xsl:if test="@type = 'Historical'">
                                                    <xsl:variable name="oddeven">
                                                        <xsl:if test="(position() mod 3) = 1">odd</xsl:if>
                                                        <xsl:if test="not((position() mod 3) = 1)">even</xsl:if>
                                                    </xsl:variable>
                                                    <tr class="data_row {$oddeven}">
                                                        <td>
                                                            <xsl:value-of select='Name/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='Number/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='DateOfIssuance/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='DateOfExpiration/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='IssuanceLocation/@value'/>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select='DateOfInserted/@value'/>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </xsl:if>
                                    </tbody>
                                </table>
                            </xsl:if>
                            <xsl:if test="not(IdentificationDocuments/Document)">
                                <p><xsl:value-of select='Footer/NoDocuments/@stitle'/></p>
                            </xsl:if>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

</xsl:stylesheet>