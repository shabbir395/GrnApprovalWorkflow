<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1">
    <af:form id="f1">
      <af:panelHeader text="panelHeader 1" id="ph1">
        <f:facet name="context"/>
        <f:facet name="menuBar"/>
        <f:facet name="toolbar"/>
        <f:facet name="legend"/>
        <f:facet name="info"/>
        <af:commandButton text="commandButton 1" id="cb1"/>
      </af:panelHeader>
    </af:form>
  </af:document>
</f:view>