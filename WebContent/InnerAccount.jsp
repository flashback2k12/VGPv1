<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="stylesheet.css"  />
<script type="text/javascript" src="script.js"></script>
</head>
<body onload="deliverData()">
	<%
	String mAccountID = request.getParameter("accountList");
	String mName = request.getParameter("aName");
	
	request.setAttribute("accountID", mAccountID);
	request.setAttribute("aName", mName);
	%>
	<p><a onclick="deliverData()">account <%=request.getAttribute("accountID") %> </a></p>
	<table>
		<tr>
			<th>
				<table id="t1">
				<tr>
				<th>Accounts</th>
				</tr>
				<tr>
				<th></th>
				</tr>
				<tr>
				<th><hr/><div id="accountListInner"></div>...<%--<%=request.getAttribute("accountID") --%></th>
				</tr>
				</table>
			</th>
		
			<th>
				<table id="t2">
				<tr>
				<th colspan="3">Tabelle Accounts</th>
				</tr>
				<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Datei</th>
				<th>Datum</th>
				<th>upload</th>
				<th>löschen</th>
				</tr>
				<tr>
				<th><hr/><div id="accountContentListIDInner"></div>...<%--<%=request.getAttribute("accountID") --%></th>
				<th><hr/><div id="accountContentListANameInner"></div>...<%--<%=request.getAttribute("aName") --%></th>
				<th><hr/><div id="accountContentListDateiInner"></div>...</th>
				<th><hr/><div id="accountContentListDatumInner"></div>...</th>
				<th><hr/><div id="accountContentListUploadInner"></div>...</th>
				<th><hr/><div id="accountContentListDeleteInner"></div>...</th>
				</tr>
				</table>
			</th>
		</tr>
	</table>
	<a href="index.jsp">zurück</a>
</body>
</html>