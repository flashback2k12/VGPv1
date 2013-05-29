<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form id="testForm">
Firma:<input type="text" id="f" name="firma">
Benutzer:<input type="text" id="b" name="benutzer">
Name:<input type="text" id="n" name="name">
<input type="button" name="btn1" value="add me!" onclick="addNewAcc(document.getElementById('f').value,document.getElementById('b').value,document.getElementById('n').value)">
<input type="button" name="btn2" value="delete me!" onclick="deleteAccount()">
<input type="button" name="btn2" value="delete me2!" onclick="deleteAccount2()">
<br>
<br>
<div id="output0"></div>
<div id="output1"></div>
<div id="output2"></div>
<div id="output3"></div>
</form>

<script type="text/javascript">
var saveAcc = [];
var newAccount = {};
var i = 0;

function addNewAcc(firma,benutzer,name) {
    i++;
	
	newAccount.id = i;
    newAccount.firma = firma;
    newAccount.benutzer = benutzer;
    newAccount.name = name;
     
    saveAcc[saveAcc.length] = newAccount;

    document.getElementById("output0").innerHTML += newAccount.id + "/";
    document.getElementById("output1").innerHTML += newAccount.firma + "/";
    document.getElementById("output2").innerHTML += newAccount.benutzer + "/";
    document.getElementById("output3").innerHTML += newAccount.name + "/";
};

function deleteAccount(){
	var userAnswer = parseInt(prompt("Welcher Account soll gelöscht werden?"));
	
	   if(userAnswer == (saveAcc.length = userAnswer)){
		   	i--;
	        newAccount.id = "...";
	        newAccount.firma = "...";
	        newAccount.benutzer = "...";
	        newAccount.name = "...";
	        document.getElementById("output0").innerHTML += newAccount.id + "/";
	        document.getElementById("output1").innerHTML += newAccount.firma + "/";
	        document.getElementById("output2").innerHTML += newAccount.benutzer + "/";
	        document.getElementById("output3").innerHTML += newAccount.name + "/";
	    } else {
	        alert("Account nicht vorhanden!" + userAnswer);
	    }
};
	    
function deleteAccount2(){
	 var userAnswer = prompt("Welcher Account soll gelöscht werden?");
	    	
	   if(userAnswer == saveAcc[userAnswer-1].id){
	       	i--;
		   	saveAcc[userAnswer-1].id = "empty1";
	    	saveAcc[userAnswer-1].firma = "empty2";
	      	saveAcc[userAnswer-1].benutzer = "empty3";
	        saveAcc[userAnswer-1].name = "empty4";
	        document.getElementById("output0").innerHTML += newAccount.id;
	    	document.getElementById("output1").innerHTML += newAccount.firma;
	    	document.getElementById("output2").innerHTML += newAccount.benutzer;
	    	document.getElementById("output3").innerHTML += newAccount.name;
	    } else {
	        alert("Account nicht vorhanden!");
		}
};
</script>
</body>
</html>