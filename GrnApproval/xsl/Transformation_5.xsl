<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../../../../../../Sarmad%20Data/GRNApproval/Paperless/GrnApprovalWorkflow/GrnApproval/BPELProcessSaveApprover.wsdl"/>
      <rootElement name="ReadReceiptDataOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/ReadReceiptData"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../../../../../../Sarmad%20Data/GRNApproval/Paperless/GrnApprovalWorkflow/GrnApproval/SaveApprover.wsdl"/>
      <rootElement name="XxReceiptApproverHistoryCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/SaveApprover"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 140919.1004.0161) AT [WED JUN 22 16:27:20 PKT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/SaveApprover"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/GrnApprovalWorkflow/GrnApproval/SaveApprover"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:client="http://xmlns.oracle.com/GrnApprovalWorkflow/GrnApproval/BPELProcessSaveApprover"
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
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl plnk wsdl client xsd ns1 top tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <top:XxReceiptApproverHistoryCollection>
      <xsl:for-each select="/ns1:ReadReceiptDataOutputCollection/ns1:ReadReceiptDataOutput">
        <top:XxReceiptApproverHistory>
          <top:shipmentHeaderId>
            <xsl:if test="ns1:SHIPMENT_HEADER_ID/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns1:SHIPMENT_HEADER_ID/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="ns1:SHIPMENT_HEADER_ID"/>
          </top:shipmentHeaderId>
          <top:shipmentLineId>
            <xsl:if test="ns1:SHIPMENT_LINE_ID/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns1:SHIPMENT_LINE_ID/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="ns1:SHIPMENT_LINE_ID"/>
          </top:shipmentLineId>
          <top:approverId>
            <xsl:value-of select="../ns1:user_id"/>
          </top:approverId>
          <top:historyId>
            <xsl:value-of select='oraext:sequence-next-val("xx_receipt_apr_history_seq","jdbc:oracle:thin:apps/mskiz145@192.168.0.31:1522:prod")'/>
          </top:historyId>
        </top:XxReceiptApproverHistory>
      </xsl:for-each>
    </top:XxReceiptApproverHistoryCollection>
  </xsl:template>
</xsl:stylesheet>
