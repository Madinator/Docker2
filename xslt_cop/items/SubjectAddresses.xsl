<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectAddresses">
        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="row_15 title_row">
                            <p class="title">
                                <xsl:value-of select='SubjectsAddress/@stitle'/>
                            </p>
                        </td>
                        <td class="content_row">
                            <xsl:if test="SubjectsAddress/Address">
                                <table>
                                    <tbody>
                                        <tr class="h_tr">
                                            <th class="row_15">
                                                <xsl:value-of select='SubjectsAddress/Address/AddressType/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='SubjectsAddress/Address/Region/@stitle'/>
                                            </th>
                                            <th class="row_20">
                                                <xsl:value-of select='SubjectsAddress/Address/Street/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='SubjectsAddress/Address/Number/@stitle'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='SubjectsAddress/Address/ZipCode/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='SubjectsAddress/Address/PostBox/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='SubjectsAddress/Address/AdditionalInfo/@title'/>
                                            </th>
                                        </tr>
                                        <xsl:if test="boolean(SubjectsAddress/Address/@type = 'Current')">
                                            <tr>
                                                <td colspan="7" class="title mini-title">
                                                    <xsl:value-of select="SubjectsAddress/Address[@type = 'Current']/@title"/>
                                                </td>
                                            </tr>
                                            <xsl:for-each select="SubjectsAddress/Address[@type = 'Current']">
                                                <xsl:variable name="oddeven">
                                                    <xsl:if test="(position() mod 2) = 1">odd</xsl:if>
                                                    <xsl:if test="not((position() mod 2) = 1)">even</xsl:if>
                                                </xsl:variable>
                                                <tr class="data_row {$oddeven}">
                                                    <td>
                                                        <xsl:value-of select='AddressType/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='Country/@value'/>
                                                        <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                        <xsl:value-of select='Region/@value'/>
                                                        <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                        <xsl:value-of select='City/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='Street/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='Number/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='ZipCode/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='PostBox/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='AdditionalInfo/@value'/>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                        </xsl:if>
                                        <xsl:if test="boolean(SubjectsAddress/Address/@type = 'Historical')">
                                            <tr>
                                                <td colspan="7" class="title mini-title">
                                                    <xsl:value-of select="SubjectsAddress/Address[@type = 'Historical']/@title"/>
                                                </td>
                                            </tr>
                                            <xsl:for-each select="SubjectsAddress/Address[@type = 'Historical']">
                                                <xsl:variable name="oddeven">
                                                    <xsl:if test="(position() mod 2) = 1">odd</xsl:if>
                                                    <xsl:if test="not((position() mod 2) = 1)">even</xsl:if>
                                                </xsl:variable>
                                                <tr class="data_row {$oddeven}">
                                                    <td>
                                                        <xsl:value-of select='AddressType/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='Country/@value'/>
                                                        <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                        <xsl:value-of select='Region/@value'/>
                                                        <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                        <xsl:value-of select='City/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='Street/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='Number/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='ZipCode/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='PostBox/@value'/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select='AdditionalInfo/@value'/>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                        </xsl:if>
                                    </tbody>
                                </table>
                            </xsl:if>
                            <xsl:if test="not(SubjectsAddress/Address)">
                                <p>
                                    <xsl:value-of select='Footer/NoAddresses/@stitle'/>
                                </p>
                            </xsl:if>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p style="border-top: 1px solid #ccc; margin: 0;"><xsl:text disable-output-escaping="yes">&#160;</xsl:text></p>
    </xsl:template>

</xsl:stylesheet>