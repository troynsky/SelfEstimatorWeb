<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="config.Config, core.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    Config configuration = Config.getJson(request.getParameter("json"));
    StockKeeper keeper = new StockKeeper(configuration);
    ArrayList<Term> list = (ArrayList<Term>) keeper.getTerms();
    request.setAttribute("list", list);
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>terms</title>
</head>
<body>
<h2>
    There are
</h2>
<c:forEach var="data" items="${list}">
    <tr>
        <td> ${data.name} </td>
    </tr>
</c:forEach>
</body>
</html>