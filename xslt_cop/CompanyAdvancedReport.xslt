<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

    <xsl:import href="items/style.html"/>
    <xsl:import href="items/Header.xsl"/>
    <xsl:import href="items/ReportHeader.xsl"/>
    <xsl:import href="items/SubjectInformationCompany.xsl"/>
    <xsl:import href="items/SubjectDocuments.xsl"/>
    <xsl:import href="items/SubjectAddresses.xsl"/>
    <xsl:import href="items/SubjectContactsCompany.xsl"/>
    <xsl:import href="items/AdditionalInformationCompany.xsl"/>
    <xsl:import href="items/NumberOfQueries.xsl"/>
    <xsl:import href="items/SummaryInformation.xsl"/>
    <xsl:import href="items/Contracts.xsl"/>
    <xsl:import href="items/OutdatedContracts.xsl"/>
    <xsl:import href="items/PublicSources.xsl"/>
    <xsl:import href="items/GovBase.xsl"/>
    <xsl:import href="items/Footer.xsl"/>

    <xsl:template name='Root' match='Root'>
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <xsl:call-template name="style"/>
            </head>
            <body>

                <xsl:call-template name="Header"/>                  <!--END-->

                <p class="title" style="border-top: 1px solid #ccc; padding: 25px 10px 15px; font-size: 14pt; text-align: justify;">
                    <xsl:value-of select="/Root/Footer/InformationFromDB/@title"/>
                </p>

                <xsl:call-template name="ReportHeader"/>            <!--END-->
                <xsl:call-template name="SubjectInformation"/>      <!--END-->
                <xsl:call-template name="SubjectDocuments"/>        <!--END-->
                <xsl:call-template name="SubjectAddresses"/>        <!--END-->
                <xsl:call-template name="SubjectContactsCompany"/>  <!--END-->
                <xsl:call-template name="AdditionalInformation"/>   <!--END-->
                <xsl:call-template name="NumberOfQueries"/>         <!--END-->
                <xsl:call-template name="SummaryInformation"/>      <!--END-->
                <xsl:call-template name="Contracts"/>       <!--END-->
                <!--<xsl:call-templates name="OutdatedContracts"/>   &lt;!&ndash;END&ndash;&gt;-->

                <p class="title" style="border-top: 1px solid #ccc; padding: 25px 10px 15px; font-size: 14pt; text-align: justify;">
                    <xsl:value-of select="/Root/Footer/InformationFromPSS/@title"/>
                </p>

                <xsl:call-template name="PublicSources"/>           <!--END-->
                <xsl:call-template name="GovBase"/>
                <xsl:call-template name="Footer"/>                  <!--END-->

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>