<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="WithdrawnApplications">

        <p class="title contract_group" style="padding-left: 10px;">
            <xsl:value-of select="WithdrawnApplications/@stitle"/>
        </p>

        <xsl:if test="not(WithdrawnApplications/Contract)">
            <p><xsl:value-of select="Footer/NoWithdrawnApplications/@stitle"/></p>
        </xsl:if>

        <xsl:if test="WithdrawnApplications/Contract">
            <xsl:for-each select="WithdrawnApplications/Contract">

                <p class="title mini-title">
                    <xsl:value-of select="/Root/Footer/Contract/@stitle"/>
                    <xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                    <xsl:value-of select="position()"/>
                </p>

                <br/>

                <div class="printable">
                    <table class="bordered">
                        <tbody>

                            <tr>
                                <td class="row_20">
                                    <br/>
                                    <p>
                                        <b><xsl:value-of select="TypeOfFounding/@title"/>:
                                        </b>
                                        <xsl:value-of select="TypeOfFounding/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="SubjectRole/@title"/>:
                                        </b>
                                        <xsl:for-each select="SubjectRole">
                                            <xsl:value-of select="@value"/>
                                            <xsl:if test="not(position() = count(../SubjectRole))">,<xsl:text disable-output-escaping="yes">&#160;</xsl:text></xsl:if>
                                        </xsl:for-each>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="PurposeOfCredit/@title"/>:
                                        </b>
                                        <xsl:value-of select="PurposeOfCredit/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="CreditObject/@title"/>:
                                        </b>
                                        <xsl:value-of select="CreditObject/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="FinancialInstitution/@title"/>:
                                        </b>
                                        <xsl:value-of select="FinancialInstitution/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="LastUpdate/@title"/>:
                                        </b>
                                        <xsl:value-of select="LastUpdate/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="DateOfInserted/@title"/>:
                                        </b>
                                        <xsl:value-of select="DateOfInserted/@value"/>
                                    </p>
                                </td>
                                <td class="row_20">
                                    <p class="small-title">
                                        <xsl:value-of select="/Root/Footer/Contracts/Contract/@stitle"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="CodeOfContract/@title"/>:
                                        </b>
                                        <xsl:value-of select="CodeOfContract/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="AgreementNumber/@title"/>:
                                        </b>
                                        <xsl:value-of select="AgreementNumber/@value"/>
                                    </p>
                                    <xsl:if test="TypeOfFounding/@id = 8 or TypeOfFounding/@id = 18">
                                        <p>
                                            <b><xsl:value-of select="AgreementNumberGuarantee/@title"/>:
                                            </b>
                                            <xsl:value-of select="AgreementNumberGuarantee/@value"/>
                                        </p>
                                    </xsl:if>
                                    <p>
                                        <b><xsl:value-of select="DateOfApplication/@title"/>:
                                        </b>
                                        <xsl:value-of select="DateOfApplication/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="DateOfCreditStart/@title"/>:
                                        </b>
                                        <xsl:value-of select="DateOfCreditStart/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="DateOfCreditEnd/@title"/>:
                                        </b>
                                        <xsl:value-of select="DateOfCreditEnd/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="ActualDate/@title"/>:
                                        </b>
                                        <xsl:value-of select="ActualDate/@value"/>
                                    </p>
                                    <xsl:if test="TypeOfFounding/@id = 8 or TypeOfFounding/@id = 18">
                                        <p>
                                            <b><xsl:value-of select="DateAgreementGuarantee/@title"/>:
                                            </b>
                                            <xsl:value-of select="DateAgreementGuarantee/@value"/>
                                        </p>
                                        <p>
                                            <b><xsl:value-of select="GuaranteeEvent/@title"/>:
                                            </b>
                                            <xsl:value-of select="GuaranteeEvent/@value"/>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="@ContractTypeCode='Contract.Type .Instalment'">
                                        <p>
                                            <b><xsl:value-of select="PeriodicityOfPayments/@title"/>:
                                            </b>
                                            <xsl:value-of select="PeriodicityOfPayments/@value"/>
                                        </p>
                                    </xsl:if>
                                    <p>
                                        <b><xsl:value-of select="MethodOfPayments/@title"/>:
                                        </b>
                                        <xsl:value-of select="MethodOfPayments/@value"/>
                                    </p>
                                </td>
                                <td class="row_20">
                                    <p class="small-title">
                                        <xsl:value-of select="/Root/Footer/Contracts/Status/@stitle"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="ContractStatus/@title"/>:
                                        </b>
                                        <xsl:value-of select="ContractStatus/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="ClassificationOfContract/@title"/>:
                                        </b>
                                        <xsl:value-of select="ClassificationOfContract/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="DateOfRealRepayment/@title"/>:
                                        </b>
                                        <xsl:value-of select="DateOfRealRepayment/@value"/>
                                    </p>
                                    <xsl:if test="TypeOfFounding/@id = 9">
                                        <p>
                                            <b><xsl:value-of select="NumberOfTransactions/@title"/>:
                                            </b>
                                            <xsl:value-of select="NumberOfTransactions/@value"/>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="ContractThirdParty/@value != ''">
                                        <p>
                                            <b><xsl:value-of select="ContractThirdParty/@title"/>:
                                            </b>
                                            <xsl:value-of select="ContractThirdParty/@value"/>
                                        </p>
                                    </xsl:if>

                                </td>
                                <td class="row_20">
                                    <p class="small-title">
                                        <xsl:value-of select="/Root/Footer/Contracts/Balance/@stitle"/>
                                    </p>
                                    <xsl:if test="@ContractTypeCode='Contract.Type .CreditContract'">
                                        <p>
                                            <b><xsl:value-of select="CreditLimit/@title"/>:
                                            </b>
                                            <xsl:value-of select="CreditLimit/@value"/>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="@ContractTypeCode='Contract.Type .NonInstalment'">
                                        <p>
                                            <b><xsl:value-of select="CreditLimit/@title"/>:
                                            </b>
                                            <xsl:value-of select="CreditLimit/@value"/>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="@ContractTypeCode='Contract.Type .Instalment'">
                                        <p>
                                            <b><xsl:value-of select="TotalAmount/@title"/>:
                                            </b>
                                            <xsl:value-of select="TotalAmount/@value"/>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="TypeOfFounding/@id != 9">
                                        <p>
                                            <b><xsl:value-of select="NumberOfInstalments/@title"/>:
                                            </b>
                                            <xsl:value-of select="NumberOfInstalments/@value"/>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="TypeOfFounding/@id != 9">
                                        <p>
                                            <b><xsl:value-of select="NumberOfOutstandingInstalments/@title"/>:
                                            </b>
                                            <xsl:value-of select="NumberOfOutstandingInstalments/@value"/>
                                        </p>
                                    </xsl:if>
                                    <p>
                                        <b><xsl:value-of select="MonthlyInstalmentAmount/@title"/>:
                                        </b>
                                        <xsl:value-of select="MonthlyInstalmentAmount/@value"/>
                                    </p>

                                    <xsl:if test="@ContractTypeCode='Contract.Type .CreditContract'">
                                        <p>
                                            <b><xsl:value-of select="ResidualAmount/@title"/>:
                                            </b>
                                            <xsl:value-of select="ResidualAmount/@value"/>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="@ContractTypeCode='Contract.Type .Instalment'">
                                        <p>
                                            <b><xsl:value-of select="OutstandingAmount/@title"/>:
                                            </b>
                                            <xsl:value-of select="OutstandingAmount/@value"/>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="@ContractTypeCode='Contract.Type .NonInstalment'">
                                        <p>
                                            <b><xsl:value-of select="OutstandingAmount/@title"/>:
                                            </b>
                                            <xsl:value-of select="OutstandingAmount/@value"/>
                                        </p>
                                    </xsl:if>
                                    <p>
                                        <b><xsl:value-of select="OverdueAmount/@title"/>:
                                        </b>
                                        <xsl:value-of select="OverdueAmount/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="NumberOfOverdueInstalments/@title"/>:
                                        </b>
                                        <xsl:value-of select="NumberOfOverdueInstalments/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="Penalty/@title"/>:
                                        </b>
                                        <xsl:value-of select="Penalty/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="Fine/@title"/>:
                                        </b>
                                        <xsl:value-of select="Fine/@value"/>
                                    </p>

                                </td>
                                <td class="row_20">
                                    <p class="small-title">
                                        <xsl:value-of select="/Root/Footer/Contracts/Collaterals/@stitle"/>
                                    </p>
                                    <xsl:if test="not(Collateral)">
                                        <p>
                                            <b><xsl:value-of select="/Root/Footer/Contracts/Collateral/TypeOfGuarantee/@stitle"/>:
                                            </b>
                                        </p>
                                        <p>
                                            <b><xsl:value-of select="/Root/Footer/Contracts/Collateral/ValueOfGuarantee/@stitle"/>:
                                            </b>
                                        </p>
                                        <p>
                                            <b><xsl:value-of select="/Root/Footer/Contracts/Collateral/TypeOfValueOfGuarantee/@stitle"/>:
                                            </b>
                                        </p>
                                        <p>
                                            <b><xsl:value-of select="/Root/Footer/Contracts/Collateral/PlaceOfGuarantee/@stitle"/>:
                                            </b>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="Collateral">
                                        <xsl:for-each select="Collateral">
                                            <p>
                                                <b><xsl:value-of select="TypeOfGuarantee/@title"/>:
                                                </b>
                                                <xsl:value-of select="TypeOfGuarantee/@value"/>
                                            </p>
                                            <p>
                                                <b><xsl:value-of select="ValueOfGuarantee/@title"/>:
                                                </b>
                                                <xsl:value-of select="ValueOfGuarantee/@value"/>
                                            </p>
                                            <p>
                                                <b><xsl:value-of select="TypeOfValueOfGuarantee/@title"/>:
                                                </b>
                                                <xsl:value-of select="TypeOfValueOfGuarantee/@value"/>
                                            </p>
                                            <p>
                                                <b><xsl:value-of select="/Root/Footer/Contracts/Collateral/PlaceOfGuarantee/@stitle"/>:
                                                </b>
                                                <xsl:value-of select="PlaceOfGuarantee/@value"/>
                                            </p>
                                        </xsl:for-each>
                                    </xsl:if>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <br/>

                <div class="printable">
                    <table class="bordered">
                        <tbody>

                            <tr>
                                <td class="row_20">
                                    <p class="blue">
                                        <xsl:value-of select="/Root/Footer/Contracts/AdditionalInformation/@stitle"/>
                                    </p>
                                </td>
                                <td class="row_40">
                                    <p>
                                        <b><xsl:value-of select="SpecialRelationship/@title"/>:
                                        </b>
                                        <xsl:value-of select="SpecialRelationship/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="AmountProvisions/@title"/>:
                                        </b>
                                        <xsl:value-of select="AmountProvisions/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="AnnualEffectiveRate/@title"/>:
                                        </b>
                                        <xsl:value-of select="AnnualEffectiveRate/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="NominalRate/@title"/>:
                                        </b>
                                        <xsl:value-of select="NominalRate/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="LoanAccount/@title"/>:
                                        </b>
                                        <xsl:value-of select="LoanAccount/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="PlaceOfDisbursement/@title"/>:
                                        </b>
                                        <xsl:value-of select="PlaceOfDisbursement/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="ParentContractCode/@title"/>:
                                        </b>
                                        <xsl:value-of select="ParentContractCode/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="ParentProvider/@title"/>:
                                        </b>
                                        <xsl:value-of select="ParentProvider/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="ParentContractStatus/@title"/>:
                                        </b>
                                        <xsl:value-of select="ParentContractStatus/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="ParentOperationDate/@title"/>:
                                        </b>
                                        <xsl:value-of select="ParentOperationDate/@value"/>
                                    </p>
                                </td>
                                <td class="row_40">
                                    <p>
                                        <b><xsl:value-of select="GracePrincipal/@title"/>:
                                        </b>
                                        <xsl:value-of select="GracePrincipal/@value"/>
                                    </p>
                                    <p>
                                        <b><xsl:value-of select="GracePay/@title"/>:
                                        </b>
                                        <xsl:value-of select="GracePay/@value"/>
                                    </p>

                                    <p>
                                        <b><xsl:value-of select="ProlongationCount/@title"/>:
                                        </b>
                                        <xsl:value-of select="ProlongationCount/@value"/>
                                    </p>


                                    <xsl:if test="Prolongation/ProlongationStartDate">
                                        <xsl:for-each select="Prolongation">
                                            <p>
                                                <b><xsl:value-of select="//Footer/Contracts/ProlongationStartDate/@stitle"/>:
                                                </b>
                                                <xsl:value-of select="ProlongationStartDate/@value"/>
                                            </p>
                                            <p>
                                                <b><xsl:value-of select="//Footer/Contracts/ProlongationEndDate/@stitle"/>:
                                                </b>
                                                <xsl:value-of select="ProlongationEndDate/@value"/>
                                            </p>
                                        </xsl:for-each>
                                    </xsl:if>
                                    <xsl:if test="not(Prolongation/ProlongationStartDate)">
                                        <p>
                                            <b><xsl:value-of select="//Footer/Contracts/ProlongationStartDate/@stitle"/>:
                                            </b>
                                            <xsl:value-of select="ProlongationStartDate/@value"/>
                                        </p>
                                        <p>
                                            <b><xsl:value-of select="//Footer/Contracts/ProlongationEndDate/@stitle"/>:
                                            </b>
                                            <xsl:value-of select="ProlongationEndDate/@value"/>
                                        </p>
                                    </xsl:if>

                                    <p>
                                        <b><xsl:value-of select="BranchLocation/@title"/>:
                                        </b>
                                        <xsl:value-of select="BranchLocation/@value"/>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <br/>

                <div class="printable">
                    <table class="bordered">
                        <tbody>
                            <tr>
                                <xsl:if test="count(InterconnectedSubjects/InterconnectedSubject) = 0">
                                    <th class="row_20 blue"
                                        rowspan="2">
                                        <xsl:value-of select="/Root/Footer/Contracts/RelatedSubjects/@stitle"/>
                                    </th>
                                </xsl:if>
                                <xsl:if test="count(InterconnectedSubjects/InterconnectedSubject) != 0">
                                    <th class="row_20 blue"
                                        rowspan="{count(InterconnectedSubjects/InterconnectedSubject) + 1}">
                                        <xsl:value-of select="/Root/Footer/Contracts/RelatedSubjects/@stitle"/>
                                    </th>
                                </xsl:if>
                                <th class="row_10">
                                    <xsl:value-of
                                            select="/Root/Footer/InterconnectedSubjects/TypeOfLink/@title"/>
                                </th>
                                <th class="row_20">
                                    <xsl:value-of
                                            select="/Root/Footer/InterconnectedSubjects/SubjectName/@title"/>
                                </th>
                                <th class="row_20">
                                    <xsl:value-of
                                            select="/Root/Footer/InterconnectedSubjects/SubjectCode/@title"/>
                                </th>
                                <th class="row_15">
                                    <xsl:value-of select="/Root/Footer/InterconnectedSubjects/SubjectIIN/@title"/>
                                </th>
                                <th class="row_15">
                                    <xsl:value-of select="/Root/Footer/InterconnectedSubjects/SubjectRNN/@title"/>
                                </th>
                            </tr>
                            <xsl:for-each select="InterconnectedSubjects/InterconnectedSubject">
                                <tr>
                                    <td>
                                        <xsl:value-of select="TypeOfLink/@value"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="SubjectName/@value"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="SubjectCode/@value"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="SubjectIIN/@value"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="SubjectRNN/@value"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                            <xsl:if test="count(InterconnectedSubjects/InterconnectedSubject) = 0">
                                <tr>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                </tr>
                            </xsl:if>
                        </tbody>
                    </table>
                </div>

                <br/>

                <div class="printable">
                    <table class="bordered">
                        <tbody>
                            <tr>
                                <td class="row_40">
                                    <b>
                                        <xsl:value-of select="NumberOfOverdueInstalmentsMax/@title"/>
                                    </b>
                                </td>
                                <td class="row_20">
                                    <xsl:value-of select="NumberOfOverdueInstalmentsMax/@value"/>
                                </td>
                                <td class="row_20">
                                    <b><xsl:value-of select="NumberOfOverdueInstalmentsMaxAmount/@title"/>: </b>
                                    <xsl:value-of select="NumberOfOverdueInstalmentsMaxAmount/@value"/>
                                </td>
                                <td>
                                    <b><xsl:value-of select="NumberOfOverdueInstalmentsMaxDate/@title"/>: </b>
                                    <xsl:value-of select="NumberOfOverdueInstalmentsMaxDate/@value"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>
                                        <xsl:value-of select="OverdueAmountMax/@title"/>
                                    </b>
                                </td>
                                <td>
                                    <xsl:value-of select="OverdueAmountMax/@value"/>
                                </td>
                                <td>
                                    <b><xsl:value-of select="OverdueAmountMaxCount/@title"/>: </b>
                                    <xsl:value-of select="OverdueAmountMaxCount/@value"/>
                                </td>
                                <td>
                                    <b><xsl:value-of select="OverdueAmountMaxDate/@title"/>: </b>
                                    <xsl:value-of select="OverdueAmountMaxDate/@value"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <br/>

                <p class="title">
                    <xsl:value-of select="/Root/Footer/PaymentsCalendar/@title"/>
                </p>

                <xsl:for-each select="PaymentsCalendar/Year">
                    <br/>
                    <div class="printable">
                        <table class="bordered calendar">
                            <tbody>
                                <tr>
                                    <th class="blue"><xsl:value-of select="@title"/></th>
                                    <xsl:for-each select="Payment">
                                        <th width="60">
                                            <xsl:value-of select="@title"/>
                                        </th>
                                    </xsl:for-each>
                                </tr>
                                <tr>
                                    <th class="blue">
                                        <xsl:value-of select="/Root/Footer/Contracts/DaysOverdue/@stitle"/>
                                    </th>
                                    <xsl:for-each select="Payment">
                                        <td>
                                            <xsl:value-of select="@value"/>
                                        </td>
                                    </xsl:for-each>
                                </tr>
                                <tr>
                                    <th class="blue">
                                        <xsl:value-of select="/Root/Footer/AmountOverdue/@stitle"/>
                                    </th>
                                    <xsl:for-each select="Payment">
                                        <td>
                                            <xsl:value-of select="@overdue"/>
                                        </td>
                                    </xsl:for-each>
                                </tr>
                                <tr>
                                    <th class="blue">
                                        <xsl:value-of select="../../Fine/@title"/>
                                    </th>
                                    <xsl:for-each select="Payment">
                                        <td>
                                            <xsl:value-of select="@fine"/>
                                        </td>
                                    </xsl:for-each>
                                </tr>
                                <tr>
                                    <th class="blue">
                                        <xsl:value-of select="../../Penalty/@title"/>
                                    </th>
                                    <xsl:for-each select="Payment">
                                        <td>
                                            <xsl:value-of select="@penalty"/>
                                        </td>
                                    </xsl:for-each>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </xsl:for-each>
                <p style="text-align: right;"><em><xsl:value-of select="/Root/Footer/PaymentsCalendar/Description1/@title"/></em></p>
                <p style="text-align: right;"><em><xsl:value-of select="/Root/Footer/PaymentsCalendar/Description2/@title"/></em></p>
            </xsl:for-each>

        </xsl:if>
    </xsl:template>

</xsl:stylesheet>