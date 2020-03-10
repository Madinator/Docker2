<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectInformation1102">

        <xsl:if test="Header/@EntityType = 'Individual'">
            <div class="printable">
                <table class="full_width" id='{Header/@name}' style="margin-top: 30px;">
                    <tbody>
                        <tr>
                            <td class="row_15 title_row">
                                <p class="title">
                                    <xsl:value-of select='Header/@stitle'/>
                                </p>
                                <p class="text-align: center;">
                                    <xsl:if test="Photo/@value != ''">
                                        <img src="{Photo/@value}" alt="photo"
                                             style="width:100px; margin: 5px auto 5px 10px;"/>
                                    </xsl:if>
                                </p>
                            </td>
                            <td class="space content_row bordered">
                                <table>
                                    <tbody>
                                        <xsl:if test="Header/fullname/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/fullname/@title'/>
                                                </th>
                                                <td class="">
                                                    <xsl:value-of select='Header/fullname/@value'/>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Header/DateOfBirth/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/DateOfBirth/@title'/>
                                                </th>
                                                <td class="">
                                                    <xsl:value-of select='Header/DateOfBirth/@value'/>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Header/document1/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/document1/@title'/>
                                                    <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                </th>
                                                <td class="">
                                                    <xsl:value-of select='Header/document1/@value'/>
                                                    <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Header/document2/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/document2/@title'/>
                                                    <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                </th>
                                                <td class="">
                                                    <xsl:value-of select='Header/document2/@value'/>
                                                    <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Header/document3/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/document3/@title'/>
                                                    <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                </th>
                                                <td class="">
                                                    <xsl:value-of select='Header/document3/@value'/>
                                                    <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Header/requestCount/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/requestCount/@title'/>
                                                </th>
                                                <td class="">
                                                    <xsl:value-of select='Header/requestCount/@value'/>
                                                </td>
                                            </tr>
                                        </xsl:if>
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
                <table class="full_width" id='{Header/@name}' style="margin-top: 30px;">
                    <tbody>
                        <tr>
                            <td class="row_15 title_row">
                                <p class="title">
                                    <xsl:value-of select='Header/@stitle'/>
                                </p>
                                <p class="text-align: center;">
                                    <xsl:if test="Photo/@value != ''">
                                        <img src="{Photo/@value}" alt="photo"
                                             style="width:100px; margin: 5px auto 5px 10px;"/>
                                    </xsl:if>
                                </p>
                            </td>
                            <td class="space content_row bordered">
                                <table>
                                    <tbody>
                                        <xsl:if test="Header/companyname/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/companyname/@title'/>
                                                </th>
                                                <th class="">
                                                    <xsl:value-of select='Header/companyname/@value'/>
                                                </th>
                                            </tr>
                                        </xsl:if>
                                        <!--<tr class="">
                                            <th class="">
                                                <xsl:value-of select='Header/DateOfBirth/@title'/>
                                            </th>
                                            <th class="">
                                                <xsl:value-of select='Header/DateOfBirth/@value'/>
                                            </th>
                                        </tr>-->
                                        <xsl:if test="Header/document1/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/document1/@title'/>
                                                </th>
                                                <th class="">
                                                    <xsl:value-of select='Header/document1/@value'/>
                                                </th>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Header/document2/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/document2/@title'/>
                                                </th>
                                                <th class="">
                                                    <xsl:value-of select='Header/document2/@value'/>
                                                </th>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Header/document3/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/document3/@title'/>
                                                </th>
                                                <th class="">
                                                    <xsl:value-of select='Header/document3/@value'/>
                                                </th>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Header/requestCount/@value != ''">
                                            <tr class="">
                                                <th class="">
                                                    <xsl:value-of select='Header/requestCount/@title'/>
                                                </th>
                                                <th class="">
                                                    <xsl:value-of select='Header/requestCount/@value'/>
                                                </th>
                                            </tr>
                                        </xsl:if>
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