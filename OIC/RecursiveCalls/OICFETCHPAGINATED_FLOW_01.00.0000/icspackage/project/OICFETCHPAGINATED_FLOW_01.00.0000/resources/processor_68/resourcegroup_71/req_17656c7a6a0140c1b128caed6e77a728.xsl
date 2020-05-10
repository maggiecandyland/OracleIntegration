<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xml:id="id_1" xmlns:tns="http://singhpora.com/OIC/OICFetchPaginatedData" xmlns:ofpd="http://singhpora.com/OIC/schemas/OICFetchPaginatedData" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:nstrgmpr="http://xmlns.oracle.com/types/Call_OICFetchPaginatedData/OutboundSOAPRequestDocument" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:nssrcdfl="http://xmlns.oracle.com/procmon" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" exclude-result-prefixes=" oraext xsd xp20 ora oracle-xsl-mapper nssrcdfl xsi fn xsl ignore01" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:nsmpr0="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:ns1="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.resources.icsxpathfunctions.ICSInstanceTrackingFunctions" xmlns:ns0="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns20="http://xmlns.oracle.com/ics/tracking/ics_tracking_context.xsd">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_18/outbound_19/resourcegroup_20/fetchData_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="fetchPaginatedDataMessage" namespace="http://singhpora.com/OIC/schemas/OICFetchPaginatedData" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_60/inbound_61/resourcegroup_62/Call_OICFetchPaginatedData_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="OutboundSOAPRequestDocument" namespace="http://xmlns.oracle.com/types/Call_OICFetchPaginatedData/OutboundSOAPRequestDocument" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.2.0.0-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:OutboundSOAPRequestDocument xml:id="id_12">
         <nstrgmpr:Body xml:id="id_21">
            <ofpd:fetchPaginatedDataMessage xml:id="id_22">
               <ofpd:pageNumber xml:id="id_23">
                  <xsl:value-of xml:id="id_24" select="number (/ofpd:fetchPaginatedDataMessage/ofpd:pageNumber ) + 1"/>
               </ofpd:pageNumber>
               <ofpd:reference xml:id="id_25">
                  <xsl:value-of xml:id="id_26" select="concat (&quot;PageNumber-&quot;, (number (/ofpd:fetchPaginatedDataMessage/ofpd:pageNumber ) + 1) )"/>
               </ofpd:reference>
            </ofpd:fetchPaginatedDataMessage>
         </nstrgmpr:Body>
      </nstrgmpr:OutboundSOAPRequestDocument>
   </xsl:template>
</xsl:stylesheet>