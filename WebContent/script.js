var i = 0;
var MasterAccountID = 0;

function showForm(){
	document.getElementById("hideAccount").style.display = "block";
}

function hideForm(){
	document.getElementById("hideAccount").style.display = "none";
}

function openPopup (url) {
	 fenster = window.open(url, "Popupfenster", "width=600,height=200,resizable=yes");
	 fenster.focus();
	 return false;
}
	 
function processForm() {
	
	i++;
	MasterAccountID = ("000"+i);
	
	var firmaItem = document.createAccounts.firma.value;
	var benutzerItem = document.createAccounts.benutzer.value;
	var aName = document.createAccounts.aName.value;
	
	var accountID = '<div>' + ("000"+i) + '</div><br/>';
	var accountFirma = '<div>' + firmaItem + '</div><br/>';
	var accountBenutzer = '<div>' + benutzerItem + '</div><br/>';
	var accountAName = '<div>' +'<a href=\'InnerAccount.html\'>'+ aName + '</a>' + '</div><br/>';
	var accountUpload = '<div>' + '<input type="button" id="button" value="upload" onClick="return openPopup(\'popup.html\')"/>' + '</div><br/>';
	var accountDelete = '<div>' + '<input type="button" id="button" value="löschen" onClick="deleteLine()" />' + '</div><br/>';
	
	document.getElementById("accountList").innerHTML += ("000"+i)+'<br/><br/>';
	document.getElementById("accountContentListID").innerHTML += accountID;
	document.getElementById("accountContentListFirma").innerHTML += accountFirma;
	document.getElementById("accountContentListBenutzer").innerHTML += accountBenutzer;
	document.getElementById("accountContentListAName").innerHTML += accountAName;
	document.getElementById("accountContentListUpload").innerHTML += accountUpload;
	document.getElementById("accountContentListDelete").innerHTML += accountDelete;
	
}

function deleteLine(){
	var deleteID = MasterAccountID;
	var chooseUser = confirm("Wollen Sie den Account löschen?");
	if (chooseUser){
		var chooseID = prompt("Bitte Account ID angeben:");
			if (chooseID === deleteID){
				document.getElementById("accountList").innerHTML = " ";
				document.getElementById("accountContentListID").innerHTML = " ";
				document.getElementById("accountContentListFirma").innerHTML = " ";
				document.getElementById("accountContentListBenutzer").innerHTML = " ";
				document.getElementById("accountContentListAName").innerHTML = " ";
				document.getElementById("accountContentListUpload").innerHTML = " ";
				document.getElementById("accountContentListDelete").innerHTML = " ";
				i -= i;
			} else {
				alert('ID mismatch!');
			}
		}	
}

