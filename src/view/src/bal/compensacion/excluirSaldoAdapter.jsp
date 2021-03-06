<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<script type="text/javascript" language="javascript">			   
   	    <%@include file="/base/submitForm.js"%>	 
</script>

	<!-- Tabla que contiene todos los formularios -->
	<html:form styleId="filter" action="/bal/AdministrarSaldoEnCompensacion.do">

		<!-- Mensajes y/o Advertencias -->
		<%@ include file="/base/warning.jsp" %>
		<!-- Errors  -->
		<html:errors bundle="base"/>
		
		<h1><bean:message bundle="bal" key="bal.compensacionAdapter.title"/></h1>		
		<table class="tablabotones" width="100%">
			<tr>			
				<td align="right">
	    			<html:button property="btnVolver"  styleClass="boton" onclick="submitForm('volver', '');">
						<bean:message bundle="base" key="abm.button.volver"/>
					</html:button>
				</td>
			</tr>
		</table>
				
		<!-- SaldoAFavor -->		
		<fieldset>
				<legend><bean:message bundle="bal" key="bal.saldoAFavor.title"/></legend>
				<table class="tabladatos">
				
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.tipoOrigen.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.tipoOrigen.desTipoOrigen"/></td>				
				</tr>
				
				<tr>	
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.area.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.area.desArea"/></td>				
				</tr>
				
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.recurso.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.cuenta.recurso.desRecurso"/></td>				
				</tr>
	
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.cuenta.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.cuenta.numeroCuenta"/></td>				
				</tr>
	
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.descripcion.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.descripcion"/></td>				
				</tr>
	
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.importe.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.importeView"/></td>				
				</tr>
	
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.fechaGeneracion.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.fechaGeneracionView"/></td>				
				</tr>
				
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.cuentaBanco.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.cuentaBanco.desCuentaBanco"/></td>				
				</tr>
	
				<!-- nro comp -->
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.nroComprobante.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.nroComprobante"/></td>				
				</tr>
				<!-- des comp -->
				<tr>
					<td><label><bean:message bundle="bal" key="bal.saldoAFavor.descripcion.label"/>: </label></td>
					<td class="normal"><bean:write name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor.desComprobante"/></td>				
				</tr>
	
				
				<!-- Caso -->
				<!-- Inclucion de CasoView -->
				<tr>
					<td><label><bean:message bundle="cas" key="cas.caso.label"/>: </label></td>
					<td colspan="3">
						<bean:define id="IncludedVO" name="admSaldoEnCompensacionAdapterVO" property="saldoAFavor"/>
						<%@ include file="/cas/caso/includeCasoView.jsp" %>				
					</td>
				</tr>
				<!-- Fin Inclucion de CasoView -->
		
			</table>
		</fieldset>
		<!-- SaldoAFavor -->	
		
		<table class="tablabotones" width="100%">
			<tr>				
				<td align="left">
	    			<html:button property="btnVolver"  styleClass="boton" onclick="submitForm('volver', '');">
						<bean:message bundle="base" key="abm.button.volver"/>
					</html:button>
				</td>
	   	    	<td align="right" width="50%">
					<logic:equal name="admSaldoEnCompensacionAdapterVO" property="act" value="excluirSaldoAFavor">
						<html:button property="btnAccionBase"  styleClass="boton" onclick="submitForm('excluirSaldoAFavor', '');">
							<bean:message bundle="bal" key="bal.compensacionAdapter.adm.button.excluir"/>
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