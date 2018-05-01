/*****************************************************************************\
 **
 ** Virtualization - Recharge.
 **
 ** Copyright (c) 2007-2008 IBM.
 ** All Rights Reserved
 **
 **
 \****************************************************************************/
package com.ibm.virtualization.recharge.beans;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/**
 * Form Bean class for login Form
 * 
 * @author Paras
 *  
 */
public class AuthenticationFormBean extends ActionForm {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6610171211438811528L;
	private String loginName ;
	private String password ;
	

	/**
	 * @return Returns the loginName.
	 */
	public String getLoginName() {
		return loginName;
	}
	/**
	 * @param loginName The loginName to set.
	 */
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	
	/**
	 * @return Returns the password.
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password The password to set.
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	// this method is used to check blank values from login form  
	public ActionErrors validate(
	        ActionMapping mapping,
	        HttpServletRequest request) {
	 	
	        ActionErrors errors = new ActionErrors();
	        if ((getLoginName()== null)
	                || (getLoginName().trim().equalsIgnoreCase(""))) {
	        
	           errors.add("errors.login.username_required",new ActionError("errors.login.username_required"));
	        }
	        
	        if ((getPassword()== null)
	                || (getPassword().trim().equalsIgnoreCase(""))) {
	        	errors.add("errors.login.password_required",new ActionError("errors.login.password_required"));
	            
	        }
	        return errors;
	    }
	}
