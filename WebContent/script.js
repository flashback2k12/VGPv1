var i = 0;

function openPopup(url) {
	newwindow=window.open(url,'name','height=200,width=600');
	if (window.focus){
		newwindow.focus();
		}
	return false;
}


function processForm() {
	
	i++;
	
	var firmaItem = document.createAccounts.firma.value;
	var benutzerItem = document.createAccounts.benutzer.value;
	var aName = document.createAccounts.aName.value;
	
	var accountID = '<div>' + ("000"+i) + '</div><br/>';
	var accountFirma = '<div>' + firmaItem + '</div><br/>';
	var accountBenutzer = '<div>' + benutzerItem + '</div><br/>';
	var accountAName = '<div>' + aName + '</div><br/>';
	var accountUpload = '<div>' + '<input type="button" id="button" value="upload"/>' + '</div><br/>';
	var accountDelete = '<div>' + '<input type="button" id="button" value="löschen"/>' + '</div><br/>';
	
	document.getElementById("accountList").innerHTML += ("000"+i)+'<br/><br/>';
	document.getElementById("accountContentListID").innerHTML += accountID;
	document.getElementById("accountContentListFirma").innerHTML += accountFirma;
	document.getElementById("accountContentListBenutzer").innerHTML += accountBenutzer;
	document.getElementById("accountContentListAName").innerHTML += accountAName;
	document.getElementById("accountContentListUpload").innerHTML += accountUpload;
	document.getElementById("accountContentListDelete").innerHTML += accountDelete;
}