<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New message</title>
</head>
<body>

<h1>Create a new Message</h1>

<form action="message.store" method="post">
<ul>
	<li>To: <input type="text" name="recipient" value="Friend's e-mail"></li>
	<li><input type="text" name="text" height="50" width="200"></li>
	<li><input type="submit" value="Send"></li>
</ul>
</form>

</body>
</html>