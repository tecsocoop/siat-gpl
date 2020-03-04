<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<!-- Tabla que contiene todos los formularios -->
<html:form styleId="filter" action="/gde/BuscarLiqCom.do">

	<!-- Mensajes y/o Advertencias -->
	<%@ include file="/base/warning.jsp" %>
	<!-- Errors  -->
	<html:errors bundle="base"/>
		
	<!-- Busqueda de Recuso -->
	<span id="blockBusqueda" style="display:none"> 
		<bean:define id="adapterVO" name="liqComSearchPageVO"/>
		<bean:define id="poseeParam" value="true" />
		<%@ include file="/def/gravamen/includeRecursoSearch.jsp" %>
	</span>

	<span id="blockSimple" style="display:block">
		
		<h1><bean:message bundle="gde" key="gde.liqComSearchPage.title"/></h1>	
			
		<p>
			<logic:equal name="liqComSearchPageVO" property="modoSeleccionar" value="true">
				<bean:message bundle="base" key="base.busquedaLegendBusqueda"/>
				<bean:message bundle="gde" key="gde.liqCom.label"/>
			</logic:equal>
			<logic:notEqual name="liqComSearchPageVO" property="modoSeleccionar" value="true">
				<bean:message bundle="gde" key="gde.liqComSearchPage.legend"/>
			</logic:notEqual>		
		</p>
		<table class="tablabotones" width="100%">
			<tr>
				<td align="right"><html:button property="btnVolver"
					styleClass="boton" onclick="submitForm('volver', '');">
					<bean:message bundle="base" key="abm.button.volver" />
				</html:button></td>
			</tr>
		</table>
		<!-- Filtro -->
		<fieldset>
		<legend><bean:message bundle="base" key="base.parametrosBusqueda"/></legend>
			<table class="tabladatos">
			
			<!-- ServicioBanco -->
			<tr>	
				<td><label><bean:message bundle="def" key="def.servicioBanco.label"/>: </label></td>
				<td class="normal" colspan="3">
					<html:select name="liqComSearchPageVO" property="liqCom.servicioBanco.id" styleClass="select" onchange="submitForm('paramServicioBanco', '');" styleId="cboServicioBanco">
						<html:optionsCollection name="liqComSearchPageVO" property="listServicioBanco" label="desServicioBanco" value="id" />
					</html:select>
				</td>					
			</tr>
			
			<!-- Recurso -->
			<tr>	
				<td><label><bean:message bundle="def" key="def.recurso.label"/>: </label></td>
				<td class="normal" colspan="3">
					<html:select name="liqComSearchPageVO" property="liqCom.recurso.id" styleClass="select" onchange="submitForm('paramRecurso', '');" styleId="cboRecurso" style="width:90%">
						<html:optionsCollection name="liqComSearchPageVO" property="listRecurso" label="desRecurso" value="id" />
					</html:select>
					
					<a onclick="toggleSearchRecurso('blockSimple', 'blockBusqueda'); setFocus('recursoFilter');" >
						<img title='<bean:message bundle="def" key="def.recurso.filtro.button.busqueda"/>' border="0" 
						src="<%=request.getContextPath()%>/images/iconos/lupita.gif" width="20" height="20">
					</a>
					
				</td>					
			</tr>
			
			<!-- Procurador -->
			<tr>	
				<td><label><bean:message bundle="gde" key="gde.procurador.label"/>: </label></td>
				<td class="normal">
					<html:select name="liqComSearchPageVO" property="liqCom.procurador.id" styleClass="select">
						<html:optionsCollection name="liqComSearchPageVO" property="listProcurador" label="descripcion" value="id" />
					</html:select>
				</td>					
			
			<!-- EstadoCorrida -->
				<td><label><bean:message bundle="gde" key="gde.liqComSearchPage.estadoCorrida.label"/>: </label></td>
				<td class="normal">
					<html:select name="liqComSearchPageVO" property="liqCom.corrida.estadoCorrida.id" styleClass="select">
						<html:optionsCollection name="liqComSearchPageVO" property="listEstadoCorrida" label="desEstadoCorrida" value="id" />
					</html:select>
				</td>					
			</tr>
			
			<!-- fecha Liq Desde -->
			<tr>
				<td><label><bean:message bundle="gde" key="gde.liqComSearchPage.fechaLiqDesde.label"/>: </label></td>
				<td class="normal">
					<html:text name="liqComSearchPageVO" property="fechaLiqDesdeView" styleId="fechaLiqDesdeView" size="15" maxlength="10" styleClass="datos" />
					<a class="link_siat" onclick="return show_calendar('fechaLiqDesdeView');" id="a_fechaLiqDesdeView">
						<img border="0" src="<%= request.getContextPath()%>/images/calendario.gif"/></a>
				</td>
				
			<!-- Fecha Liq. Hasta -->	
				<td><label><bean:message bundle="gde" key="gde.liqComSearchPage.fechaLiqHasta.label"/>: </label></td>
				<td class="normal">
					<html:text name="liqComSearchPageVO" property="fechaLiqHastaView" styleId="fechaLiqHastaView" size="15" maxlength="10" styleClass="datos" />
					<a class="link_siat" onclick="return show_calendar('fechaLiqHastaView');" id="a_fechaLiqHastaView">
						<img border="0" src="<%= request.getContextPath()%>/images/calendario.gif"/></a>
				</td>
			</tr>
			
				<!-- <#Filtros#> -->
			</table>
				
			<p align="center">
			  	<html:button property="btnLimpiar"  styleClass="boton" onclick="submitForm('limpiar', '');">
					<bean:message bundle="base" key="abm.button.limpiar"/>
				</html:button>
				&nbsp;
			  	<html:button property="btnBuscar"  styleClass="boton" onclick="submitForm('buscar', '');">
					<bean:message bundle="base" key="abm.button.buscar"/>
				</html:button>
			</p>
		</fieldset>	
		<!-- Fin Filtro -->
			
		<!-- Resultado Filtro -->
		<div id="resultadoFiltro">
			<logic:equal name="liqComSearchPageVO" property="viewResult" value="true">
				<logic:notEmpty  name="liqComSearchPageVO" property="listResult">	
					<table class="tramonline" border="0" cellpadding="0" cellspacing="1" width="100%">
						<caption><bean:message bundle="base" key="base.resultadoBusqueda"/></caption>
		               	<tbody>
			               	<tr>
								<th width="1">&nbsp;</th> <!-- Ver/Seleccionar -->
								<logic:notEqual name="liqComSearchPageVO" property="modoSeleccionar" value="true">
									<th width="1">&nbsp;</th> <!-- Modificar -->
									<th width="1">&nbsp;</th> <!-- Eliminar -->
									<th width="1">&nbsp;</th> <!-- ADM proceso -->
								</logic:notEqual>
								<th align="left"><bean:message bundle="gde" key="gde.liqCom.fechaLiquidacion.label"/></th>
								<th align="left"><bean:message bundle="gde" key="gde.liqComSearchPage.servicioBancoRecurso.label"/></th>
								<th align="left"><bean:message bundle="gde" key="gde.procurador.label"/></th>
								<th align="left"><bean:message bundle="base" key="base.estado.label"/></th>
							</tr>
								
							<logic:iterate id="LiqComVO" name="liqComSearchPageVO" property="listResult">
								<tr>
									<!-- Seleccionar -->
									<logic:equal name="liqComSearchPageVO" property="modoSeleccionar" value="true">
										<td>	
											<a style="cursor: pointer; cursor: hand;" onclick="submitForm('seleccionar', '<bean:write name="LiqComVO" property="id" bundle="base" formatKey="general.format.id"/>');">
												<img title="<bean:message bundle="base" key="abm.button.seleccionar"/>" border="0" src="<%=request.getContextPath()%>/images/iconos/selec0.gif"/>
											</a>
										</td>
									</logic:equal>									
									<logic:notEqual name="liqComSearchPageVO" property="modoSeleccionar" value="true">
										<!-- Ver -->
										<td>
											<logic:equal name="liqComSearchPageVO" property="verEnabled" value="enabled">									
												<a style="cursor: pointer; cursor: hand;" onclick="submitForm('ver', '<bean:write name="LiqComVO" property="id" bundle="base" formatKey="general.format.id"/>');">
													<img title="<bean:message bundle="base" key="abm.button.ver"/>" border="0" src="<%=request.getContextPath()%>/images/iconos/selec0.gif"/>
												</a>
											</logic:equal>
											<logic:notEqual name="LiqComVO" property="verEnabled" value="enabled">
												<img border="0" src="<%=request.getContextPath()%>/images/iconos/selec1.gif"/>
											</logic:notEqual>
										</td>	
										<!-- Modificar-->								
										<td>
											<logic:equal name="liqComSearchPageVO" property="modificarEnabled" value="enabled">
												<logic:equal name="LiqComVO" property="modificarEnabled" value="enabled">
													<a style="cursor: pointer; cursor: hand;" onclick="submitForm('modificar', '<bean:write name="LiqComVO" property="id" bundle="base" formatKey="general.format.id"/>');">
														<img title="<bean:message bundle="base" key="abm.button.modificar"/>" border="0" src="<%=request.getContextPath()%>/images/iconos/modif0.gif"/>
													</a>
												</logic:equal>
												<logic:notEqual name="LiqComVO" property="modificarEnabled" value="enabled">
													<img border="0" src="<%=request.getContextPath()%>/images/iconos/modif1.gif"/>
												</logic:notEqual>
											</logic:equal>
											<logic:notEqual name="liqComSearchPageVO" property="modificarEnabled" value="enabled">
												<img border="0" src="<%=request.getContextPath()%>/images/iconos/modif1.gif"/>
											</logic:notEqual>
										</td>
		
										<!-- Eliminar-->								
										<td>
											<logic:equal name="liqComSearchPageVO" property="eliminarEnabled" value="enabled">
												<logic:equal name="LiqComVO" property="eliminarBussEnabled" value="true">
													<a style="cursor: pointer; cursor: hand;" onclick="submitForm('eliminar', '<bean:write name="LiqComVO" property="id" bundle="base" formatKey="general.format.id"/>');">
														<img title="<bean:message bundle="base" key="abm.button.eliminar"/>" border="0" src="<%=request.getContextPath()%>/images/iconos/eliminar0.gif"/>
													</a>
												</logic:equal>	
												<logic:notEqual name="LiqComVO" property="eliminarBussEnabled" value="true">
													<img border="0" src="<%=request.getContextPath()%>/images/iconos/eliminar1.gif"/>
												</logic:notEqual>
											</logic:equal>
											<logic:notEqual name="liqComSearchPageVO" property="eliminarEnabled" value="enabled">										
												<img border="0" src="<%=request.getContextPath()%>/images/iconos/eliminar1.gif"/>
											</logic:notEqual>
										</td>
										<!-- Accion administrarProceso -->
										<td>
											<logic:equal name="liqComSearchPageVO" property="administrarProcesoEnabled" value="enabled">
												<logic:equal name="LiqComVO" property="administrarProcesoBussEnabled" value="true">
													<a style="cursor: pointer; cursor: hand;" onclick="submitForm('administrarProceso', '<bean:write name="LiqComVO" property="id" bundle="base" formatKey="general.format.id"/>');">
														<img title="<bean:message bundle="gde" key="gde.liqComSearchPage.button.administrarProceso"/>" border="0" src="<%=request.getContextPath()%>/images/iconos/admProceso0.gif"/>
													</a>
												</logic:equal>
												<logic:notEqual name="LiqComVO" property="administrarProcesoBussEnabled" value="true">
													<img border="0" src="<%=request.getContextPath()%>/images/iconos/admProceso1.gif"/>
												</logic:notEqual>
											</logic:equal>
											<logic:notEqual name="liqComSearchPageVO" property="administrarProcesoEnabled" value="enabled">
												<img border="0" src="<%=request.getContextPath()%>/images/iconos/admProceso1.gif"/>
											</logic:notEqual>
										</td>
	
									</logic:notEqual>
									<td><bean:write name="LiqComVO" property="fechaLiquidacionView" />&nbsp;</td>
									<logic:equal name="LiqComVO" property="porServicioBanco" value="true">
										<td><bean:write name="LiqComVO" property="servicioBanco.desServicioBanco" />&nbsp;</td>
									</logic:equal>
									<logic:equal name="LiqComVO" property="porServicioBanco" value="false">
										<td><bean:write name="LiqComVO" property="recurso.desRecurso" />&nbsp;</td>
									</logic:equal>
									<td><bean:write name="LiqComVO" property="procurador.descripcion" />&nbsp;</td>
									<td><bean:write name="LiqComVO" property="corrida.estadoCorrida.desEstadoCorrida" />&nbsp;</td>
									<!-- <#ColumnFiedls#> -->
								</tr>
							</logic:iterate>
					
							<tr>
								<td class="paginador" align="center" colspan="20">
									<bean:define id="pager" name="liqComSearchPageVO"/>
									<%@ include file="/base/pager.jsp" %>
								</td>
							</tr>
							
						</tbody>
					</table>
				</logic:notEmpty>
				
				<logic:empty name="liqComSearchPageVO" property="listResult">
					<table class="tramonline" border="0" cellpadding="0" cellspacing="1" width="100%">
						<caption><bean:message bundle="base" key="base.resultadoBusqueda"/></caption>
	                	<tbody>
							<tr><td align="center">
								<bean:message bundle="base" key="base.resultadoVacio"/>
							</td></tr>
						</tbody>			
					</table>
				</logic:empty>
			</logic:equal>			
		</div>
		<!-- Fin Resultado Filtro -->
	
		<table class="tablabotones">
			<tr>				
				<td align="left">
	    			<html:button property="btnVolver"  styleClass="boton" onclick="submitForm('volver', '');">
						<bean:message bundle="base" key="abm.button.volver"/>
					</html:button>
				</td>
				<logic:equal name="liqComSearchPageVO" property="viewResult" value="true">
	  	    		<td align="right">
	  	    			<logic:equal name="liqComSearchPageVO" property="modoSeleccionar" value="false">
							<bean:define id="agregarEnabled" name="liqComSearchPageVO" property="agregarEnabled"/>
							<input type="button" <%=agregarEnabled%> class="boton" 
								onClick="submitForm('agregar', '0');" 
								value="<bean:message bundle="base" key="abm.button.agregar"/>"/>
						</logic:equal>
	  	    			<logic:equal name="liqComSearchPageVO" property="modoSeleccionar" value="true">
	  	    				<logic:equal name="liqComSearchPageVO" property="agregarEnSeleccion" value="true">
								<bean:define id="agregarEnabled" name="liqComSearchPageVO" property="agregarEnabled"/>
								<input type="button" <%=agregarEnabled%> class="boton" 
									onClick="submitForm('agregar', '0');" 
									value="<bean:message bundle="base" key="abm.button.agregar"/>"/>
								</logic:equal>
						</logic:equal>
					</td>
				</logic:equal>
			</tr>
		</table>

	</span>
		
	<input type="hidden" name="method" value=""/>
    <input type="hidden" name="anonimo" value="<bean:write name="userSession" property="isAnonimoView"/>"/>
    <input type="hidden" name="urlReComenzar" value="<bean:write name="userSession" property="urlReComenzar"/>"/>

	<input type="hidden" name="selectedId" value=""/>
	<input type="hidden" name="pageNumber" value="1" id="pageNumber">
	<input type="hidden" name="pageMethod" value="buscar" id="pageMethod">
	<input type="hidden" name="isSubmittedForm" value="true"/>

	<!-- Inclusion del Codigo Javascript del Calendar-->
	<div id="calendarDiv" style="position:absolute;visibility:hidden;background-color:white;layer-background-color:white;"></div>		
</html:form>
<!-- Fin Tabla que contiene todos los formularios -->
