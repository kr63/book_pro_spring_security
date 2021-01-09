<%@ page contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <title>Spring Security 5 and ACL.</title>
</head>
<body>
<h1>Welcome to Admin page: <strong>${user}</strong></h1>
<h2>You are succesfully logged as Admin!</h2>

<br/>
<p>Click <a href="/posts">here</a> to manage your posts.</p>

<form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Sign Out"/>
</form>

</body>
</html>