<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="FakeCompanies">
        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/FakeCompanies/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <xsl:value-of select="PublicSources/FakeCompanies/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/FakeCompanies/Company">
                    <tr>
                        <td>
                            <p>
                                <b>
                                    <xsl:value-of select="CompanyName/@title"/>:
                                </b>
                                <xsl:value-of select="CompanyName/@value"/>
                            </p>
                            <p>
                                <b>
                                    <xsl:value-of select="CompanyRNN/@title"/>:
                                </b>
                                <xsl:value-of select="CompanyRNN/@value"/>
                            </p>
                            <p>
                                <b>
                                    <xsl:value-of select="CompanyBIN/@title"/>:
                                </b>
                                <xsl:value-of select="CompanyBIN/@value"/>
                            </p>
                        </td>
                        <td>
                            <p>
                                <b>
                                    <xsl:value-of select="CEOName/@title"/>:
                                </b>
                                <xsl:value-of select="CEOName/@value"/>
                            </p>
                            <p>
                                <b>
                                    <xsl:value-of select="CEORNN/@title"/>:
                                </b>
                                <xsl:value-of select="CEORNN/@value"/>
                            </p>
                            <p>
                                <b>
                                    <xsl:value-of select="CEOIIN/@title"/>:
                                </b>
                                <xsl:value-of select="CEOIIN/@value"/>
                            </p>
                        </td>
                        <td>
                            <p>
                                <b>
                                    <xsl:value-of select="FounderName/@title"/>:
                                </b>
                                <xsl:value-of select="FounderName/@value"/>
                            </p>
                            <p>
                                <b>
                                    <xsl:value-of select="FounderRNN/@title"/>:
                                </b>
                                <xsl:value-of select="FounderRNN/@value"/>
                            </p>
                            <p>
                                <b>
                                    <xsl:value-of select="FounderIIN/@title"/>:
                                </b>
                                <xsl:value-of select="FounderIIN/@value"/>
                            </p>
                        </td>
                        <td align="center">
                            <p>
                                <b>
                                    <xsl:value-of select="Order/@title"/>
                                </b>
                            </p>
                            <p>
                                <xsl:value-of select="Order/@value"/>
                            </p>
                        </td>
                        <td align="center">
                            <p>
                                <b>
                                    <xsl:value-of select="CancellationDate/@title"/>
                                </b>
                            </p>
                            <p>
                                <xsl:value-of select="CancellationDate/@value"/>
                            </p>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/FakeCompanies/Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{PublicSources/FakeCompanies/Source/@value}">
                            <xsl:value-of select="PublicSources/FakeCompanies/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/FakeCompanies/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/FakeCompanies/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="AdiletExitBans">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/AdiletExitBans/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b><xsl:value-of select="PublicSources/AdiletExitBans/Status/@title"/>:
                        </b>
                        <xsl:value-of select="PublicSources/AdiletExitBans/Status/@value"/>
                    </td>
                </tr>
                <xsl:if test="PublicSources/AdiletExitBans/Subject">
                    <tr>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletExitBans/Subject/FirstName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletExitBans/Subject/LastName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletExitBans/Subject/MiddleName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletExitBans/Subject/BirthDate/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletExitBans/Subject/Details/@title"/>
                        </th>
                    </tr>
                </xsl:if>
                <xsl:for-each select="PublicSources/AdiletExitBans/Subject">
                    <tr>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Details/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/AdiletExitBans/Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{PublicSources/AdiletExitBans/Source/@value}">
                            <xsl:value-of select="PublicSources/AdiletExitBans/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/AdiletExitBans/RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/AdiletExitBans/RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/AdiletExitBans/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/AdiletExitBans/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="AdiletDebtors">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/AdiletDebtors/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b><xsl:value-of select="PublicSources/AdiletDebtors/Status/@title"/>:
                        </b>
                        <xsl:value-of select="PublicSources/AdiletDebtors/Status/@value"/>
                    </td>
                </tr>
                <xsl:if test="PublicSources/AdiletDebtors/Company">
                    <tr>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletDebtors/Company/CompanyName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletDebtors/Company/BIN/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletDebtors/Company/Location/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletDebtors/Company/Method/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="PublicSources/AdiletDebtors/Company/Details/@title"/>
                        </th>
                    </tr>
                </xsl:if>
                <xsl:for-each select="PublicSources/AdiletDebtors/Company">
                    <tr>
                        <td>
                            <xsl:value-of select="CompanyName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BIN/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Location/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Method/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Details/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/AdiletDebtors/Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{PublicSources/AdiletDebtors/Source/@value}">
                            <xsl:value-of select="PublicSources/AdiletDebtors/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/AdiletDebtors/RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/AdiletDebtors/RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/AdiletDebtors/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/AdiletDebtors/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="MvdInvestigations">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/MvdInvestigations/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <strong><xsl:value-of select="PublicSources/MvdInvestigations/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/MvdInvestigations/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/MvdInvestigations/Subject">
                    <tr>
                        <td rowspan="7">
                            <img alt="Photo" src="data:{Photo/@mimeType};base64,{Photo/@base64}"/>
                        </td>
                        <td colspan="4">
                            <strong><xsl:value-of select="SearchType/@title"/>:
                            </strong>
                            <xsl:value-of select="SearchType/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="4">
                            <xsl:value-of select="Description/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <xsl:value-of select="Description/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="RefreshDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Source/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Source/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/MvdInvestigations/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/MvdInvestigations/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="MvdCriminalInvestigations">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/MvdCriminalInvestigations/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <strong><xsl:value-of select="PublicSources/MvdCriminalInvestigations/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/MvdCriminalInvestigations/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/MvdCriminalInvestigations/Subject">
                    <tr>
                        <td rowspan="5">
                            <img alt="Photo" src="data:{Photo/@mimeType};base64,{Photo/@base64}"/>
                        </td>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="4">
                            <xsl:value-of select="Description/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <xsl:value-of select="Description/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="RefreshDate/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/MvdCriminalInvestigations/Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{PublicSources/MvdCriminalInvestigations/Source/@value}">
                            <xsl:value-of select="PublicSources/MvdCriminalInvestigations/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/MvdCriminalInvestigations/RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/MvdCriminalInvestigations/RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/MvdCriminalInvestigations/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/MvdCriminalInvestigations/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="QamqorList">
        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Вид розыска:
                        </strong>
                    </td>
                    <td colspan="4">
                        <xsl:value-of select="Subject/Type/@title"/>
                    </td>
                </tr>

                <xsl:for-each select="Subject">
                    <tr>
                        <td rowspan="6">
                            <img alt="Photo" src="data:{Photo/@mimeType};base64,{Photo/@base64}"/>
                        </td>
                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th rowspan="2">
                            <xsl:value-of select="Document/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Document/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <xsl:value-of select="DocumentAddInfo/@value" disable-output-escaping="yes"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Organ/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="OrganPhone/@title"/>
                        </th>
                        <xsl:choose>
                            <xsl:when test="Cause/@value = ''">
                                <th colspan="2">
                                    <xsl:value-of select="OrganPhoneReception/@title"/>
                                </th>
                            </xsl:when>
                            <xsl:otherwise>
                                <th>
                                    <xsl:value-of select="OrganPhoneReception/@title"/>
                                </th>
                                <th>
                                    <xsl:value-of select="Cause/@title"/>
                                </th>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="Organ/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="OrganPhone/@value"/>
                        </td>
                        <xsl:choose>
                            <xsl:when test="Cause/@value = ''">
                                <td colspan="2">
                                    <xsl:value-of select="OrganPhoneReception/@value"/>
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td>
                                    <xsl:value-of select="OrganPhoneReception/@value"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Cause/@value"/>
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="QamqorAlimony">
        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Subject">
                    <tr>
                        <td rowspan="4">
                            <img alt="Photo" src="data:{Photo/@mimeType};base64,{Photo/@base64}"/>
                        </td>
                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">
                            <xsl:value-of select="Organ/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="OrganPhone/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <xsl:value-of select="Organ/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="OrganPhone/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="DynamicSource">
        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="{count(Data/Row[1]/*)}" class="mini-title">
                        <b>
                            <xsl:value-of select="Title/@value"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="{count(Data/Row[1]/*)}">
                        <b>
                            <xsl:value-of select="Status/@title"/>
                        </b>
                        :
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <tr>
                    <xsl:for-each select="Data/Row[1]/*">
                        <th>
                            <xsl:value-of select="@title"/>
                        </th>
                    </xsl:for-each>
                </tr>
                <xsl:for-each select="Data/Row">
                    <tr>
                        <xsl:for-each select="*">
                            <td>
                                <xsl:value-of select="@value"/>
                            </td>
                        </xsl:for-each>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="{count(Data/Row[1]/*)}">
                        <b>
                            <xsl:value-of select="Url/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Url/@value}">
                            <xsl:value-of select="Url/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="{count(Data/Row[1]/*)}">
                        <b>
                            <xsl:value-of select="Date/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="Date/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="KgdWanted">
        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Subject">
                    <tr>
                        <td rowspan="4">
                            <img alt="Photo" src="{Photo/@value}" style="height:120px"/>
                        </td>
                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Resident/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="Nationality/@title"/>
                        </th>
                        <th colspan="2">
                            <xsl:value-of select="BornLocation/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="Resident/@value"/>
                        </td>

                        <td>
                            <xsl:value-of select="Nationality/@value"/>
                        </td>
                        <td colspan="2">
                            <xsl:value-of select="BornLocation/@value"/>
                        </td>


                    </tr>
                    <tr>
                        <th colspan="2">
                            <xsl:value-of select="Document/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Document/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <xsl:value-of select="Article/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Article/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <xsl:value-of select="SearchType/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="SearchType/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <xsl:value-of select="Measure/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Measure/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <xsl:value-of select="Criminal/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Criminal/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <xsl:value-of select="Initiator/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Initiator/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <xsl:value-of select="AdditionalDate/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="AdditionalDate/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="MvdMissingInvestigations">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/MvdMissingInvestigations/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <strong><xsl:value-of select="PublicSources/MvdMissingInvestigations/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/MvdMissingInvestigations/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/MvdMissingInvestigations/Subject">
                    <tr>
                        <td rowspan="5">
                            <img alt="Photo" src="data:{Photo/@mimeType};base64,{Photo/@base64}"/>
                        </td>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="4">
                            <xsl:value-of select="Description/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <xsl:value-of select="Description/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="RefreshDate/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/MvdMissingInvestigations/Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{PublicSources/MvdMissingInvestigations/Source/@value}">
                            <xsl:value-of select="PublicSources/MvdMissingInvestigations/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/MvdMissingInvestigations/RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/MvdMissingInvestigations/RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="PublicSources/MvdMissingInvestigations/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/MvdMissingInvestigations/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="SalykData">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="3" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Company">
                    <tr>
                        <th>
                            <xsl:value-of select="CompanyName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="CompanyBIN/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="CompanyRNN/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="CompanyName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="CompanyBIN/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="CompanyRNN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <xsl:for-each select="data/records/record">
                        <tr>
                            <th>
                                <b>
                                    <xsl:value-of select="@title"/>
                                </b>
                            </th>
                            <td colspan="2">
                                <xsl:value-of select="@value"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="3">
                        <b><xsl:value-of select="Source/@title"/>:
                        </b>
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b><xsl:value-of select="RefreshDate/@title"/>:
                        </b>
                        <xsl:value-of select="RefreshDate/@value"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>:
                        </b>
                        <a>
                            <xsl:value-of select="ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="SalykDataMpcDeb">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="3" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/SalykDataMpcDeb/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <strong><xsl:value-of select="PublicSources/SalykDataMpcDeb/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/SalykDataMpcDeb/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/SalykDataMpcDeb/Company">
                    <tr>
                        <th>
                            <xsl:value-of select="CompanyName/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="CompanyBIN/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="CompanyRNN/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="CompanyName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="CompanyBIN/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="CompanyRNN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <xsl:for-each select="data/records/record">
                        <tr>
                            <th>
                                <b>
                                    <xsl:value-of select="@title"/>
                                </b>
                            </th>
                            <td colspan="2">
                                <xsl:value-of select="@value"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="3">
                        <b><xsl:value-of select="PublicSources/SalykDataMpcDeb/Source/@title"/>:
                        </b>
                        <a target="_blank" href="{PublicSources/SalykDataMpcDeb/Source/@value}">
                            <xsl:value-of select="PublicSources/SalykDataMpcDeb/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b><xsl:value-of select="PublicSources/SalykDataMpcDeb/RefreshDate/@title"/>:
                        </b>
                        <xsl:value-of select="PublicSources/SalykDataMpcDeb/RefreshDate/@value"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b>
                            <xsl:value-of select="PublicSources/SalykDataMpcDeb/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/SalykDataMpcDeb/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="TaxDebtors">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="2" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/TaxDebtors/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <strong><xsl:value-of select="PublicSources/TaxDebtors/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/TaxDebtors/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/TaxDebtors/Company">
                    <tr>
                        <th>
                            <xsl:value-of select="Region/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Region/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="TaxAuthority/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="TaxAuthority/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="TaxPayer/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="TaxPayer/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="INN/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="INN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="RNN/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="RNN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="CEOFullName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="CEOFullName/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="TotalAmount/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="TotalAmount/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="PrincipalDebt/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="PrincipalDebt/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Fine/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Fine/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Penalty/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Penalty/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="OriginDate/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="OriginDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="2">
                        <b><xsl:value-of select="PublicSources/TaxDebtors/Source/@title"/>:
                        </b>
                        <a target="_blank" href="{PublicSources/TaxDebtors/Source/@value}">
                            <xsl:value-of select="PublicSources/TaxDebtors/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <b><xsl:value-of select="PublicSources/TaxDebtors/RefreshDate/@title"/>:
                        </b>
                        <xsl:value-of select="PublicSources/TaxDebtors/RefreshDate/@value"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <b>
                            <xsl:value-of select="PublicSources/TaxDebtors/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/TaxDebtors/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="Areears">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="5" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Subject">

                    <tr>
                        <th>
                            <xsl:value-of select="Name/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="Document/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="CEO/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="Summ/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="DebtDate/@title"/>
                        </th>


                    </tr>

                    <tr>
                        <td>
                            <xsl:value-of select="Name/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Document/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="CEO/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Summ/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="DebtDate/@value"/>
                        </td>
                    </tr>


                    <tr>
                        <th>
                            <xsl:value-of select="Source/@title"/>
                        </th>
                        <td colspan="4">
                            <a target="_blank" href="{Source/@value}">
                                <xsl:value-of select="Source/@value"/>
                            </a>
                        </td>
                    </tr>


                </xsl:for-each>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="TaxTebs">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="4" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Subject">

                    <xsl:for-each select="Info/Records/Record">
                        <tr>
                            <th>
                                <xsl:value-of select="@name"/>
                            </th>
                            <td colspan="3">
                                <xsl:value-of select="@value"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                    <tr>
                        <th>
                            <xsl:value-of select="Source/@title"/>
                        </th>
                        <td colspan="3">
                            <a target="_blank" href="{Source/@value}">
                                <xsl:value-of select="Source/@value"/>
                            </a>
                        </td>
                    </tr>

                    <tr>
                        <th>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="ActualDate/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="ActualDate/@value"/>
                        </td>
                    </tr>

                </xsl:for-each>
                <tr>
                    <td colspan="4">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <b>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="FalseBusi">
        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="4" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Companies/Company">
                    <tr>
                        <th colspan="1">
                            <xsl:value-of select="Name/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Name/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="RNN/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="RNN/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="IIN/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="IIN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="CEO/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="CEO/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="Founder/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Founder/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="CancellationDate/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="CancellationDate/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="CancellationOrder/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="CancellationOrder/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="4">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <b>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template name="RNUGosZakup">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="4" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Companies/Company">
                    <tr>
                        <th>
                            <xsl:value-of select="Name/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="Name/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="RNN/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="IIN/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="BIN/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="RNN/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="IIN/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="BIN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="PostAddress/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="PostAddress/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="InformationLink/@title"/>
                        </th>
                        <td colspan="2">
                            <a target="_blank" href="{InformationLink/@value}">
                                <xsl:value-of select="InformationLink/@value"/>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Head/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="HeadRNN/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="HeadIIN/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="Head/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="HeadRNN/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="HeadIIN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Founder/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="FounderRNN/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="FounderIIN/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="Founder/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="FounderRNN/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="FounderIIN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="DateOn/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="DateOff/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="DateLetter/@title"/>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="DateOn/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="DateOff/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="DateLetter/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Type/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="Type/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="RecordLink/@title"/>
                        </th>
                        <td colspan="2">
                            <a target="_blank" href="{RecordLink/@value}">
                                <xsl:value-of select="RecordLink/@value"/>
                            </a>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="3">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="TerrorList">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="6" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/TerrorList/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <strong><xsl:value-of select="PublicSources/TerrorList/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/TerrorList/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/TerrorList/Subject">
                    <tr>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>


                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="IIN/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="IIN/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>

                        <td>
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                        <td colspan="2">
                            <b>
                                <xsl:value-of select="Note/@title"/>
                            </b>
                            :
                            <xsl:value-of select="Note/@value"/>
                        </td>
                    </tr>

                </xsl:for-each>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/TerrorList/Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{PublicSources/TerrorList/Source/@value}">
                            <xsl:value-of select="PublicSources/TerrorList/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/TerrorList/RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/TerrorList/RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/TerrorList/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/TerrorList/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>

            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="Kredito">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="6" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/Kredito/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <strong><xsl:value-of select="PublicSources/Kredito/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/Kredito/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/Kredito/Subject">
                    <tr>
                        <th>
                            <xsl:value-of select="region/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="region/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="address/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="address/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>

                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="IIN/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="IIN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="startDate/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="startDate/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="actualDate/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="actualDate/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="endDate/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="endDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th rowspan="2">
                            <xsl:value-of select="amount/@title"/>
                        </th>
                        <td rowspan="2">
                            <xsl:value-of select="amount/@value"/> KZT
                        </td>
                        <th>
                            <xsl:value-of select="amount_r/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="amount_r/@value"/> KZT
                        </td>
                        <th>
                            <xsl:value-of select="outstanding/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="outstanding/@value"/> KZT
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="delay_day/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="delay_day/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="penalty/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="penalty/@value"/> KZT
                        </td>
                    </tr>

                </xsl:for-each>

                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/Kredito/RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/Kredito/RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/Kredito/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/Kredito/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>

            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="NebankLoans">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="6" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/NebankLoans/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <strong><xsl:value-of select="PublicSources/NebankLoans/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/NebankLoans/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/NebankLoans/Subject">
                    <tr>
                        <th>
                            <xsl:value-of select="FirstName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="FirstName/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="LastName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="LastName/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="MiddleName/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="MiddleName/@value"/>
                        </td>


                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="IIN/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="IIN/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="BirthDate/@title"/>
                        </th>

                        <td colspan="2">
                            <xsl:value-of select="BirthDate/@value"/>
                        </td>

                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Sum/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="Period/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="Status/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="Rate/@title"/>
                        </th>
                        <th colspan="2">
                            <xsl:value-of select="SumRet/@title"/>
                        </th>

                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="Sum/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Period/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Status/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="Rate/@value"/>
                        </td>
                        <td colspan="2">
                            <xsl:value-of select="SumRet/@value"/>
                        </td>

                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="StartDate/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="StartDate/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="EndDate/@title"/>
                        </th>

                        <td colspan="2">
                            <xsl:value-of select="EndDate/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6"></td>
                    </tr>

                </xsl:for-each>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/NebankLoans/Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{PublicSources/NebankLoans/Source/@value}">
                            <xsl:value-of select="PublicSources/NebankLoans/Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/NebankLoans/RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/NebankLoans/RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/NebankLoans/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/NebankLoans/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>

            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="L150o10">

        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="6" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Companies/Company">
                    <tr>
                        <th colspan="1">
                            <xsl:value-of select="Activity/@title"/>
                        </th>
                        <td colspan="5">
                            <xsl:value-of select="Activity/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Region/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Region/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="CodeUgd/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="CodeUgd/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="NameGos/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="NameGos/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th rowspan="2">
                            <xsl:value-of select="NameNal/@title"/>
                        </th>
                        <td rowspan="2">
                            <xsl:value-of select="NameNal/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="RNN/@title"/>
                        </th>

                        <th>
                            <xsl:value-of select="BIN/@title"/>
                        </th>
                        <th colspan="2">
                            <xsl:value-of select="Boss/@title"/>
                        </th>

                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="RNN/@value"/>
                        </td>

                        <td>
                            <xsl:value-of select="BIN/@value"/>
                        </td>
                        <td colspan="2">
                            <xsl:value-of select="Boss/@value"/>
                        </td>

                    </tr>
                    <tr>
                        <th rowspan="2">
                            <xsl:value-of select="TotalSum/@title"/>
                        </th>
                        <td rowspan="2">
                            <xsl:value-of select="TotalSum/@value"/>
                        </td>
                        <th colspan="2">
                            <xsl:value-of select="PrincipalSum/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="Fine/@title"/>
                        </th>
                        <th>
                            <xsl:value-of select="Penalty/@title"/>
                        </th>
                    </tr>
                    <tr>

                        <td colspan="2">
                            <xsl:value-of select="PrincipalSum/@value"/>
                        </td>

                        <td>
                            <xsl:value-of select="Fine/@value"/>
                        </td>

                        <td>
                            <xsl:value-of select="Penalty/@value"/>
                        </td>

                    </tr>
                    <tr>
                        <td colspan="6">
                            <b>
                                <xsl:value-of select="docUrl/@title"/>
                            </b>
                            :
                            <a target="_blank" href="{docUrl/@value}">
                                <xsl:value-of select="docUrl/@value"/>
                            </a>
                        </td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="Bankruptcy">
        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="6" class="mini-title">
                        <b>
                            <xsl:value-of select="@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <strong><xsl:value-of select="Status/@title"/>:
                        </strong>
                        <xsl:value-of select="Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="Companies/Company">
                    <tr>
                        <th colspan="1">
                            <xsl:value-of select="Activity/@title"/>
                        </th>
                        <td colspan="5">
                            <xsl:value-of select="Activity/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Region/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Region/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="Address/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="Address/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Name/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Name/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="RNN/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="RNN/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="BIN/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="BIN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Boss/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="Boss/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="IIN/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="IIN/@value"/>
                        </td>

                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Founder/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="Founder/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="FounderIIN/@title"/>
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="FounderIIN/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">

                            <xsl:value-of select="DIF/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="DIF/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">
                            <xsl:value-of select="DIP/@title"/>
                        </th>
                        <td colspan="3">
                            <xsl:value-of select="DIP/@value"/>
                        </td>

                    </tr>

                </xsl:for-each>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="Source/@title"/>
                        </b>
                        :
                        <a target="_blank" href="{Source/@value}">
                            <xsl:value-of select="Source/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="RefreshDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="RefreshDate/@value"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="ActualDate/@value"/>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template name="Ksk">
        <table class="bordered">
            <tbody>
                <tr>
                    <td colspan="6" class="mini-title">
                        <b>
                            <xsl:value-of select="PublicSources/Ksk/@title"/>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <strong><xsl:value-of select="PublicSources/Ksk/Status/@title"/>:
                        </strong>
                        <xsl:value-of select="PublicSources/Ksk/Status/@value"/>
                    </td>
                </tr>
                <xsl:for-each select="PublicSources/Ksk/Subject">
                    <tr>
                        <th>
                            <xsl:value-of select="region/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="region/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="address/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="address/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="account/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="account/@value"/>
                        </td>

                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="Name/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Name/@value"/>
                        </td>

                        <th>
                            <xsl:value-of select="Iin/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="Iin/@value"/>
                        </td>
                        <th>
                            <xsl:value-of select="OverdueDays/@title"/>
                        </th>
                        <td>
                            <xsl:value-of select="OverdueDays/@value"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">
                            Наименование услуги
                        </th>

                        <th colspan="3">
                            Сумма просроченной задолженности по услуге, KZT
                        </th>

                    </tr>
                    <xsl:for-each select="Service">
                        <tr>
                            <td colspan="3">
                                <xsl:value-of select="ServiceName/@value"/>
                            </td>

                            <td colspan="3">
                                <xsl:value-of select="ServiceFine/@value"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <td colspan="6">
                            <b>
                                <xsl:value-of select="Source/@title"/>
                            </b>
                            :
                            <a>
                                <a target="_blank" href="{Source/@value}">
                                    <xsl:value-of select="Source/@value"/>
                                </a>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <b>
                                <xsl:value-of select="RefreshDate/@title"/>
                            </b>
                            :
                            <a>
                                <xsl:value-of select="RefreshDate/@value"/>
                            </a>
                        </td>
                    </tr>
                </xsl:for-each>

                <tr>
                    <td colspan="6">
                        <b>
                            <xsl:value-of select="PublicSources/Ksk/ActualDate/@title"/>
                        </b>
                        :
                        <a>
                            <xsl:value-of select="PublicSources/Ksk/ActualDate/@value"/>
                        </a>
                    </td>
                </tr>

            </tbody>
        </table>

    </xsl:template>

    <xsl:template name="PublicSources">

        <div class="printable">

            <xsl:if test="/Root/PublicSources">

                <p class="title"
                   style="border-top: 1px solid #ccc; margin-top: 0; padding: 5px 10px; font-size: 12pt; text-align: justify;">
                    Данные из публичных источников
                </p>

                <table class="full_width">
                    <tbody>
                        <tr>
                            <td class="content_row">
                                <xsl:if test="PublicSources/Ksk">
                                    <xsl:call-template name="Ksk"/>
                                    <br/>
                                </xsl:if>

                                <xsl:for-each select="PublicSources/DynamicSources/PublicSource">
                                    <xsl:call-template name="DynamicSource"/>
                                    <br/>
                                </xsl:for-each>


                                <xsl:if test="PublicSources/AdiletDebtors">
                                    <xsl:call-template name="AdiletDebtors"/>

                                    <br/>
                                </xsl:if>

                                <xsl:if test="PublicSources/AdiletExitBans">
                                    <xsl:call-template name="AdiletExitBans"/>

                                    <br/>
                                </xsl:if>

                                <xsl:if test="PublicSources/FakeCompanies">
                                    <xsl:call-template name="FakeCompanies"/>
                                    <br/>
                                </xsl:if>

                                <xsl:if test="PublicSources/MvdCriminalInvestigations">
                                    <xsl:call-template name="MvdCriminalInvestigations"/>

                                    <br/>
                                </xsl:if>

                                <xsl:if test="PublicSources/MvdMissingInvestigations">
                                    <xsl:call-template name="MvdMissingInvestigations"/>

                                    <br/>
                                </xsl:if>

                                <xsl:if test="PublicSources/TerrorList">
                                    <xsl:call-template name="TerrorList"/>

                                    <br/>
                                </xsl:if>

                                <xsl:for-each select="PublicSources/SalykDataFake">
                                    <xsl:call-template name="SalykData"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/SalykDataMissing">
                                    <xsl:call-template name="SalykData"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/SalykDataBankrupt">
                                    <xsl:call-template name="SalykData"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/SalykDataViolation">
                                    <xsl:call-template name="SalykData"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/SalykDataInactive">
                                    <xsl:call-template name="SalykData"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/SalykDataInvalidated">
                                    <xsl:call-template name="SalykData"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/SalykDataMpcDeb">
                                    <xsl:call-template name="SalykData"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:if test="PublicSources/TaxDebtors">
                                    <xsl:call-template name="TaxDebtors"/>

                                    <br/>
                                </xsl:if>

                                <xsl:for-each select="PublicSources/Areears">
                                    <xsl:call-template name="Areears"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/TaxTebs">
                                    <xsl:call-template name="TaxTebs"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/FalseBusi">
                                    <xsl:call-template name="FalseBusi"/>

                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/Bankruptcy">
                                    <xsl:call-template name="Bankruptcy"/>

                                    <br/>
                                </xsl:for-each>
                                <xsl:for-each select="PublicSources/RNUGosZakup">
                                    <xsl:call-template name="RNUGosZakup"/>
                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/L150o10">
                                    <xsl:call-template name="L150o10"/>
                                    <br/>
                                </xsl:for-each>
                                <xsl:for-each select="PublicSources/QamqorList">
                                    <xsl:call-template name="QamqorList"/>
                                    <br/>
                                </xsl:for-each>
                                <xsl:for-each select="PublicSources/QamqorAlimony">
                                    <xsl:call-template name="QamqorAlimony"/>
                                    <br/>
                                </xsl:for-each>

                                <xsl:for-each select="PublicSources/KgdWanted">
                                    <xsl:call-template name="KgdWanted"/>
                                    <br/>
                                </xsl:for-each>

                                <xsl:if test="PublicSources/NebankLoans">
                                    <xsl:call-template name="NebankLoans"/>
                                    <br/>
                                </xsl:if>

                                <xsl:if test="PublicSources/Kredito">
                                    <xsl:call-template name="Kredito"/>
                                    <br/>
                                </xsl:if>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </xsl:if>

        </div>

    </xsl:template>

</xsl:stylesheet>