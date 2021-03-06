//Copyright (c) 2011 Municipalidad de Rosario and Coop. de Trabajo Tecso Ltda.
//This file is part of SIAT. SIAT is licensed under the terms
//of the GNU General Public License, version 3.
//See terms in COPYING file or <http://www.gnu.org/licenses/gpl.txt>

package ar.gov.rosario.siat.rec.iface.model;

import ar.gov.rosario.siat.base.iface.model.SiatAdapterModel;
import ar.gov.rosario.siat.rec.iface.util.RecSecurityConstants;

/**
 * Adapter del ObrRepVen
 * 
 * @author tecso
 */
public class ObrRepVenAdapter extends SiatAdapterModel{
	
	private static final long serialVersionUID = 1L;
	
	public static final String NAME = "obrRepVenAdapterVO";
	
    private ObrRepVenVO obrRepVen = new ObrRepVenVO();
    
    // Constructores
    public ObrRepVenAdapter(){
    	super(RecSecurityConstants.ABM_OBRREPVEN);
    }
    
    //  Getters y Setters
	public ObrRepVenVO getObrRepVen() {
		return obrRepVen;
	}

	public void setObrRepVen(ObrRepVenVO obrRepVenVO) {
		this.obrRepVen = obrRepVenVO;
	}

	// View getters
}
