<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib tagdir="/WEB-INF/tags" prefix="swim"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post Help Request</title>
</head>
<body>

<form action="hr.store" method="post">
	Subject: <input type="text" name="subject">
	Ability: <swim:abilitiesCheckBox abilities="${abilities}"></swim:abilitiesCheckBox>
	Date:	<input type="text" name="date">
	Hour:	<input type="text" name="hour">
	<input type="submit" value="Post">
</form>

</body>
</html>