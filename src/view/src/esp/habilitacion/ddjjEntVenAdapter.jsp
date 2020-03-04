<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<!-- Tabla que contiene todos los formularios -->
<html:form styleId="filter" action="/esp/AdministrarDDJJEntVen.do">
	
	<!-- Mensajes y/o Advertencias -->
	<%@ include file="/base/warning.jsp" %>
	<!-- Errors  -->
	<html:errors bundle="base"/>				
	
	<h1><bean:message bundle="esp" key="esp.ddjjEntVenAdapter.title"/></h1>	

	<table class="tablabotones" width="100%">
		<tr>			
			<td align="right">
	   			<html:button property="btnVolver"  styleClass="boton" onclick="submitForm('volver', '');">
					<bean:message bundle="base" key="abm.button.volver"/>
				</html:button>
			</td>
		</tr>
	</table>
	
	<!-- Habilitacion -->
	<fieldset>
		<legend><bean:message bundle="esp" key="esp.habilitacion.title"/></legend>
		
		<table class="tabladatos">
			<tr>
				<td><label><bean:message bundle="esp" key="esp.habilitacion.numero.label"/>: </label></td>
				<td class="normal"><html:text name="habilitacionAdapterVO" property="habilitacion.numeroView" size="10" maxlength="20"/></td>			
			</tr>
			<tr>
				<td><label><bean:message bundle="esp" key="esp.habilitacion.anio.label"/>: </label></td>
				<td class="normal"><html:text name="habilitacionAdapterVO" property="habilitacion.anioView" size="10" maxlength="4" /></td>
			</tr>
		</table>
	</fieldset>	
	<!-- Habilitacion -->
	
	<table class="tablabotones" width="100%" >
	   	<tr>
  	   		<td align="left" width="50%">
	   	    	<html:button property="btnVolver" styleClass="boton" onclick="submitForm('volver', '');">
	   	    		<bean:message bundle="base" key="abm.button.volver"/>
	   	    	</html:button>
   	    	</td>
   	    	<td align="right" width="50%">
				<html:button property="btnAceptar"  styleClass="boton" onclick="submitForm('seleccionar', '');">
					<bean:message bundle="base" key="abm.button.seleccionar"/>
				</html:button>
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