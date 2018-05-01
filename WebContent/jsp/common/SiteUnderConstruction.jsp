<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html:html>
<HEAD>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<META name="GENERATOR" content="IBM Software Development Platform">
<META http-equiv="Content-Style-Type" content="text/css">
<TITLE><bean:message bundle="view" key="application.title" /></TITLE>
<META http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<LINK href="<%=request.getContextPath()%>/theme/text.css" rel="stylesheet" type="text/css">
<LINK rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/theme/chromestyle2.css" />
<SCRIPT type="text/javascript" src="<%=request.getContextPath()%>/scripts/chrome.js"></SCRIPT>
</HEAD>
<BODY background="<%=request.getContextPath()%>/images/bg_main.gif"  bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">

<TABLE cellspacing="0" cellpadding="0" border="0" width="100%"
	height="100%" valign="top">
	<TR valign="top">
		<TD width="167" align="left" bgcolor="b4d2e7" valign="top"
			height="100%"><jsp:include page="../common/leftHeader.jsp" flush="" /></TD>
		<TD width="100%" align="center"><IMG src="<%=request.getContextPath()%>/images/underconstruction.jpg"
					width="100%" height="100%" alt=""></TD></TR>
	<TR align="center">				
		<TD width="70" align="center"><a href="<%=request.getContextPath()%>/jsp/report/getPCCSummaryReport.jsp">Back</a></TD>			
	</TR>
	<TR align="center" bgcolor="4477bb" valign="top">
		<TD colspan="2" height="17" align="center"><jsp:include
			page="../common/footer.jsp" flush="" /></TD>
	</TR>
</TABLE>

</BODY>
</html:html>
