<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<script type="text/javascript" language="javascript">			   
   	    <%@include file="/base/submitForm.js"%>	 
</script>

	<!-- Tabla que contiene todos los formularios -->
	<html:form styleId="filter" action="/def/AdministrarRecCon.do">

		<!-- Mensajes y/o Advertencias -->
		<%@ include file="/base/warning.jsp" %>
		<!-- Errors  -->
		<html:errors bundle="base"/>
		
		<h1><bean:message bundle="def" key="def.recursoAdapter.title"/></h1>		
		<table class="tablabotones" width="100%">
			<tr>			
				<td align="right">
	    			<html:button property="btnVolver"  styleClass="boton" onclick="submitForm('volver', '');">
						<bean:message bundle="base" key="abm.button.volver"/>
					</html:button>
				</td>
			</tr>
		</table>

		<!-- Datos del Recurso  -->
		<fieldset>
			<legend><bean:message bundle="def" key="def.recurso.title"/></legend>			
			<table class="tabladatos">
				<tr>
					<!-- Tipo de Categoria -->										
					<td align="right"><label><bean:message bundle="def" key="def.categoria.tipo.label"/>:</label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.recurso.categoria.tipo.desTipo"/></td>
					<!-- Categoria -->										
					<td align="right"><label><bean:message bundle="def" key="def.categoria.label"/>:</label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.recurso.categoria.desCategoria"/></td>
				</tr>
				<tr>
					<!-- Codigo -->
					<td align="right"><label><bean:message bundle="def" key="def.recurso.codRecurso.label"/>:</label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.recurso.codRecurso"/></td>
					<!-- Descripcion -->
					<td align="right"><label><bean:message bundle="def" key="def.recurso.desRecurso.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.recurso.desRecurso"/></td>					
				</tr>
			</table>
		</fieldset>
		<!-- Fin Datos del Recurso -->
	
	<!-- RecCon -->
		<fieldset>
			<legend><bean:message bundle="def" key="def.recCon.title"/></legend>			
			<table class="tabladatos">
				<tr>
					<td><label><bean:message bundle="def" key="def.recCon.codRecCon.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.codRecCon"/></td>
					<td><label><bean:message bundle="def" key="def.recCon.desRecCon.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.desRecCon"/></td>				
				</tr>
				<tr>
					<td><label><bean:message bundle="def" key="def.recCon.abrRecCon.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.abrRecCon"/></td>
					<td><label><bean:message bundle="def" key="def.recCon.porcentaje.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.porcentajeView"/>%</td>					
				</tr>	
				<tr>
					<td><label><bean:message bundle="def" key="def.recCon.incrementa.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.incrementa.value"/></td>							
					<td><label><bean:message bundle="def" key="def.recCon.esVisible.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.esVisible.value"/></td>							
				</tr>		
				<tr>
					<td><label><bean:message bundle="def" key="def.recCon.ordenVisualizacion.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.ordenVisualizacionView"/></td>
				</tr>
				<tr>
					<td><label><bean:message bundle="def" key="def.recCon.fechaDesde.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.fechaDesdeView"/></td>
					<td><label><bean:message bundle="def" key="def.recCon.fechaHasta.label"/>: </label></td>
					<td class="normal"><bean:write name="recConAdapterVO" property="recCon.fechaHastaView"/></td>
				</tr>		
			</table>
		</fieldset>
		<!-- Fin RecCon -->

		<table class="tablabotones" width="100%">
			<tr>				
				<td align="left">
	    			<html:button property="btnVolver"  styleClass="boton" onclick="submitForm('volver', '');">
						<bean:message bundle="base" key="abm.button.volver"/>
					</html:button>
				</td>
	   	    	<td align="right" width="50%">
					<logic:equal name="recConAdapterVO" property="act" value="eliminar">
						<html:button property="btnAccionBase"  styleClass="boton" onclick="submitForm('eliminar', '');">
							<bean:message bundle="base" key="abm.button.eliminar"/>
						</html:button>
					</logic:equal>
				</td>
 			</tr>
		</table>
		<input type="hidden" name="method" value=""/>
<input type="hidden" name="anonimo" value="<bean:write name="userSession" property="isAnonimoView"/>"/>
<input type="hidden" name="urlReComenzar" value="<bean:write name="userSession" property="urlReComenzar"/>"/>

		<input type="hidden" name="selectedId" value=""/>
		<input type="hidden" name="isSubmittedForm" value="true"/>
	</html:form>
	<!-- Fin Tabla que contiene todos los formularios -->
		