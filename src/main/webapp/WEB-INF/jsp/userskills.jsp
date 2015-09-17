<%@ page import="core.StockKeeper" %>
<%@ page import="core.UserSkills" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    StockKeeper keeper = (StockKeeper) session.getAttribute("keeper");
    UserSkills userSkills = keeper.getUserSkills();
    request.setAttribute("userSkills", userSkills);
%>
<html>
<head>
    <title>userskills</title>
</head>
<body>
<h2>There are userSkills for user: <c:out value="${userSkills.user.name}"/></h2>
<c:forEach var="entry" items="${userSkills.termSkills}">
    <c:out value="${entry.key.name}"/> - <c:out value="${entry.value.value}"/> <br>
</c:forEach>
</body>
</html>