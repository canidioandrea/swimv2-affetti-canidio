<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib tagdir="/WEB-INF/tags" prefix="swim"%>
<html>
<head>
<script type="text/javascript">
function mandatory(){
	var username = document.forms["search"]["username"].value;
	var city = document.forms["search"]["city"].value;
	var ability = document.forms["search"]["ability0"].value;
	
	var emptyFields = (username==null || username=="") && (city==null || city=="") && ability=="None";
	
	if(emptyFields){
		alert("You must fill at least one field!");
		return false;
	}
	
	return true;
}

function addNone(){
	 var select = document.getElementById("select0");
	 var none = document.createElement("option");
	 var text = document.createTextNode("None...");
	 none.id = "option0";
	 none.value = "none";
	 none.selected = "selected";
	 
	 none.appendChild(text);
	 
	 select.appendChild(none);
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Advanced Search</title>
</head>
<body onload="addNone();">

<swim:topMenu type="${sessionScope.type}" />


	<form name="search" method="get" action="search.servlet" onsubmit="return mandatory();">
	<ul>
		<li>Username: <input type="text" name="username"></li>
		<li>City: <input type="text" name="city"></li>
		<li>Ability: 	<swim:abilitiesSelect abilities="${requestScope.abilities}"></swim:abilitiesSelect> </li>	
		<li><input type="submit" value="Search"></li>
	</ul>
	</form>

</body>
</html>