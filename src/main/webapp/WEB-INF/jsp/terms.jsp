<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="core.*, config.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    Config configuration = Config.getJson(request.getParameter("json"));
    StockKeeper keeper = new StockKeeper(configuration);
    String result = request.getParameter("json");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>terms</title>
</head>
<body>
<h2>
    There are <%= result%>

</h2>

</body>
</html>