<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Spring Security authentication example.</title>
</head>
<body>
<h2>Welcome to Spring Security authentication example!</h2><br>

Your username is: <strong>${user}</strong>

<br>
<br>
<a href="<c:url value="/login"/>">Logout</a><br>

</body>
</html>
