
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<html:html>
<HEAD>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM Software Development Platform">
<META http-equiv="Content-Style-Type" content="text/css">
<link href="<%=request.getContextPath()%>/theme/text.css" rel="stylesheet" type="text/css">
<TITLE><bean:message bundle="view" key="application.title" /></TITLE>
<SCRIPT type="text/javascript" src="<%=request.getContextPath()%>/scripts/validation.js"></SCRIPT>
<script>
function validate()
{
         if(document.forms[0].oldPassword.value.length==0 || document.forms[0].oldPassword.value=="")
          {
            alert('<bean:message bundle="error" key="errors.changepassword.required_oldpassword" />');
            document.forms[0].oldPassword.focus();
            return false;
          }


          if(document.forms[0].newPassword.value.length==0 || document.forms[0].newPassword.value=="")
           {
             alert('<bean:message bundle="error" key="errors.changepassword.required_newpassword" />');
             document.forms[0].newPassword.focus();
             return false;
           }

          if(document.forms[0].confirmPassword.value.length==0 || document.forms[0].confirmPassword.value=="")
          {
           alert('<bean:message bundle="error" key="errors.changepassword.required_confirmpassword" />');
           document.forms[0].confirmPassword.focus();
           return false;
          }
          
         if(document.forms[0].newPassword.value != document.forms[0].confirmPassword.value)
         {
            alert('<bean:message bundle="error" key="errors.changepassword.mismatch" />');
            document.forms[0].oldPassword.value="";
            document.forms[0].newPassword.value="";
            document.forms[0].confirmPassword.value="";
            document.forms[0].oldPassword.focus();
            return false;
         }
         
         if(document.forms[0].newPassword.value == document.forms[0].oldPassword.value)
         {
            alert('<bean:message bundle="error" key="errors.changepassword.samepassword" />');
            document.forms[0].oldPassword.value="";
            document.forms[0].newPassword.value="";
            document.forms[0].confirmPassword.value="";
            document.forms[0].oldPassword.focus();
            return false;
         }

	document.getElementById("methodName").value="changePassword";
   return true;

}
function OpenHelpWindow(url){
		document.submitForm.action=url;
		displayWindow = window.open('', "newWin", "width =800,height= 450, left=50, top=100, scrollbars=yes,resizable=yes, status=yes");
       	document.submitForm.submit();
	}
function checkKeyPressed()
{
	if(window.event.keyCode=="13")
	{
		return validate();
	}
}
</script>
</HEAD>

<BODY background="<%=request.getContextPath()%>/images/bg_main.gif"  bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onkeypress="return checkKeyPressed();">
	
	<table cellspacing="0" cellpadding="0" border="0" width="100%" height="100%" valign="top">
		<tr>
			<td colspan="2" valign="top" width="100%"><jsp:include page="../common/header.jsp" /></td>
		</tr>
		<tr valign="top">
			<td width="167" align="left" bgcolor="b4d2e7" valign="top" height="100%"><jsp:include page="../common/leftHeader.jsp" /></td>
			<td valign="top" width="100%" height="100%">
      	<html:form name="ChangePasswordAction" action="/ChangePasswordAction" type="com.ibm.virtualization.recharge.beans.ChangePasswordFormBean" focus="oldPassword" >
			<html:hidden property="methodName" styleId="methodName" /> 
			<table width="545" border="0" cellpadding="5" cellspacing="0" class="text">
				<tr> 
                <td colspan="4" class="text"><br> <img src="<%=request.getContextPath()%>/images/changePassword.gif" width="505" height="22"></td>
              </tr>
				<TR>
					<TD align="left" class="txt" colspan="4">
						<font color="red"> <html:errors property="validationerror"  /><br><html:errors bundle="error" /></font>
					</TD>
				</TR>

				<tr>
					<td width="25%" class="text pLeft15"><strong><font color="#000000"><bean:message
						bundle="view" key="changepassword.password_old" /></font><FONT COLOR="RED">*</FONT> :</strong></td>
					<td><html:password property="oldPassword" size="19"
						styleClass="box" styleId="oldPassword" maxlength="20" tabindex="1" redisplay="false" /></td>
					<td class="text">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="text pLeft15"><strong><font color="#000000"><bean:message
						bundle="view" key="changepassword.password_new" /></font><FONT COLOR="RED">*</FONT> :</strong></td>
					<td><html:password property="newPassword" size="19"
						styleClass="box" maxlength="20" tabindex="2"  redisplay="false" />
						<a href="#" title="<bean:message bundle="view" key="help.title.status" />"
								onClick="OpenHelpWindow('<%=request.getContextPath()%>/jsp/authentication/helpforpassword.jsp')"><b> ? </b>
							 </a></td>
					<td class="text">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="text pLeft15"><strong><font color="#000000"><bean:message
						bundle="view" key="changepassword.password_confirm" /></font><FONT COLOR="RED">*</FONT> :</strong></td>
					<td><html:password property="confirmPassword" size="19"
						styleClass="box" maxlength="20" tabindex="3" redisplay="false" />
						<a href="#" title="<bean:message bundle="view" key="help.title.status" />"
								onClick="OpenHelpWindow('<%=request.getContextPath()%>/jsp/authentication/helpforpassword.jsp')"><b> ? </b>
							 </a></td>
					<td class="text">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="text pLeft15"><font color="#000000">&nbsp;</font></td>
					<td colspan="3">
					<table width="140" border="0" cellspacing="0" cellpadding="5">
						<tr align="center">
							<td width="70"><html:submit value="Submit"
								styleClass="submit" property="submit" tabindex="4" onclick="return validate();"/></td>
							<td width="70">&nbsp;</td>
							<td width="70"><INPUT class="submit" type="button" onclick="resetAll();"
										name="Submit2" value="Reset" tabindex="5"></TD>
							<td width="70">&nbsp;</td>
						</tr>
						<tr align="center">
							<td colspan="4" align="left"><font color="#ff0000" size="-1"><html:errors bundle="view"  property="message" /></font></td>
						</tr>
						
					</table>
					
		
		</td>
	

	</tr>
	
</table>
</html:form>
<div id="submitFormDiv" style="display:none;">
			<form name="submitForm" method="post" target="newWin">
			</form>	
		</div>
</td>
</tr>

<TR align="center" bgcolor="4477bb" valign="top">
		<TD colspan="2" height="17" align="center"><jsp:include
			page="../common/footer.jsp" flush="" /></TD>
	</TR>
</table>

</BODY>

</html:html>
