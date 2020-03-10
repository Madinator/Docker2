<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="Table">

        <div class="printable">
            <table class="table">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <xsl:for-each select="*">
                                            <th><xsl:value-of select="@title"/></th>
                                        </xsl:for-each>
                                    </tr>
                                    <tr>
                                        <xsl:for-each select="*">
                                            <td><xsl:value-of select="@value"/></td>
                                        </xsl:for-each>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>


    <xsl:template name="CompanyInformation">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <th><xsl:value-of select="LegalForm/@title"/></th>
                                        <th><xsl:value-of select="Ownership/@title"/></th>
                                        <th><xsl:value-of select="BusinessType/@title"/></th>
                                        <th><xsl:value-of select="DimensionType/@title"/></th>
                                        <th><xsl:value-of select="ActivityTypes/@title"/></th>
                                    </tr>
                                    <tr>
                                        <td><xsl:value-of select="LegalForm/@value"/></td>
                                        <td><xsl:value-of select="Ownership/@value"/></td>
                                        <td><xsl:value-of select="BusinessType/@value"/></td>
                                        <td><xsl:value-of select="DimensionType/@value"/></td>
                                        <td>
                                            <xsl:for-each select="ActivityTypes/ActivityType">
                                                <xsl:value-of select="@value"/>;<br/>
                                            </xsl:for-each>
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


    <xsl:template name="Name">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <th><xsl:value-of select="Rus/@title"/></th>
                                        <th><xsl:value-of select="Kaz/@title"/></th>
                                        <th><xsl:value-of select="../Information/Country/@title"/></th>
                                        <th><xsl:value-of select="../Information/Address/@title"/></th>
                                    </tr>
                                    <tr>
                                        <td><xsl:value-of select="Rus/@value"/></td>
                                        <td><xsl:value-of select="Kaz/@value"/></td>
                                        <td><xsl:value-of select="../Information/Country/@value"/></td>
                                        <td><xsl:value-of select="../Information/Address/@value"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

    <xsl:template name="Documents">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <xsl:for-each select="*[1]">
                                            <th><xsl:value-of select="Actual/@title"/></th>
                                            <th><xsl:value-of select="Type/@title"/></th>
                                            <th><xsl:value-of select="Series/@title"/> / <xsl:value-of select="Number/@title"/></th>
                                            <th><xsl:value-of select="IssuedBy/@title"/></th>
                                            <th><xsl:value-of select="IssueDate/@title"/></th>
                                            <th><xsl:value-of select="ExpirationDate/@title"/></th>
                                            <th><xsl:value-of select="Validity/@title"/></th>
                                            <th><xsl:value-of select="InvalidateDate/@title"/></th>
                                            <th><xsl:value-of select="FullName/@title"/> / <xsl:value-of select="BirthDate/@title"/></th>
                                        </xsl:for-each>
                                    </tr>
                                    <xsl:for-each select="*">
                                        <tr>
                                            <td><xsl:value-of select="Actual/@value"/></td>
                                            <td><xsl:value-of select="Type/@value"/></td>
                                            <td><xsl:value-of select="Series/@value"/> <xsl:value-of select="Number/@value"/></td>
                                            <td><xsl:value-of select="IssuedBy/@value"/></td>
                                            <td><xsl:value-of select="IssueDate/@value"/></td>
                                            <td><xsl:value-of select="ExpirationDate/@value"/></td>
                                            <td><xsl:value-of select="Validity/@value"/></td>
                                            <td><xsl:value-of select="InvalidateDate/@value"/></td>
                                            <td>
                                                <xsl:if test="../../Information/FullName/@value != FullName/@value">
                                                    <xsl:value-of select="FullName/@value"/>
                                                </xsl:if>
                                                <xsl:if test="../../Information/BirthDate/@value != BirthDate/@value">
                                                    <xsl:value-of select="BirthDate/@value"/>
                                                </xsl:if>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                    <xsl:if test="count(*) = 0">
                                        <tr>
                                            <th align="center">Данных нет</th>
                                        </tr>
                                    </xsl:if>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

    <xsl:template name="RegistrationAddress">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <th><xsl:value-of select="Country/@title"/></th>
                                        <th><xsl:value-of select="District/@title"/></th>
                                        <th><xsl:value-of select="Region/@title"/>/<xsl:value-of select="City/@title"/></th>
                                        <th><xsl:value-of select="Street/@title"/></th>
                                        <th><xsl:value-of select="Building/@title"/></th>
                                        <th><xsl:value-of select="Corpus/@title"/></th>
                                        <th><xsl:value-of select="Flat/@title"/></th>
                                    </tr>
                                    <tr>
                                        <th><xsl:value-of select="Country/@value"/></th>
                                        <th><xsl:value-of select="District/@value"/></th>
                                        <th><xsl:value-of select="Region/@value"/><xsl:if test="City/@value != '-'">,<xsl:text disable-output-escaping="yes">&#160;</xsl:text>
                                                <xsl:value-of select="City/@value"/>
                                            </xsl:if>
                                        </th>
                                        <th><xsl:value-of select="Street/@value"/></th>
                                        <th><xsl:value-of select="Building/@value"/></th>
                                        <th><xsl:value-of select="Corpus/@value"/></th>
                                        <th><xsl:value-of select="Flat/@value"/></th>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

    <xsl:template name="DataTable">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <xsl:for-each select="*[1]/*">
                                            <th><xsl:value-of select="@title"/></th>
                                        </xsl:for-each>
                                    </tr>
                                    <xsl:for-each select="*">
                                        <tr>
                                            <xsl:for-each select="*">
                                                <td><xsl:value-of select="@value"/></td>
                                            </xsl:for-each>
                                        </tr>
                                    </xsl:for-each>
                                    <xsl:if test="count(*) = 0">
                                        <tr>
                                            <th align="center">Данных нет</th>
                                        </tr>
                                    </xsl:if>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

    <xsl:template name="Violations">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <xsl:for-each select="*[1]/*">
                                            <th><xsl:value-of select="@title"/></th>
                                        </xsl:for-each>
                                    </tr>
                                    <xsl:for-each select="*">
                                        <tr>
                                            <xsl:for-each select="*">
                                                <td><xsl:value-of select="@value"/></td>
                                            </xsl:for-each>
                                        </tr>
                                    </xsl:for-each>
                                    <xsl:if test="count(*) = 0">
                                        <tr>
                                            <th align="center">Данных по штрафам нет</th>
                                        </tr>
                                    </xsl:if>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </xsl:template>

    <xsl:template name="Company">

        <xsl:for-each select="Name">
            <xsl:call-template name="Name"/>
        </xsl:for-each>

        <xsl:for-each select="Identification">
            <xsl:call-template name="Table"/>
        </xsl:for-each>

        <xsl:for-each select="Information">
            <xsl:call-template name="CompanyInformation"/>
        </xsl:for-each>

    </xsl:template>

    <xsl:template name="Companies">

        <xsl:for-each select="Company">
            <xsl:call-template name="Company" />
        </xsl:for-each>

    </xsl:template>

    <xsl:template name="Subject">

        <xsl:for-each select="Information">
            <xsl:call-template name="Table"/>
        </xsl:for-each>

        <xsl:for-each select="Documents">
            <xsl:call-template name="Documents"/>
        </xsl:for-each>

        <xsl:for-each select="RegistrationAddress">
            <xsl:call-template name="RegistrationAddress"/>
        </xsl:for-each>

        <xsl:for-each select="GovBaseReport/Violations">
            <xsl:call-template name="Violations"/>
        </xsl:for-each>

    </xsl:template>

    <xsl:template name="Subjects">

        <xsl:for-each select="Subject">
            <xsl:call-template name="Subject" />
        </xsl:for-each>

    </xsl:template>

    <xsl:template name="Drivers">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <table class="bordered">
                                <tbody>
                                    <xsl:if test="count(Driver) = 0">
                                        <tr>
                                            <th class="text-center">Информация о водителях не найдена</th>
                                        </tr>
                                    </xsl:if>
                                    <xsl:for-each select="Driver">
                                        <tr>
                                            <xsl:if test="Photo">
                                                <th colspan="6" class="mini-title"><xsl:value-of select="@title"/></th>
                                            </xsl:if>
                                            <xsl:if test="not(Photo)">
                                                <th colspan="5" class="mini-title"><xsl:value-of select="@title"/></th>
                                            </xsl:if>
                                        </tr>
                                        <tr>
                                            <xsl:if test="Photo">
                                                <th rowspan="4" style="width:150px;padding:5px;" class="text-center"><img style="width: 150px;" src="{Photo/@value}"/></th>
                                            </xsl:if>
                                            <th><xsl:value-of select="LastName/@title"/></th>
                                            <th><xsl:value-of select="FirstName/@title"/></th>
                                            <th><xsl:value-of select="MiddleName/@title"/></th>
                                            <th><xsl:value-of select="BirthDate/@title"/></th>
                                            <th><xsl:value-of select="IIN/@title"/></th>
                                        </tr>
                                        <tr>
                                            <td><xsl:value-of select="LastName/@value"/></td>
                                            <td><xsl:value-of select="FirstName/@value"/></td>
                                            <td><xsl:value-of select="MiddleName/@value"/></td>
                                            <td><xsl:value-of select="BirthDate/@value"/></td>
                                            <td><xsl:value-of select="IIN/@value"/></td>
                                        </tr>
                                        <tr>
                                            <th><xsl:value-of select="LastOperationDate/@title"/></th>
                                            <th><xsl:value-of select="Expiry/@title"/></th>
                                            <th><xsl:value-of select="DriverLicense/Number/@title"/></th>
                                            <th><xsl:value-of select="DriverLicense/Series/@title"/></th>
                                            <th><xsl:value-of select="DriverLicenseCategories/@title"/></th>
                                        </tr>
                                        <tr>
                                            <td><xsl:value-of select="LastOperationDate/@value"/></td>
                                            <td><xsl:value-of select="Expiry/@value"/></td>
                                            <td><xsl:value-of select="DriverLicense/Number/@value"/></td>
                                            <td><xsl:value-of select="DriverLicense/Series/@value"/></td>
                                            <td>
                                                <xsl:for-each select="DriverLicenseCategories/*">
                                                    <xsl:if test="@value = '1'">
                                                        <xsl:value-of select="@title"/>
                                                    </xsl:if>
                                                </xsl:for-each>
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

    <xsl:template name="Vehicles">

        <div class="printable">
            <table class="full_width">
                <tbody>
                    <tr>
                        <td class="title_row row_15">
                            <p class="title">
                                <b><xsl:value-of select='@title'/></b>
                            </p>
                        </td>
                        <td class="content_row">
                            <xsl:if test="count(Vehicle) = 0">
                                <table class="bordered">
                                    <tbody>
                                        <tr>
                                            <th class="text-center">Информация о ТС не найдена</th>
                                        </tr>
                                    </tbody>
                                </table>
                            </xsl:if>
                            <xsl:for-each select="Vehicle">
                                <table class="bordered">
                                    <tbody>
                                        <tr>
                                            <th colspan="7" class="mini-title"><xsl:value-of select="@title"/></th>
                                        </tr>
                                        <tr>
                                            <th><xsl:value-of select="RegDate/@title"/></th>
                                            <th><xsl:value-of select="Year/@title"/></th>
                                            <th><xsl:value-of select="Mark/@title"/></th>
                                            <th><xsl:value-of select="StateNumber/Actual/@title"/></th>
                                            <th><xsl:value-of select="StateNumber/Previous/@title"/></th>
                                            <th><xsl:value-of select="Color/@title"/></th>
                                            <th><xsl:value-of select="Category/@title"/></th>
                                        </tr>
                                        <tr>
                                            <td><xsl:value-of select="RegDate/@value"/></td>
                                            <td><xsl:value-of select="Year/@value"/></td>
                                            <td><xsl:value-of select="Mark/@value"/></td>
                                            <td><xsl:value-of select="StateNumber/Actual/@value"/></td>
                                            <td><xsl:value-of select="StateNumber/Previous/@value"/></td>
                                            <td><xsl:value-of select="Color/@value"/></td>
                                            <td><xsl:value-of select="Category/@value"/></td>
                                        </tr>
                                        <tr>
                                            <th><xsl:value-of select="EngineNumber/@title"/></th>
                                            <th><xsl:value-of select="EngineVolume/@title"/></th>
                                            <th><xsl:value-of select="Vin/@title"/></th>
                                            <th><xsl:value-of select="TechPassport/Actual/@title"/></th>
                                            <th><xsl:value-of select="TechPassport/Previous/@title"/></th>
                                            <th colspan="2"><xsl:value-of select="TechPassport/Print/@title"/></th>
                                        </tr>
                                        <tr>
                                            <td><xsl:value-of select="EngineNumber/@value"/></td>
                                            <td><xsl:value-of select="EngineVolume/@value"/></td>
                                            <td><xsl:value-of select="Vin/@value"/></td>
                                            <td><xsl:value-of select="TechPassport/Actual/@value"/></td>
                                            <td><xsl:value-of select="TechPassport/Previous/@value"/></td>
                                            <td colspan="2"><xsl:value-of select="TechPassport/Print/@value"/></td>
                                        </tr>
                                    </tbody>
                                </table>

                                <br/>

                                <table class="bordered">
                                    <tbody>
                                        <tr>
                                            <td colspan="6" class="mini-title">
                                                <b>
                                                    <xsl:value-of select="Owner/@title"/>
                                                </b>
                                            </td>
                                        </tr>
                                        <xsl:if test="Owner/Type/@id = '2'">
                                            <tr>
                                                <th><xsl:value-of select="Owner/Type/@title"/></th>
                                                <th><xsl:value-of select="Owner/Document/@title"/></th>
                                                <th><xsl:value-of select="Owner/LastName/@title"/></th>
                                                <th><xsl:value-of select="Owner/FirstName/@title"/></th>
                                                <th><xsl:value-of select="Owner/MiddleName/@title"/></th>
                                                <th><xsl:value-of select="Owner/BirthDate/@title"/></th>
                                            </tr>
                                            <tr>
                                                <td><xsl:value-of select="Owner/Type/@value"/></td>
                                                <td><xsl:value-of select="Owner/Document/@value"/></td>
                                                <td><xsl:value-of select="Owner/LastName/@value"/></td>
                                                <td><xsl:value-of select="Owner/FirstName/@value"/></td>
                                                <td><xsl:value-of select="Owner/MiddleName/@value"/></td>
                                                <td><xsl:value-of select="Owner/BirthDate/@value"/></td>
                                            </tr>
                                        </xsl:if>
                                        <xsl:if test="Owner/Type/@id != '2'">
                                            <tr>
                                                <th><xsl:value-of select="Owner/Type/@title"/></th>
                                                <th><xsl:value-of select="Owner/Document/@title"/></th>
                                                <th><xsl:value-of select="Owner/Name/@title"/></th>
                                                <th><xsl:value-of select="Owner/CodeName/@title"/></th>
                                                <th><xsl:value-of select="Owner/DepName/@title"/></th>
                                            </tr>
                                            <tr>
                                                <td><xsl:value-of select="Owner/Type/@value"/></td>
                                                <td><xsl:value-of select="Owner/Document/@value"/></td>
                                                <td><xsl:value-of select="Owner/Name/@value"/></td>
                                                <td><xsl:value-of select="Owner/CodeName/@value"/></td>
                                                <td><xsl:value-of select="Owner/DepName/@value"/></td>
                                            </tr>
                                        </xsl:if>
                                    </tbody>
                                </table>

                                <br/>

                                <table class="bordered">
                                    <tbody>
                                        <tr>
                                            <td colspan="5" class="mini-title">
                                                <b>
                                                    <xsl:value-of select="Limits/@title"/>
                                                </b>
                                            </td>
                                        </tr>
                                        <xsl:for-each select="Limits/Limit[1]">
                                            <tr>
                                                <th><xsl:value-of select="Status/@title"/></th>
                                                <th><xsl:value-of select="Encumbrance/@title"/></th>
                                                <th><xsl:value-of select="Authority/@title"/></th>
                                                <th><xsl:value-of select="Reason/@title"/></th>
                                                <th><xsl:value-of select="Region/@title"/></th>
                                            </tr>
                                        </xsl:for-each>
                                        <xsl:if test="count(Limits/Limit) = 0">
                                            <tr colspan="5">
                                                <th class="text-center">Ограничений нет</th>
                                            </tr>
                                        </xsl:if>
                                        <xsl:for-each select="Limits/Limit">
                                            <tr>
                                                <td><xsl:value-of select="Status/@value"/></td>
                                                <td><xsl:value-of select="Encumbrance/@value"/></td>
                                                <td><xsl:value-of select="Authority/@value"/></td>
                                                <td><xsl:value-of select="Reason/@value"/></td>
                                                <td><xsl:value-of select="Region/@value"/></td>
                                            </tr>
                                        </xsl:for-each>
                                    </tbody>
                                </table>

                                <br/>

                            </xsl:for-each>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>



    </xsl:template>

    <xsl:template name="GovBase">

        <xsl:if test="/Root/GovBaseReport">
            <p class="title" style="border-top: 1px solid #ccc; margin-top: 0; padding: 5px 10px; font-size: 12pt; text-align: justify;">
                <xsl:value-of select="GovBaseReport/@title"/>
            </p>

            <xsl:for-each select="GovBaseReport/Companies">
                <xsl:call-template name="Companies"/>
            </xsl:for-each>

            <xsl:for-each select="GovBaseReport/Subjects">
                <xsl:call-template name="Subjects"/>
            </xsl:for-each>

            <xsl:for-each select="GovBaseReport/Violations">
                <xsl:call-template name="Violations"/>
            </xsl:for-each>

            <xsl:for-each select="GovBaseReport/Drivers">
                <xsl:call-template name="Drivers"/>
            </xsl:for-each>

            <xsl:for-each select="GovBaseReport/Vehicles">
                <xsl:call-template name="Vehicles"/>
            </xsl:for-each>
        </xsl:if>

    </xsl:template>

</xsl:stylesheet>