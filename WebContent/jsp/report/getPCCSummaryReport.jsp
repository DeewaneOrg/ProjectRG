<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<html:html>
<HEAD>
<TITLE><bean:message bundle="view" key="application.title" /></TITLE>
<META http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<LINK href="<%=request.getContextPath()%>/theme/text.css" rel="stylesheet" type="text/css">
<LINK rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/theme/chromestyle2.css" />
<SCRIPT type="text/javascript" src="<%=request.getContextPath()%>/scripts/chrome.js"></SCRIPT>
<SCRIPT language="javascript" type="text/javascript">
	
	function viewDetails(){
		   var form = document.forms[0];
	       document.getElementById("methodName").value="getViewSysConfig";
	       form.submit();
	} // function viewDeatils ends


	function checkKeyPressed(){
		if(window.event.keyCode=="13"){
			document.forms[0].submit();
		}
	}

	
	function getProjectSiteId(){
		 document.getElementById("projectSiteDiv").style.display='block';
	}
	
	
	
	
</SCRIPT>
</HEAD>
<BODY background="<%=request.getContextPath()%>/images/bg_main.gif"  bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0" onkeypress="return checkKeyPressed();">

<TABLE cellspacing="0" cellpadding="0" border="0" width="100%"
	height="100%" valign="top">
	<TR>
<%-- 		<TD colspan="2" valign="top" width="100%"><jsp:include --%>
<%-- 			page="../common/header.jsp" flush="" /></TD> --%>
	</TR>
	<TR valign="top">
<!-- 		<TD width="167" align="left" bgcolor="b4d2e7" valign="top" -->
<%-- 			height="100%"><jsp:include page="../common/leftHeader.jsp" flush="" /></TD> --%>
		<TD valign="top" width="100%" height="100%"><html:form
			action="PCCSummaryAction" focus="selectedProjectName">
			
			<TABLE width="545" border="0" cellpadding="5" cellspacing="0"
				class="text">
				<TR>
					<TD colspan="4" class="text"><BR>
					<IMG src="<%=request.getContextPath()%>/images/PCCSummary.gif" width="505" height="22"
						alt=""></TD>
				</TR>
				<TR>
					<TD class="text pLeft15" align="center"><STRONG><bean:message
						bundle="view" key="pccsummary.project_select" /></STRONG>&nbsp;<FONT
						color="RED">*</FONT></TD>
					<TD ><FONT color="#003399"> <html:select
						property="selectedProjectName" styleClass="w165" tabindex="1" onchange="getProjectSiteId()">
						
						<html:option value="0">
							<bean:message key="application.option.select" bundle="view" />
						</html:option>
						<html:option value="1">
							<bean:message key="application.option.select_Taj" bundle="view" />
						</html:option>
						<html:option value="2">
							<bean:message key="application.option.select_Lemon_Tree" bundle="view" />
						</html:option>
					</html:select>
					</FONT></TD>
<!-- 				</TR> -->
<!-- 				<TR id="projectSiteDiv" style="display:block"> -->
				
					<TD class="text pLeft15" align="center"><STRONG><bean:message
						bundle="view" key="pccsummary.site_select" /></STRONG>&nbsp;<FONT
						color="RED">*</FONT></TD>
					<TD ><FONT color="#003399"> <html:select
						property="selectedSiteId" styleClass="w165" tabindex="1" onchange="viewDetails()" >
						
						<html:option value="0">
							<bean:message key="application.option.select" bundle="view" />
						</html:option>
						<html:option value="1">
							<bean:message key="application.option.select_Taj_site1" bundle="view" />
						</html:option>
						<html:option value="2">
							<bean:message key="application.option.select_Taj_site2" bundle="view" />
						</html:option>
						<html:option value="3">
							<bean:message key="application.option.select_Taj_site3" bundle="view" />
						</html:option>
					</html:select>
					</FONT></TD>
