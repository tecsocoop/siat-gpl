//Copyright (c) 2011 Municipalidad de Rosario and Coop. de Trabajo Tecso Ltda.
//This file is part of SIAT. SIAT is licensed under the terms
//of the GNU General Public License, version 3.
//See terms in COPYING file or <http://www.gnu.org/licenses/gpl.txt>

package ar.gov.rosario.siat.gde.iface.model;

import java.util.Date;

import ar.gov.rosario.siat.base.iface.model.SiatBussImageModel;
import ar.gov.rosario.siat.exe.iface.model.ExencionVO;
import coop.tecso.demoda.iface.helper.DateUtil;

/**
 * Value Object del PlanExe
 * @author tecso
 *
 */
public class PlanExeVO extends SiatBussImageModel {

	private static final long serialVersionUID = 1L;

	public static final String NAME = "planExeVO";
	
	private PlanVO plan = new PlanVO();
	private ExencionVO exencion = new ExencionVO();
	private Date fechaDesde;
	private Date fechaHasta;
	
	private String fechaDesdeView = "";
	private String fechaHastaView = "";
	
	// Buss Flags
	
	// View Constants

	// Constructores
	public PlanExeVO() {
		super();
	}

	// Getters y Setters
	public ExencionVO getExencion() {
		return exencion;
	}


	public void setExencion(ExencionVO exencion) {
		this.exencion = exencion;
	}


	public Date getFechaDesde() {
		return fechaDesde;
	}


	public void setFechaDesde(Date fechaDesde) {
		this.fechaDesde = fechaDesde;
		this.fechaDesdeView = DateUtil.formatDate(fechaDesde, DateUtil.ddSMMSYYYY_MASK);
	}


	public Date getFechaHasta() {
		return fechaHasta;
	}


	public void setFechaHasta(Date fechaHasta) {
		this.fechaHasta = fechaHasta;
		this.fechaHastaView = DateUtil.formatDate(fechaHasta, DateUtil.ddSMMSYYYY_MASK);
	}


	public PlanVO getPlan() {
		return plan;
	}


	public void setPlan(PlanVO plan) {
		this.plan = plan;
	}
	
	
	
	// Buss flags getters y setters
	
	
	// View flags getters
	
	
	// View getters
	public void setFechaDesdeView(String fechaDesdeView) {
		this.fechaDesdeView = fechaDesdeView;
	}
	public String getFechaDesdeView() {
		return fechaDesdeView;
	}

	public void setFechaHastaView(String fechaHastaView) {
		this.fechaHastaView = fechaHastaView;
	}
	public String getFechaHastaView() {
		return fechaHastaView;
	}

}
