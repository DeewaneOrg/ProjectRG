package com.ibm.virtualization.recharge.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.ascients.service.impl.PCCSummaryServiceImpl;
import com.ibm.virtualization.recharge.beans.PCCSummaryFormBean;

public class PCCSummaryAction extends DispatchAction{

	public ActionForward init(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		return mapping.findForward("pcc_summary_report");
  }
	
	
	
	
	public ActionForward getViewSysConfig(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			
			PCCSummaryFormBean pccSummaryFormBean=(PCCSummaryFormBean) form;
			pccSummaryFormBean.setPccSummaryList(new PCCSummaryServiceImpl().getPCCSummaryDetails());
		return mapping.findForward("pcc_summary_report");
  }
	
}
