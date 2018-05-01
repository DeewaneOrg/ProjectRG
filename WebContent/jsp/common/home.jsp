<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html:html>
<head>
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="<%=request.getContextPath()%>/theme/text.css" rel="stylesheet" type="text/css">
<title><bean:message bundle="view" key="application.title" /></title>
</head>
<BODY background="<%=request.getContextPath()%>/images/bg_main.gif"  bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
	
	<table cellspacing="0" cellpadding="0" border="0" width="100%" height="100%" valign="top">
		<tr>
			<td colspan="2" valign="top" width="100%">test data</td>
		</tr>
		<tr valign="top">
			<td width="167" align="left" bgcolor="b4d2e7" valign="top" height="100%"><jsp:include page="leftHeader.jsp" /></td>
			<td valign="top" width="100%" height="100%"><br><br><br><FONT face="arial" class="text pLeft15" color="RED"><STRONG>
			<html:errors bundle="error" /><html:errors /></STRONG></FONT>
			</td>
	</tr>
	<tr align="center" bgcolor="4477bb" valign="top"> 
          <td colspan="2" height="17" align="center"><jsp:include page="../common/footer.jsp" /></td>
		</tr>
	</table>

</BODY>
</html:html>