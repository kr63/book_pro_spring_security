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
<h1>Welcome!</h1>
<h2>You are succesfully logged as Admin!</h2>
<h3>Add or remove your posts here:</h3>

<br/>

<form method="post" action="post">
    New Post Content: <input type="text" name="postContent"/><br/>
    <input type="submit"/>
</form>
<br/>
<c:forEach items="${posts}" var="post">
    <security:accesscontrollist domainObject="${post}" hasPermission="READ">
        <form method="post" action="post/delete">
                ${post.content} <br/>
            <input type="hidden" value="${post.id}" name="postId"/>
            <input type="submit" value="delete"/><br/>
        </form>
    </security:accesscontrollist>
</c:forEach>


</br>
<form action="/logout" method="post">
    <input type="submit" value="Sign Out"/>
</form>

</body>
</html>