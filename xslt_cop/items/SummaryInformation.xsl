<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="SummaryInformation">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <xsl:value-of select='Footer/TitleSummaryInformation/@stitle'/>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <th class="row_15">
                                            <xsl:value-of select='Footer/TitleLiabilities/ContractsPhase/@stitle'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Footer/SubjectRole/@stitle'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Footer/TitleLiabilities/ContractsNumber/@stitle'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Footer/TitleLiabilities/NumberOfCreditLines/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Footer/TitleLiabilities/OutstandingAmount/@stitle'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Footer/TitleLiabilities/OverdueAmount/@stitle'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Footer/TitleLiabilities/TotalFine/@title'/>
                                        </th>
                                        <th class="row_10">
                                            <xsl:value-of select='Footer/TitleLiabilities/TotalPenalty/@title'/>
                                        </th>
                                        <th class="row_15">
                                            <xsl:value-of select='Footer/TitleLiabilities/ContractStatus/@stitle'/>
                                        </th>
                                    </tr>
                                    <xsl:for-each select="SummaryInformation/ExistingContracts">
                                        <xsl:if test="count(SubjectRole) = 0">
                                            <tr>
                                                <td class="row_15">
                                                    <b>
                                                        <xsl:value-of select="@title"/>
                                                    </b>
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    0
                                                </td>
                                                <td>
                                                    0
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>

                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:for-each select="SubjectRole">
                                            <tr>
                                                <xsl:if test="position() = 1">
                                                    <td class="row_15" rowspan="{count(../*)}">
                                                        <b>
                                                            <xsl:value-of select="../@title"/>
                                                        </b>
                                                    </td>
                                                </xsl:if>
                                                <td>
                                                    <xsl:value-of select='@title'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='NumberOfContracts/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='NumberOfCreditLines/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalOutstandingDebt/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalDebtOverdue/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalFine/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalPenalty/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:for-each
                                                            select="ContractStatuses/ContractStatus">
                                                        <p>
                                                            <xsl:value-of select='@value'/>
                                                            <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                            (<xsl:value-of select='@count'/>)
                                                            <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                        </p>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                    <xsl:for-each select="SummaryInformation/TerminatedContracts">
                                        <xsl:if test="count(SubjectRole) = 0">
                                            <tr>
                                                <td class="row_15">
                                                    <b>
                                                        <xsl:value-of select="@title"/>
                                                    </b>
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    0
                                                </td>
                                                <td>
                                                    0
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>

                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:for-each select="SubjectRole">
                                            <tr>
                                                <xsl:if test="position() = 1">
                                                    <td class="row_15" rowspan="{count(../*)}">
                                                        <b>
                                                            <xsl:value-of select="../@title"/>
                                                        </b>
                                                    </td>
                                                </xsl:if>
                                                <td>
                                                    <xsl:value-of select='@title'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='NumberOfContracts/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='NumberOfCreditLines/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalOutstandingDebt/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalDebtOverdue/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalFine/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalPenalty/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:for-each
                                                            select="ContractStatuses/ContractStatus">
                                                        <p>
                                                            <xsl:value-of select='@value'/>
                                                            <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                            (<xsl:value-of select='@count'/>)
                                                            <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                        </p>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                    <xsl:for-each select="SummaryInformation/WithdrawnApplications">
                                        <xsl:if test="count(SubjectRole) = 0">
                                            <tr>
                                                <td class="row_15">
                                                    <b>
                                                        <xsl:value-of select="@title"/>
                                                    </b>
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    0
                                                </td>
                                                <td>
                                                    0
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>
                                                    -
                                                </td>
                                                <td>

                                                </td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:for-each select="SubjectRole">
                                            <tr>
                                                <xsl:if test="position() = 1">
                                                    <td class="row_20" rowspan="{count(../*)}">
                                                        <b>
                                                            <xsl:value-of select="../@title"/>
                                                        </b>
                                                    </td>
                                                </xsl:if>
                                                <td>
                                                    <xsl:value-of select='@title'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='NumberOfContracts/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='NumberOfCreditLines/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalOutstandingDebt/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalDebtOverdue/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalFine/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select='TotalPenalty/@value'/>
                                                </td>
                                                <td>
                                                    <xsl:for-each
                                                            select="ContractStatuses/ContractStatus">
                                                        <p>
                                                            <xsl:value-of select='@value'/>
                                                            <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                            (<xsl:value-of select='@count'/>)
                                                            <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                        </p>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                    </xsl:for-each>

                                    <!--<xsl:for-each select="SummaryInformation/OutdatedContracts">-->
                                        <!--<xsl:if test="count(SubjectRole) = 0">-->
                                            <!--<tr>-->
                                                <!--<td class="row_15">-->
                                                    <!--<b>-->
                                                        <!--<xsl:value-of select="@title"/>-->
                                                    <!--</b>-->
                                                <!--</td>-->
                                                <!--<td>-->
                                                    <!-- - -->
                                                <!--</td>-->
                                                <!--<td>-->
                                                    <!--0-->
                                                <!--</td>-->
                                                <!--<td>-->
                                                    <!--0-->
                                                <!--</td>-->
                                                <!--<td colspan="5"><xsl:text disable-output-escaping="yes">&#160;</xsl:text></td>-->
                                            <!--</tr>-->
                                        <!--</xsl:if>-->
                                        <!--<xsl:for-each select="SubjectRole">-->
                                            <!--<tr>-->
                                                <!--<xsl:if test="position() = 1">-->
                                                    <!--<td class="row_15" rowspan="{count(../*)}">-->
                                                        <!--<b>-->
                                                            <!--<xsl:value-of select="../@title"/>-->
                                                        <!--</b>-->
                                                    <!--</td>-->
                                                <!--</xsl:if>-->
                                                <!--<td>-->
                                                    <!--<xsl:value-of select='@title'/>-->
                                                <!--</td>-->
                                                <!--<td>-->
                                                    <!--<xsl:value-of select='NumberOfContracts/@value'/>-->
                                                <!--</td>-->
                                                <!--<td>-->
                                                    <!--<xsl:value-of select='NumberOfCreditLines/@value'/>-->
                                                <!--</td>-->
                                                <!--<td colspan="5"><xsl:text disable-output-escaping="yes">&#160;</xsl:text></td>-->
                                            <!--</tr>-->
                                        <!--</xsl:for-each>-->
                                    <!--</xsl:for-each>-->
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

</xsl:stylesheet>