<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectContacts">
        <div class="printable">

            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="row_15 title_row">
                            <p class="title">
                                <xsl:value-of select='SubjectsAddress/@stitle2'/>
                            </p>
                        </td>
                        <td class="content_row">
                            <xsl:if test="SubjectsAddress/Address">
                                <table>
                                    <tbody>
                                        <tr class="h_tr">
                                            <th class="row_15">
                                                <xsl:value-of select='SubjectsAddress/Address/HomePhone/@title'/>
                                            </th>
                                            <th class="row_20">
                                                <xsl:value-of select='SubjectsAddress/Address/OfficePhone/@title'/>
                                            </th>
                                            <th class="row_20">
                                                <xsl:value-of select='SubjectsAddress/Address/CellularPhone/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='SubjectsAddress/Address/Fax/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='SubjectsAddress/Address/EmailAddress/@title'/>
                                            </th>
                                            <th class="row_10">
                                                <xsl:value-of select='SubjectsAddress/Address/WebPageAddress/@title'/>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <xsl:call-template name="string-replace-all">
                                                    <xsl:with-param name="text"
                                                                    select="SubjectsAddress/Address/HomePhone/@value"/>
                                                    <xsl:with-param name="replace">;</xsl:with-param>
                                                    <xsl:with-param name="by">;</xsl:with-param>
                                                </xsl:call-template>
                                            </td>
                                            <td>
                                                <xsl:call-template name="string-replace-all">
                                                    <xsl:with-param name="text"
                                                                    select="SubjectsAddress/Address/OfficePhone/@value"/>
                                                    <xsl:with-param name="replace">;</xsl:with-param>
                                                    <xsl:with-param name="by">;</xsl:with-param>
                                                </xsl:call-template>
                                            </td>
                                            <td>
                                                <xsl:call-template name="string-replace-all">
                                                    <xsl:with-param name="text"
                                                                    select="SubjectsAddress/Address/CellularPhone/@value"/>
                                                    <xsl:with-param name="replace">;</xsl:with-param>
                                                    <xsl:with-param name="by">;</xsl:with-param>
                                                </xsl:call-template>
                                            </td>
                                            <td>
                                                <xsl:call-template name="string-replace-all">
                                                    <xsl:with-param name="text"
                                                                    select="SubjectsAddress/Address/Fax/@value"/>
                                                    <xsl:with-param name="replace">;</xsl:with-param>
                                                    <xsl:with-param name="by">;</xsl:with-param>
                                                </xsl:call-template>
                                            </td>
                                            <td>
                                                <xsl:call-template name="string-replace-all">
                                                    <xsl:with-param name="text"
                                                                    select="SubjectsAddress/Address/EmailAddress/@value"/>
                                                    <xsl:with-param name="replace">;</xsl:with-param>
                                                    <xsl:with-param name="by">;</xsl:with-param>
                                                </xsl:call-template>
                                            </td>
                                            <td>
                                                <xsl:call-template name="string-replace-all">
                                                    <xsl:with-param name="text"
                                                                    select="SubjectsAddress/Address/WebPageAddress/@value"/>
                                                    <xsl:with-param name="replace">;</xsl:with-param>
                                                    <xsl:with-param name="by">; </xsl:with-param>
                                                </xsl:call-template>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </xsl:if>
                            <xsl:if test="not(SubjectsAddress/Address)">
                                <p>
                                    <xsl:value-of select='Footer/NoContacts/@stitle'/>
                                </p>
                            </xsl:if>


                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>
    <xsl:template name="string-replace-all">
        <xsl:param name="text"/>
        <xsl:param name="replace"/>
        <xsl:param name="by"/>
        <xsl:choose>
            <xsl:when test="contains($text, $replace)">
                <xsl:value-of select="substring-before($text,$replace)"/>
                <xsl:value-of select="$by"/>
                <xsl:call-template name="string-replace-all">
                    <xsl:with-param name="text"
                                    select="substring-after($text,$replace)"/>
                    <xsl:with-param name="replace" select="$replace"/>
                    <xsl:with-param name="by" select="$by"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$text"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>