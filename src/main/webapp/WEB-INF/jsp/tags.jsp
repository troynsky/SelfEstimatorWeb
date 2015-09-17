<%@ page import="core.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    StockKeeper keeper = (StockKeeper) session.getAttribute("keeper");
    ArrayList<Tag> list = (ArrayList<Tag>) keeper.getTags();
    request.setAttribute("list", list);
%>
<html>
<head>
    <title>tags</title>
</head>
<body>
<h2>There are </h2>
<c:forEach var="tag" items="${list}">
    <tr>
        <td> ${tag.name} <br> </td>
    </tr>
</c:forEach>
</body>
</html>
