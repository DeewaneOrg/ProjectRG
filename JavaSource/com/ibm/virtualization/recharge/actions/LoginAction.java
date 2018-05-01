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

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.ibm.appsecure.exception.ValidationException;
import com.ibm.appsecure.service.GSDService;
import com.ibm.virtualization.recharge.beans.AuthenticationFormBean;

/**
 * Controller class for Login with Account Code
 * 
 * @author Paras
 */
public class LoginAction extends Action {


	/* Local Variables */
	private static String AUTHENTICATION_SUCCESS = "loginSuccess";

	private static String AUTHENTICATION_FAILURE = "loginFailure";

	/* Top link lebels from DB VR_LINK_MASTER.TOP_LINK_NAME */
	private static String SYSTEM_CONFIGURATION = "SYSTEM_CONFIGURATION";

	private static String ACCOUNT_MANAGEMENT = "ACCOUNT_MANAGEMENT";

	private static String MONEY_TRANSACTION = "MONEY_TRANSACTION";

	private static String SYSTEM_ADMIN = "SYSTEM_ADMINISTRATION";

	private static String USSD_ADMIN = "USSD_ACTIVATION";

	private static String QUERIES = "QUERIES";

	private static String REPORTS = "REPORTS";

	private static String PASSWORD_EXPIRED = "PasswordExpired";

	/**
	 * This method authenticates a user
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 * @throws Exception
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
			
			AuthenticationFormBean authenticationFormBean=(AuthenticationFormBean) form;
			
			System.out.println(authenticationFormBean.getLoginName());
			System.out.println(authenticationFormBean.getPassword());
			
		return mapping.findForward(AUTHENTICATION_SUCCESS);
 }
}