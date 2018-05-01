<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="<%=request.getContextPath()%>/theme/text.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/theme/chromestyle2.css" />
<link href="<%=request.getContextPath()%>/theme/Master.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/chrome.js"></script>
</head>
	<%
	if (session.getAttribute("")  == null ){
	%>
	<jsp:forward page="/jsp/authentication/index.jsp"/>
	<%
	}else{
	%>

<BODY background="<%=request.getContextPath()%>/images/bg_main.gif"  bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table border="0" cellpadding="0" cellspacing="1" bgcolor="#000000" width="100%" valign="top">

	<tr bgcolor="FE000C" valign="top" align="left">
		<td height="17"  bgcolor="cd0504" style="padding-left:5px;padding-top:3px;"><span class="head1"><bean:message bundle="view" key="application.header.welcome" /></span><span class="yellow10Bold">

	<bean:write name="USER_INFO" property="loginName" />
	</span></td>
	<td height="17" align="right" bgcolor="cd0504" style="padding-right:5px;">
		<span class="white10" id="clock"><SCRIPT language="javascript" src="<%=request.getContextPath()%>/scripts/DateTime.js"></SCRIPT> <SCRIPT>getthedate();dateTime();</SCRIPT></span></td>
	</tr>


	<tr bgcolor="#FFFFFF">
		<td width="167" rowspan="2" align="left" height="90" valign="top"><img src="<%=request.getContextPath()%>/images/pic01_1.jpg" width="167" height="90"></td>
    	<td height="19" align="left" valign="center" bgcolor="#FE000C" >
    <div class="chromestyle" id="chromemenu">

		<ul>
		<logic:notEmpty property="arrSysAdminLinks" name="AuthenticationFormBean">
			<li><a href="#" rel="dropmenu1"><img src="<%=request.getContextPath()%>/images/menu1.gif" width="146" height="19" border="0"></a></li>
		</logic:notEmpty>
		<logic:notEmpty property="arrSysConfigLinks" name="AuthenticationFormBean">
			<li><a href="#" rel="dropmenu2"><img src="<%=request.getContextPath()%>/images/menu2.gif" width="140" height="19" border="0"></a></li>
		</logic:notEmpty>
		<logic:notEmpty property="arrAcctMgmtLinks" name="AuthenticationFormBean">	
			<li><a href="#" rel="dropmenu3"><img src="<%=request.getContextPath()%>/images/menu3.gif" width="140" height="19" border="0"></a></li>
		</logic:notEmpty>
		<logic:notEmpty property="arrMoneyTranLinks" name="AuthenticationFormBean">		
			<li><a href="#" rel="dropmenu4"><img src="<%=request.getContextPath()%>/images/menu4.gif" width="129" height="19" border="0"></a></li>
		</logic:notEmpty>
		<logic:notEmpty property="arrUssdActvLinks" name="AuthenticationFormBean">	
			<li><a href="#" rel="dropmenu0"><img src="<%=request.getContextPath()%>/images/menu05.gif" width="111" height="19" border="0"></a></li>
		</logic:notEmpty>
		<logic:notEmpty property="arrReportLinks" name="AuthenticationFormBean">	
			<li><a href="#" rel="dropmenu5"><img src="<%=request.getContextPath()%>/images/menu06.gif" width="85" height="19" border="0"></a></li>
		</logic:notEmpty>
		</ul>
	</div>

                                            
	<div id="dropmenu1" class="dropmenudiv">
	<logic:notEmpty property="arrSysAdminLinks" name="AuthenticationFormBean">
		<logic:iterate id="link" name="AuthenticationFormBean"
			property="arrSysAdminLinks" indexId="i">
				<a href="#" onclick="menulink('<bean:write name="link" property="linkDisplayUrl" />')"
				title="<bean:write name="link" property="description" />">
				<bean:write name="link" property="linkDisplayLabel" />
			</a>
		</logic:iterate>
	</logic:notEmpty>
		
	</div>

	
	<div id="dropmenu2" class="dropmenudiv" style="width: 150px;">
	<logic:notEmpty property="arrSysConfigLinks" name="AuthenticationFormBean">
		<logic:iterate id="link" name="AuthenticationFormBean"
			property="arrSysConfigLinks" indexId="i">
				<a href="#" onclick="menulink('<bean:write name="link" property="linkDisplayUrl" />')"
				title="<bean:write name="link" property="description" />">
				<bean:write name="link" property="linkDisplayLabel" />
			</a>
		
		</logic:iterate>
		
	</logic:notEmpty>
		
	</div>

	
	<div id="dropmenu3" class="dropmenudiv" style="width: 150px;">
	<logic:notEmpty property="arrAcctMgmtLinks" name="AuthenticationFormBean">	
		<logic:iterate id="link" name="AuthenticationFormBean" property="arrAcctMgmtLinks" indexId="i">
		<a href="#" onclick="menulink('<bean:write name="link" property="linkDisplayUrl" />')"
		title="<bean:write name="link" property="description" />">
				<bean:write name="link" property="linkDisplayLabel" />
			</a>
		</logic:iterate>
	</logic:notEmpty>
	</div>

	
	<div id="dropmenu4" class="dropmenudiv" style="width: 150px;">
	<logic:notEmpty property="arrMoneyTranLinks" name="AuthenticationFormBean">		
		<logic:iterate id="link" name="AuthenticationFormBean"
			property="arrMoneyTranLinks" indexId="i">
			<a href="#" onclick="menulink('<bean:write name="link" property="linkDisplayUrl" />')"
			title="<bean:write name="link" property="description" />">
				<bean:write name="link" property="linkDisplayLabel" />
			</a>
		</logic:iterate>
	</logic:notEmpty>
	</div>

	

	<div id="dropmenu0" class="dropmenudiv">
	<logic:notEmpty property="arrUssdActvLinks" name="AuthenticationFormBean">
		<logic:iterate id="link" name="AuthenticationFormBean" 
			property="arrUssdActvLinks" indexId="i">
			<a href="#" onclick="menulink('<bean:write name="link" property="linkDisplayUrl" />')"
			title="<bean:write name="link" property="description" />">
				<bean:write name="link" property="linkDisplayLabel" />
			</a>
		</logic:iterate>
	</logic:notEmpty>
	</div>

	<div id="dropmenu5" class="dropmenudiv">
	<logic:notEmpty property="arrReportLinks" name="AuthenticationFormBean">
		<logic:iterate id="link" name="AuthenticationFormBean" 
			property="arrReportLinks" indexId="i">
		<a href="#" onclick="menulink('<bean:write name="link" property="linkDisplayUrl" />')"
		title="<bean:write name="link" property="description" />">
				<bean:write name="link" property="linkDisplayLabel" />
			</a>
		</logic:iterate>
	</logic:notEmpty>
	</div>
	
	

</td>
	    </tr>
	<tr bgcolor="#FFFFFF"> 
    <td height="64" align="left" valign="top" background="<%=request.getContextPath()%>/images/t_bg.gif"><img src="<%=request.getContextPath()%>/images/modernTrade.gif" width="556" height="64"></td>
  </tr>
 
</table>
<script>
cssdropdown.startchrome("chromemenu");
</script>
</body>
<%
}
 %>
</html>

