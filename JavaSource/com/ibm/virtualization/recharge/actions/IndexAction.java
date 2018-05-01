/*****************************************************************************\
 **
 ** Virtualization - Recharge.
 **
 ** Copyright (c) 2007-2008 IBM.
 ** All Rights Reserved
 **
 **
 \****************************************************************************/
package com.ibm.virtualization.recharge.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * Controller class for processing the index page of application
 * 
 * @author Paras
 */
public class IndexAction extends Action {

	

	/* Local Variables */
	private static final String INVALID_SESSION = "invalidSession";

	private static final String DISPLAY_LOGIN = "displayLogin";

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (!request.getSession().isNew()) {
			request.getSession().invalidate();
			return mapping.findForward(INVALID_SESSION);
		}
		return mapping.findForward(DISPLAY_LOGIN);
	}
}
