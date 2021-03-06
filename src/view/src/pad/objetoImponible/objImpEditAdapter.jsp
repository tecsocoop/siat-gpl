<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<script type="text/javascript" language="javascript">			   
   	    <%@include file="/base/submitForm.js"%>
   	    <%@include file="/base/calendar.js"%>
</script>

<!-- Tabla que contiene todos los formularios -->
<html:form styleId="filter" action="/pad/AdministrarObjImp.do">
	
	<!-- Mensajes y/o Advertencias -->
	<%@ include file="/base/warning.jsp" %>
	<!-- Errors  -->
	<html:errors bundle="base"/>				
	
	<h1><bean:message bundle="pad" key="pad.objImpEditAdapter.title"/></h1>	
	
	<table class="tablabotones" width="100%">
		<tr>			
			<td align="right">
    			<html:button property="btnVolver"  styleClass="boton" onclick="submitForm('volver', '');">
					<bean:message bundle="base" key="abm.button.volver"/>
				</html:button>
			</td>
		</tr>
	</table>
		
	<!-- ObjImp -->
	<fieldset>
		<legend><bean:message bundle="pad" key="pad.objImp.title"/></legend>
		
		<table class="tabladatos">
			<tr>
				<td><label>(*)&nbsp;<bean:message bundle="def" key="def.tipObjImp.label"/>: </label></td>
				<td class="normal">
					<html:select name="objImpAdapterVO" property="objImp.tipObjImp.id" styleClass="select" onchange="submitForm('paramTipObjImp', '');">
						<html:optionsCollection name="objImpAdapterVO" property="listTipObjImp" label="desTipObjImp" value="id" />
					</html:select>
				</td>
			</tr>
			
			<!-- Fecha Alta-->
			<tr>
				<td><label>(*)&nbsp;<bean:message bundle="pad" key="pad.objImp.fechaAlta.label"/>: </label></td>
				<td class="normal">
					<html:text name="objImpAdapterVO" property="objImp.fechaAltaView" styleId="fechaAltaView" size="15" maxlength="10" styleClass="datos" />
					<a class="link_siat" onclick="return show_calendar('fechaAltaView');" id="a_fechaAltaView">
						<img border="0" src="<%= request.getContextPath()%>/images/calendario.gif"/></a>
				</td>
			</tr>
			
		</table>
	</fieldset>	
	<!-- ObjImp -->
	
	<fieldset>
		<legend><bean:message bundle="pad" key="pad.objImpEditAdapter.atributosObjImp"/></legend>
		
		<logic:notEmpty name="objImpAdapterVO" property="tipObjImpDefinition.listTipObjImpAtrDefinition">
			<table class="tabladatos">
		
				<logic:iterate id="TipObjImpAtrDefinition" name="objImpAdapterVO" property="tipObjImpDefinition.listTipObjImpAtrDefinition" indexId="count">
				
					<bean:define id="AtrVal" name="TipObjImpAtrDefinition"/>
					
					<%@ include file="/def/atrDefinition4Edit.jsp" %>
					
				</logic:iterate>
			</table>
		</logic:notEmpty>
	</fieldset>
	
	<table class="tablabotones" width="100%" >
	   	<tr>
  	   		<td align="left" width="50%">
	   	    	<html:button property="btnVolver" styleClass="boton" onclick="submitForm('volver', '');">
	   	    		<bean:message bundle="base" key="abm.button.volver"/>
	   	    	</html:button>
   	    	</td>
   	    	<td align="right" width="50%">
				<logic:notEmpty name="objImpAdapterVO" property="tipObjImpDefinition.listTipObjImpAtrDefinition">
					<logic:equal name="objImpAdapterVO" property="act" value="modificar">
						<html:button property="btnAceptar"  styleClass="boton" onclick="submitForm('modificar', '');">
							<bean:message bundle="base" key="abm.button.modificar"/>
						</html:button>
					</logic:equal>
					<logic:equal name="objImpAdapterVO" property="act" value="agregar">
						<html:button property="btnAceptar"  styleClass="boton" onclick="submitForm('agregar', '');">
							<bean:message bundle="base" key="abm.button.agregar"/>
						</html:button>
					</logic:equal>
				</logic:notEmpty>	
   	    	</td>   	    	
   	    </tr>
   	</table>
	
	<input type="hidden" name="method" value=""/>
<input type="hidden" name="anonimo" value="<bean:write name="userSession" property="isAnonimoView"/>"/>
<input type="hidden" name="urlReComenzar" value="<bean:write name="userSession" property="urlReComenzar"/>"/>

	<input type="hidden" name="selectedId" value=""/>
	<input type="hidden" name="isSubmittedForm" value="true"/>

	<!-- Inclusion del Codigo Javascript del Calendar-->
	<div id="calendarDiv" style="position:absolute;visibility:hidden;background-color:white;layer-background-color:white;"></div>
</html:form>
<!-- Fin Tabla que contiene todos los formularios -->
