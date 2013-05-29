<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	
	<!-- Button zum Aufruf der Eingabemaske -->
	<p><input type="button" name="newAccount" value="neuen Account anlegen" onclick="showForm()" /></p>
	
	<!-- Tabellenform zur Aufnahme der Accountdaten -->
	<form method="get" id="jq" name="createAccounts" action="InnerAccount.jsp">
	<table id="hideAccount">
	<tr>
		<th><label>Firma:</label></th>
		<th><input type="text" id="f" name="firma"/></th>
		<!-- Button für die Übergabe der Accountdaten in die Übersicht-Tabellenform -->
		<th><input type="button" name="newAccountPop" value="anlegen" onclick="addNewAcc(document.getElementById('f').value,document.getElementById('b').value,document.getElementById('n').value)" /></th>
	</tr>
	<tr>
		<th><label>Benutzer:</label></th>
		<th><input type="text" id="b" name="benutzer"/></th>
		<!-- Button zum schließen der Eingabemaske -->
		<th><input type="button" name="closeNA" value="schließen" onclick="hideForm()" /></th>
	</tr>
	<tr>
		<th><label>Name:</label></th>
		<th><input type="text" id="n" name="aName"/></th>
	</tr>
	</table>
	</form>
	<br/>
	<br/>
	
	<!-- Tabellenform zur Übersicht der Accountdaten -->
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
</html>