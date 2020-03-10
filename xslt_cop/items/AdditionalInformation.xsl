<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="AdditionalInformation">
        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="row_15 title_row">
                            <p class="title">
                                <xsl:value-of select='SubjectDetails/@stitle'/>
                            </p>
                        </td>
                        <td class="content_row">
                            <table>
                                <tbody>
                                    <tr class="h_tr">
                                        <th class="row_15">
                                            <xsl:value-of select='Header/Education/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of
                                                    select='ClassificationOfBorrower/EconomicActivityGroup/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='ClassificationOfBorrower/SubjectsPosition/@title'/>
                                        </th>
                                        <th class="row_20">
                                            <xsl:value-of select='ClassificationOfBorrower/SubjectsEmployment/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='SubjectDetails/EmployeesSalary/@title'/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <xsl:value-of select='Header/Education/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                    select='ClassificationOfBorrower/EconomicActivityGroup/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='ClassificationOfBorrower/SubjectsPosition/@value'/>
                                            <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                        </td>
                                        <td>
                                            <xsl:value-of select='ClassificationOfBorrower/SubjectsEmployment/@value'/>
                                        </td>
                                        <td>
                                            <xsl:value-of select='SubjectDetails/EmployeesSalary/@value'/>
                                        </td>
                                    </tr>

                                    <tr class="h_tr">
                                        <th>
                                            <xsl:value-of select='Header/MatrialStatus/@title'/>
                                        </th>
                                        <th><xsl:value-of select='SubjectDetails/NumberOfDependents/@stitle2'/></th>
                                        <th>
                                            <xsl:value-of select='SubjectDetails/NumberOfDependents/@stitle3'/>
                                        </th>
                                        <th>
                                            <xsl:value-of select='ClassificationOfBorrower/BorrowerClassification/@title'/>
                                        </th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <xsl:value-of select='Header/MatrialStatus/@value'/>
                                        </td>
                                        <td>
                                            <xsl:if test="not(SubjectDetails/NumberOfDependents/@value = '')">
                                                <xsl:value-of select='SubjectDetails/NumberOfDependents/@value'/>
                                                <br/>
                                            </xsl:if>
                                            <xsl:if test="not(SubjectDetails/NumberOfChildern/@value = '')">
                                                <xsl:value-of select='SubjectDetails/NumberOfChildern/@value'/>
                                            </xsl:if>
                                        </td>
                                        <td>
                                            <xsl:if test="not(SubjectDetails/NumberOfDependents/@value = '')">
                                                <xsl:value-of select='SubjectDetails/NumberOfDependents/@stitle'/>
                                                <br/>
                                            </xsl:if>
                                            <xsl:if test="not(SubjectDetails/NumberOfChildern/@value = '')">
                                                <xsl:value-of select='SubjectDetails/NumberOfChildern/@stitle'/>
                                            </xsl:if>
                                        </td>
                                        <td>
                                            <xsl:value-of select='ClassificationOfBorrower/BorrowerClassification/@value'/>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr class="h_tr">
                                        <th colspan="5">
                                            <xsl:value-of
                                                    select="NegativeData/NegativeStatus/NegativeStatusOfClient/NegativeStatusOfClient/@title"/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <xsl:if test="NegativeData/NegativeStatus/NegativeStatusOfClient/NegativeStatusOfClient/@value = ''">
                                                <xsl:value-of select='Footer/NoNegativeStatus/@stitle'/>
                                            </xsl:if>
                                            <xsl:value-of
                                                    select="NegativeData/NegativeStatus/NegativeStatusOfClient/NegativeStatusOfClient/@value"/>
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