<!-- 				</TR> -->
				<TR>
					<TD colspan="4" align="center">
					<FONT color="#ff0000" size="-2">
						<html:errors bundle="error" />
						<html:errors bundle="view" property="message.sysconfig.update_success" />
					</FONT>
					<FONT color="#ff0000" size="-2">
						<html:errors bundle="error" property="errors.sys.norecord_found"/>
					</FONT>
					</TD>
					<html:hidden property="methodName" styleId="methodName"  />
<%-- 					<html:hidden styleId="sysConfigId" property="sysConfigId" /> --%>
				</TR>
			</TABLE>
			
			
		
			<TABLE width="725" align="left" class="mLeft5">
			<logic:notEmpty name="PCCSummaryFormBean" property="pccSummaryList">
			
							<TR align="center" bgcolor="#104e8b">
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.code" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.cost.item" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.r0budget" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.r1budget" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.r2budget" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.budget.transfers" /></SPAN></TD>		
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.budget.revision" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.revised.approved.budget" /></SPAN></TD>	
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.contract.po" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.approved.change.co" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.total" /></SPAN></TD>	
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.perc.allowance" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.bal.allowance" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.anticipated.variation" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.unawarded.capex" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.forecast.cost" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.perc.budget.variance" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.amount.budget.variance" /></SPAN></TD>
								<TD rowspan="1" align="center" bgcolor="#cd0504" nowrap><SPAN
									class="white10heading mLeft5 mTop5"><bean:message
									bundle="view" key="pccsummary.allocated.Contingency" /></SPAN></TD>
							</TR>		
							<logic:iterate id="SysBean" name="PCCSummaryFormBean"
								property="pccSummaryList" indexId="i">
								<TR align="center"
									bgcolor="#fce8e6">
									<TD class=" height19" align="left"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><a href="<%=request.getContextPath()%>/jsp/common/SiteUnderConstruction.jsp"><bean:write
										name="SysBean" property="code" /></a></SPAN></TD>
									<TD class=" height19" align="left"><SPAN
										class="mLeft5 mTop5 mBot5 black10"> <bean:write
						                name="SysBean" property="costItem" /> </SPAN></TD>
									<TD class=" height19" align="left"><SPAN
										class="mLeft5 mTop5 mBot5 black10"> <bean:write
										name="SysBean" format="#0.00" property="r0Budget" /> </SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="r1Budget" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="r2Budget" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="budgetTransfers" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="budgetRevision" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="revisedApprovedBudget" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="contractCommitedCost" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="approvedChangeCommitedCost" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="totalCommitedCost" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="percentageAllowanceOnCommited" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="balanceAllowanceOnCommited" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="anticipatedVariation" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="unAwardedCAPEX" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="forecastCompletionCost" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="percentageBudgetVariance" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="amountBudgetVariance" /></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><bean:write
										name="SysBean" format="#0.00" property="allocatedContingency" /></SPAN></TD>
								</TR>
								
							</logic:iterate>
							
							<TR align="center"
									bgcolor="#fce8e6">
									<TD colspan="2" class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10"><font style="bold">Total</font></SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">78025793.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">16100000.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">221713023.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">0.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">0.00</SPAN></TD>	
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">221713023.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">193709185.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">20126139.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">213834567.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">0.00%</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">0.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">0.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">601905.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">98900790.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">89779.00</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">-39%</SPAN></TD>
									<TD class=" height19" align="right"><SPAN
										class="mLeft5 mTop5 mBot5 black10">-18567778.00</SPAN></TD>
								</TR>
							
							<TR>
								<TD colspan="10"><FONT color="RED"><STRONG>
								<html:errors bundle="view" property="message.sysconfig" /> </STRONG></FONT></TD>
								<TD colspan="9"><FONT color="RED"><STRONG>
								<html:errors bundle="error" /> </STRONG></FONT></TD>
							</TR>
							</logic:notEmpty>
						</TABLE>
		</html:form></TD>
	</TR>
	<TR align="center" bgcolor="4477bb" valign="top">
		<TD colspan="2" height="17" align="center"><jsp:include
			page="../common/footer.jsp" flush="" /></TD>
	</TR>
</TABLE>

</BODY>
</html:html>
