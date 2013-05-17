<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="kloppeUser.*"%>
<!DOCTYPE html>
<html lang="de">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link type="text/css" rel="stylesheet" href="stylesheet.css"  />
<script type="text/javascript" src="script.js"></script>
<title>FTP Portal</title>
</head>
<body>
	<h1>FTP Portal</h1>
	
	<p><input type="button" name="newAccount" value="neuen Account anlegen" onclick="showForm()" /></p>
	
	<form name="createAccounts">
	<table id="hideAccount">
	<tr>
		<th><label>Firma:</label></th>
		<th><input type="text" name="firma"/></th>
		<th><input type="button" name="newAccountPop" value="anlegen" onclick="processForm()" /></th>
	</tr>
	<tr>
		<th><label>Benutzer:</label></th>
		<th><input type="text" name="benutzer"/></th>
		<th><input type="button" name="closeNA" value="schließen" onclick="hideForm()" /></th>
	</tr>
	<tr>
		<th><label>Name:</label></th>
		<th><input type="text" name="aName"/></th>
	</tr>
	</table>
	</form>
	<br/>
	<br/>
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
				<th><hr/><div id="accountList"></div>...</th>
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
				<th>Firma</th>
				<th>Benutzer</th>
				<th>Name</th>
				<th>Upload</th>
				<th>Löschen</th>
				</tr>
				<tr>
				<th><hr/><div id="accountContentListID"></div>...</th>
				<th><hr/><div id="accountContentListFirma"></div>...</th>
				<th><hr/><div id="accountContentListBenutzer"></div>...</th>
				<th><hr/><div id="accountContentListAName"></div>...</th>
				<th><hr/><div id="accountContentListUpload"></div>...</th>
				<th><hr/><div id="accountContentListDelete"></div>...</th>
				</tr>
				</table>
			</th>
		</tr>
	</table>
	
<%-- <%
	AccUser user = new AccUser();
	String mFirma = request.getParameter("accountContentListID");
	
	%>	 --%>
</body>
</html>