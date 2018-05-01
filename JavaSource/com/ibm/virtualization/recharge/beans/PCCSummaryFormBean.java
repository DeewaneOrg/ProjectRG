package com.ibm.virtualization.recharge.beans;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import com.ascients.dto.PCCSummaryDto;

public class PCCSummaryFormBean extends ActionForm{

	
	private String selectedProjectName;
	
	
	private String selectedSiteId;
	
	private String methodName;
	
	public String getSelectedProjectName() {
		return selectedProjectName;
	}
	public void setSelectedProjectName(String selectedProjectName) {
		this.selectedProjectName = selectedProjectName;
	}
	public String getSelectedSiteId() {
		return selectedSiteId;
	}
	public void setSelectedSiteId(String selectedSiteId) {
		this.selectedSiteId = selectedSiteId;
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ArrayList<PCCSummaryDto> pccSummaryList;
	
	public ArrayList<PCCSummaryDto> getPccSummaryList() {
		return pccSummaryList;
	}
	public void setPccSummaryList(ArrayList<PCCSummaryDto> pccSummaryList) {
		this.pccSummaryList = pccSummaryList;
	}
	public String getMethodName() {
		return methodName;
	}
	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}
	
	
	
	
	
}
