<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="Tabled">
        <table class="full_width bordered" style="margin-bottom: 10px;">
            <tbody>
                <tr>
                    <th style="width: 33%">
                        <xsl:value-of select="Request/RequestorName/@title"/>
                    </th>
                    <th style="width: 33%">
                        <xsl:value-of select="Request/SearchType/@title"/>
                    </th>
                    <th style="width: 33%">
                        <xsl:value-of select="Request/RequestDate/@title"/>
                    </th>
                </tr>
                <xsl:for-each select="Request">
                    <tr>
                        <td>
                            <xsl:value-of select="RequestorName/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="SearchType/@value"/>
                        </td>
                        <td>
                            <xsl:value-of select="RequestDate/@value"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
        <xsl:if test="/Root/SubjectMonitorings/Monitoring">
            <table class="full_width bordered" style="margin-bottom: 10px;">
                <tbody>
                    <tr>
                        <th style="width: 33%">
                            <xsl:value-of select="/Root/SubjectMonitorings/Monitoring/Provider/@title"/>
                        </th>
                        <th style="width: 33%">
                            <xsl:value-of select="/Root/SubjectMonitorings/Monitoring/StartDate/@title"/>
                        </th>
                        <th style="width: 33%">
                            <xsl:value-of select="/Root/SubjectMonitorings/Monitoring/EndDate/@title"/>
                        </th>
                    </tr>
                    <xsl:for-each select="/Root/SubjectMonitorings/Monitoring">
                        <tr>
                            <td>
                                <xsl:value-of select="Provider/@value"/>
                            </td>
                            <td>
                                <xsl:value-of select="StartDate/@value"/>
                            </td>
                            <td>
                                <xsl:value-of select="EndDate/@value"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </xsl:if>
    </xsl:template>

    <xsl:template name="InformationTable">
        <table class="full_width">
            <tbody>
                <tr>
                    <td class="row_15 title_row">
                        <p class="title">
                            <xsl:value-of select='@title'/>
                        </p>
                    </td>
                    <td class="space content_row bordered">
                        <xsl:call-template name="Tabled"/>
                    </td>
                </tr>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template name="InformationFullWidth">
        <p class="title contract_group" style="padding-left: 10px;">
            <xsl:value-of select="@title"/>
        </p>

        <xsl:if test="/Root/FooterPersonal">
            <p class="title"
               style="border-top: 1px solid #ccc; margin-top: 0; padding: 5px 10px; font-size: 13pt; color: black; text-decoration: underline; text-align: justify;">
                <xsl:value-of select="/Root/FooterPersonal/Text2/@title"/>
            </p>
            <ul style="font-size: 14px; text-align: justify;">
                <li>
                    <b>
                        <u>
                            <xsl:value-of select="/Root/FooterPersonal/Text7/@title"/>
                        </u>
                    </b>
                    <xsl:value-of select="/Root/FooterPersonal/Text7_2/@title"/>
                </li>
            </ul>
        </xsl:if>

        <xsl:call-template name="Tabled"/>
    </xsl:template>

    <xsl:template name="Information">
        <div class="printable">

            <xsl:if test="/Root/ExistingContracts or /Root/TerminatedContracts">
                <xsl:call-template name="InformationFullWidth"/>
            </xsl:if>
            <xsl:if test="not(/Root/ExistingContracts or /Root/TerminatedContracts)">
                <xsl:call-template name="InformationTable"/>
            </xsl:if>

        </div>
        <xsl:if test="/Root/FooterPersonal">
            <p class="title"
               style="border-top: 1px solid #ccc; margin-top: 0; padding: 5px 10px; font-size: 13pt; color: black; text-decoration: underline;">
                <xsl:value-of select="/Root/FooterPersonal/Text8/@title"/>
            </p>
            <ul style="font-size: 14px;">
                <li style="margin-bottom: 5px; text-align: justify;">
                    <i>
                        <xsl:value-of select="/Root/FooterPersonal/Text9/@title"/>
                    </i>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <i>
                        <xsl:value-of select="/Root/FooterPersonal/Text10/@title"/>
                    </i>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <i>
                        <xsl:value-of select="/Root/FooterPersonal/Text11/@title"/>
                    </i>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <i>
                        <xsl:value-of select="/Root/FooterPersonal/Text12/@title"/>
                    </i>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <i>
                        <xsl:value-of select="/Root/FooterPersonal/Text13/@title"/>
                    </i>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <i>
                        <xsl:value-of select="/Root/FooterPersonal/Text14/@title"/>
                    </i>
                </li>
                <li style="margin-bottom: 5px; text-align: justify;">
                    <i>
                        <xsl:value-of select="/Root/FooterPersonal/Text15/@title"/>
                    </i>
                </li>
            </ul>
        </xsl:if>
    </xsl:template>

    <xsl:template name="SubjectDataInformation">
        <xsl:for-each select="/Root/RequestsDetails">
            <xsl:call-template name="Information"/>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>