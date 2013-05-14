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
	
	 
	<form name="createAccounts">
	<table>
	<tr>
		<th><label>Firma:</label></th>
		<th><input type="text" name="firma"/></th>
	</tr>
	<tr>
		<th><label>Benutzer:</label></th>
		<th><input type="text" name="benutzer"/></th>
	</tr>
	<tr>
		<th><label>Name:</label></th>
		<th><input type="text" name="aName"/></th>
	</tr>
	</table>
	
	<input type="button" name="newAccountPop" id="button" value="new" onclick="return openPopup('popup.html')" />
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
				<th><input type="button" name="newAccount" id="button" value="new" onclick="processForm()" /></th>
				</tr>
				<tr>
				<th><div id="accountList"></div>...</th>
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
				<th><div id="accountContentListID"></div>...</th>
				<th><div id="accountContentListFirma"></div>...</th>
				<th><div id="accountContentListBenutzer"></div>...</th>
				<th><div id="accountContentListAName"></div>...</th>
				<th><div id="accountContentListUpload"></div>...</th>
				<th><div id="accountContentListDelete"></div>...</th>
				</tr>
				</table>
			</th>
		</tr>
	</table>
	</form>
	
</body>
</html>