<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<!-- Tabla que contiene todos los formularios -->
<html:form styleId="filter" action="/cyq/AdministrarPagoPriv.do">
	
	<!-- Mensajes y/o Advertencias -->
	<%@ include file="/base/warning.jsp" %>
	<!-- Errors  -->
	<html:errors bundle="base"/>				
	
	<h1><bean:message bundle="cyq" key="cyq.pagoPrivEditAdapter.title"/></h1>	

	<table class="tablabotones" width="100%">
		<tr>			
			<td align="right">
	   			<html:button property="btnVolver"  styleClass="boton" onclick="submitForm('volver', '');">
					<bean:message bundle="base" key="abm.button.volver"/>
				</html:button>
			</td>
		</tr>
	</table>
	
	<!-- PagoPriv -->
	<fieldset>
		<legend><bean:message bundle="cyq" key="cyq.pagoPriv.title"/></legend>
		
		<table class="tabladatos">
			
			<!-- Procedimiento -->
			<tr>
				<td>
					<label><bean:message bundle="cyq" key="cyq.procedimiento.label"/>: </label>
				</td>
				<td class="normal">	
					<bean:write name="pagoPrivAdapterVO" property="pagoPriv.procedimiento.numeroView"/> /
					<bean:write name="pagoPrivAdapterVO" property="pagoPriv.procedimiento.anioView"/>
				</td>
			</tr>
			
			
			<!-- TipoCancelacion -->
			<tr>
				<td><label><bean:message bundle="cyq" key="cyq.pagoPriv.tipoCancelacion.label"/>: </label></td>
				<td class="normal">
					<bean:write name="pagoPrivAdapterVO" property="pagoPriv.tipoCancelacion.value"/>
				</td>			
			</tr>
			
			<!-- TRANSFERENCIA -->
			<logic:equal name="pagoPrivAdapterVO" property="pagoPriv.tipoCancelacion.id" value="1" >
				<!-- CuentaBanco -->
				<tr>
					<td><label><bean:message bundle="bal" key="bal.cuentaBanco.label"/>: </label></td>
					<td class="normal" colspan="3">
						<bean:write name="pagoPrivAdapterVO" property="pagoPriv.cuentaBanco.nroCuenta"/>
					</td>
				</tr>
				<!-- fecha -->
				<tr>
					<td><label><bean:message bundle="cyq" key="cyq.pagoPriv.fecha.label"/>: </label></td>
					<td class="normal">
						<bean:write name="pagoPrivAdapterVO" property="pagoPriv.fechaView"/>
					</td>
				</tr>
				<!-- descripcion -->
				<tr>
					<td><label><bean:message bundle="cyq" key="cyq.pagoPriv.descripcion.label"/>: </label></td>
					<td class="normal">
						<bean:write name="pagoPrivAdapterVO" property="pagoPriv.descripcion"/>
					</td>			
				</tr>
				<!-- importe -->
				<tr>
					<td><label><bean:message bundle="cyq" key="cyq.pagoPriv.importe.label"/>: </label></td>
					<td class="normal">
						<bean:write name="pagoPrivAdapterVO" property="pagoPriv.importeView"/>
					</td>			
				</tr>
			</logic:equal>

			<!-- Otros -->
			<logic:notEqual name="pagoPrivAdapterVO" property="pagoPriv.tipoCancelacion.id" value="1" >
				<!-- fecha -->
				<tr>
					<td><label><bean:message bundle="cyq" key="cyq.pagoPriv.fecha.label"/>: </label></td>
					<td class="normal">
						<bean:write name="pagoPrivAdapterVO" property="pagoPriv.fechaView"/>
					</td>
				</tr>
				<!-- descripcion -->
				<tr>
					<td><label><bean:message bundle="cyq" key="cyq.pagoPriv.descripcion.label"/>: </label></td>
					<td class="normal">
						<bean:write name="pagoPrivAdapterVO" property="pagoPriv.descripcion"/>
					</td>			
				</tr>				
			</logic:notEqual>
			
			
			<tr>
				<td><label><bean:message bundle="cyq" key="cyq.pagoPriv.nroRecibo.label"/>: </label></td>
				<td class="normal">
					<bean:write name="pagoPrivAdapterVO" property="pagoPriv.nroReciboView"/>
				</td>			
			</tr>
			
			<!-- <#Campos#> -->
		</table>
	</fieldset>	
	<!-- PagoPriv -->
	
	<!-- Lista de Deuda -->	
	<div class="horizscroll">
	    <table class="tramonline" border="0" cellpadding="0" cellspacing="1" width="100%">
	    	<caption><bean:message bundle="cyq" key="cyq.liqDeudaCyqAdapter.blokeDeuda.title"/></caption>
	      	<tbody>
		       	<tr>
				  	<th align="left"><bean:message bundle="def" key="def.recurso.label"/></th>
				  	<th align="left"><bean:message bundle="pad" key="pad.cuenta.label"/></th>
				  	<th align="left"><bean:message bundle="cyq" key="cyq.tipoPrivilegioEspecial.label"/></th>
				  	<th align="left"><bean:message bundle="cyq" key="cyq.tipoPrivilegioGeneral.label"/></th>
				  	<th align="left"><bean:message bundle="cyq" key="cyq.tipoPrivilegioQuirografario.label"/></th>
				</tr>
				
				<!-- Item LiqDeudaVO -->
				<logic:iterate id="PagoPrivDeu" name="pagoPrivAdapterVO" property="pagoPriv.listPagoPrivDeu">
					<tr>
			  			<td><bean:write name="PagoPrivDeu" property="deudaPrivilegio.recurso.desRecurso"/> </td>
						<td><bean:write name="PagoPrivDeu" property="deudaPrivilegio.cuenta.numeroCuenta"/> </td>
			  			<!-- Especial -->			  			
			  			<logic:equal name="PagoPrivDeu" property="deudaPrivilegio.tipoPrivilegio.id" value="1">
							<td><b><bean:write name="PagoPrivDeu" property="deudaPrivilegio.importe" bundle="base" formatKey="general.format.currency"/></b></td>
			  				<td>&nbsp;</td><td>&nbsp;</td>
			  			</logic:equal>
			  			<!-- General -->
						<logic:equal name="PagoPrivDeu" property="deudaPrivilegio.tipoPrivilegio.id" value="2">
							<td>&nbsp;</td>
							<td><b><bean:write name="PagoPrivDeu" property="deudaPrivilegio.importe" bundle="base" formatKey="general.format.currency"/></b></td>
			  				<td>&nbsp;</td>
			  			</logic:equal>
			  			<!-- Quiro -->
			  			<logic:equal name="PagoPrivDeu" property="deudaPrivilegio.tipoPrivilegio.id" value="3">
			  				<td>&nbsp;</td><td>&nbsp;</td>
							<td><b><bean:write name="PagoPrivDeu" property="deudaPrivilegio.importe" bundle="base" formatKey="general.format.currency"/></b></td>
			  			</logic:equal>
			       		
			       	</tr>
				</logic:iterate>
				<!-- Fin Item LiqDeudaVO -->
	      	</tbody>
		</table>
	</div>	
	<!-- Fin Lista de Deuda -->
	
	<table class="tablabotones" width="100%" >
	   	<tr>
  	   		<td align="left" width="33%">
	   	    	<html:button property="btnVolver" styleClass="boton" onclick="submitForm('volver', '');">
	   	    		<bean:message bundle="base" key="abm.button.volver"/>
	   	    	</html:button>
   	    	</td>
   	    	
   	    	<td align="center" width="33%">
	   	    	<html:button property="btnImprimir" styleClass="boton" onclick="submitForm('imprimirRecibo', '');">
	   	    		Imprimir Recibo
	   	    	</html:button>
   	    	</td>
   	    	
   	    	<td align="right" width="33%">
	   	    	<html:button property="btnOIT" styleClass="boton" onclick="submitForm('generarOIT', '');">
	   	    		Generar O.I.T.
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
<!-- pagoPrivEditAdapter.jsp -->
