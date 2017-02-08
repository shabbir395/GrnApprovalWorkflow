<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../BPELProcessUpdateProcessLineFlag.wsdl"/>
      <rootElement name="ReadReceiptDataOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/ReadReceiptData"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../UpdateLineProcessedFlag.wsdl"/>
      <rootElement name="RcvShipmentLinesCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateLineProcessedFlag"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [THU JAN 21 16:19:14 PKT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/GrnApprovalWorkflow/GrnApproval/UpdateLineProcessedFlag"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateLineProcessedFlag"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/ReadReceiptData"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:client="http://xmlns.oracle.com/GrnApprovalWorkflow/GrnApproval/BPELProcessUpdateProcessLineFlag"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl plnk wsdl xsd ns1 client tns top xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <top:RcvShipmentLinesCollection>
      <xsl:for-each select="/ns1:ReadReceiptDataOutputCollection/ns1:ReadReceiptDataOutput">
        <top:RcvShipmentLines>
          <top:shipmentLineId>
            <xsl:value-of select="ns1:SHIPMENT_LINE_ID"/>
          </top:shipmentLineId>
          <top:attribute2>
            <xsl:text disable-output-escaping="no">BPM_LINE_PROCESSED</xsl:text>
          </top:attribute2>
        </top:RcvShipmentLines>
      </xsl:for-each>
    </top:RcvShipmentLinesCollection>
  </xsl:template>
</xsl:stylesheet>
