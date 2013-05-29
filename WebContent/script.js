//Initialisierung und Deklaration von Globalenvariablen
var i = 0;
var MasterAccountID = 0;
//Array zur Speicherung der Accountobjekte
var saveAcc = [];
//Objekt zur Aufnahme der Accountdaten
var newAccount = {};

//Funktion zur Einblendung des Formulars zur Eingabe der Accountdaten
function showForm(){
	document.getElementById("hideAccount").style.display = "block";
}

//Funktion zur Ausblendung des Formulars zur Eingabe der Accountdaten
function hideForm(){
	document.getElementById("hideAccount").style.display = "none";
}

//Funktion zur Öffnung des Popup-Fenster für den Datei-Upload
function openPopup (url) {
	 fenster = window.open(url, "Popupfenster", "width=600,height=200,resizable=yes");
	 fenster.focus();
	 return false;
}

//Funktion zur Öffnung der Dateiauswahl im Popup-Fenster
function openFileChooser() {
	  var nBytes = 0,
	      oFiles = document.getElementById("uploadInput").files,
	      nFiles = oFiles.length;
	  for (var nFileId = 0; nFileId < nFiles; nFileId++) {
	    nBytes += oFiles[nFileId].size;
	  }
}

//Funktion zur Anlage des Accounts
//als Parameter dienen die Werte aus den Inputfeldern der Account-Anlage-Maske
function addNewAcc(firma,benutzer,name) {
    //Erhöhung der Counter-Variable um 1 bei jedem Aufruf der Funktion
	i++;
	//Anlage einer Account-ID laut Vorgabe der Aufgabe
    MasterAccountID = ("000")+i;
    
    //Zuweisung der Inputparameter in das newAccount-Objekt
	newAccount.id = MasterAccountID;
    newAccount.firma = firma;
    newAccount.benutzer = benutzer;
    newAccount.name = name;
    
    //Ablage der erstellten Objekte im Array
    saveAcc[saveAcc.length] = newAccount;

    //Zuweisung der globalen Daten in lokale Variablen
    var accountID = '<div>' + newAccount.id + '</div><br/>';
	var accountFirma = '<div>' + newAccount.firma + '</div><br/>';
	var accountBenutzer = '<div>' + newAccount.benutzer + '</div><br/>';
	//bei druck auf Name wird man zum inneren des Accounts weiter geleitet
	var accountAName = '<div>' + '<a href=\'InnerAccount.jsp\'>'+ newAccount.name + '</a>' + '</div><br/>';
	//Erzeugung des Upload-Button --> Öffnung eines Popup-Fensters
	var accountUpload = '<div>' + '<input type="button" id="button" value="upload" onClick="return openPopup(\'popup.html\')"/>' + '</div><br/>';
	//Erzeugung des Delete-Button
	var accountDelete = '<div>' + '<input type="button" id="button" value="löschen" onClick="deleteLine()" />' + '</div><br/>';
	
	//Ausgabe der lokalen Variablen in die definierten HTML Bereich 
	document.getElementById("accountList").innerHTML += MasterAccountID +'<br/><br/>';
	document.getElementById("accountContentListID").innerHTML += accountID;
	document.getElementById("accountContentListFirma").innerHTML += accountFirma;
	document.getElementById("accountContentListBenutzer").innerHTML += accountBenutzer;
	document.getElementById("accountContentListAName").innerHTML += accountAName;
	document.getElementById("accountContentListUpload").innerHTML += accountUpload;
	document.getElementById("accountContentListDelete").innerHTML += accountDelete;
}

//Hilfsfunktion zum holen der Accountdaten in den inneren Bereich des Accounts
function deliverData(){
	//Zuweisung der globalen Daten in lokale Variablen
	var accountID = '<div>' + newAccount.id + '</div><br/>';
	var accountAName = '<div>' + newAccount.name + '</div><br/>';
	//Erzeugung des Upload-Button --> Öffnung eines Popup-Fensters
	var accountUpload = '<div>' + '<input type="button" id="button" value="upload" onClick="return openPopup(\'popup.html\')"/>' + '</div><br/>';
	//Erzeugung des Delete-Button
	var accountDelete = '<div>' + '<input type="button" id="button" value="löschen" onClick="deleteLine()" />' + '</div><br/>';
	//Ausgabe der lokalen Variablen in die definierten HTML Bereich 
	document.getElementById("accountListInner").innerHTML = MasterAccountID +'<br/><br/>';
	document.getElementById("accountContentListIDInner").innerHTML = accountID;
	document.getElementById("accountContentListANameInner").innerHTML = accountAName;
	document.getElementById("accountContentListUploadInner").innerHTML = accountUpload;
	document.getElementById("accountContentListDeleteInner").innerHTML = accountDelete;
}

//Funktion der Löschung eines Accounts
function deleteLine(){
	//Zuweisung einer globqlen Variable in eine lokale Variable
	var deleteID = MasterAccountID;
	//Bestätigungsabfrage, ob gelöscht werden soll
	var chooseUser = confirm("Wollen Sie den Account löschen?");
	//Wenn ja, dann wird noch der Account-ID gefragt
	if (chooseUser){
		//Eingabeaufforderung und Speicherung der Userantwort in einer lokalen Variable
		var chooseID = prompt("Bitte Account ID angeben:");
			//Wenn Account vorhanden werden die Daten entfernt
			if (chooseID === deleteID){
				document.getElementById("accountList").innerHTML = " ";
				document.getElementById("accountContentListID").innerHTML = " ";
				document.getElementById("accountContentListFirma").innerHTML = " ";
				document.getElementById("accountContentListBenutzer").innerHTML = " ";
				document.getElementById("accountContentListAName").innerHTML = " ";
				document.getElementById("accountContentListUpload").innerHTML = " ";
				document.getElementById("accountContentListDelete").innerHTML = " ";
			} 
			//wenn Account nicht vorhanden kommt eine Fehlermeldung
			else {
				alert('ID mismatch!');
			}
		}	
}

/*
 * Version 1 der Accountanlage
 * 
function processForm() {
	i++;
	MasterAccountID = ("000"+i);
	
	var firmaItem = document.createAccounts.firma.value;
	var benutzerItem = document.createAccounts.benutzer.value;
	var aName = document.createAccounts.aName.value;
	
	var accountID = '<div>' + MasterAccountID + '</div><br/>';
	var accountFirma = '<div>' + firmaItem + '</div><br/>';
	var accountBenutzer = '<div>' + benutzerItem + '</div><br/>';
	var accountAName = '<div>' +'<a href=\'InnerAccount.jsp\'>'+ aName + '</a>' + '</div><br/>';
	var accountUpload = '<div>' + '<input type="button" id="button" value="upload" onClick="return openPopup(\'popup.html\')"/>' + '</div><br/>';
	var accountDelete = '<div>' + '<input type="button" id="button" value="löschen" onClick="deleteLine()" />' + '</div><br/>';
	
	document.getElementById("accountList").innerHTML += MasterAccountID +'<br/><br/>';
	document.getElementById("accountContentListID").innerHTML += accountID;
	document.getElementById("accountContentListFirma").innerHTML += accountFirma;
	document.getElementById("accountContentListBenutzer").innerHTML += accountBenutzer;
	document.getElementById("accountContentListAName").innerHTML += accountAName;
	document.getElementById("accountContentListUpload").innerHTML += accountUpload;
	document.getElementById("accountContentListDelete").innerHTML += accountDelete;
}
*/
