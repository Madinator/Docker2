<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SubjectInformationNegative">
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
                                            <xsl:value-of select='Header/Resident/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Header/DateOfBirth/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Header/Citizenship/@title'/>
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
                                            <xsl:value-of select='Header/Resident/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/DateOfBirth/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='Header/Citizenship/@value'/>
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
    </xsl:template>

</xsl:stylesheet>