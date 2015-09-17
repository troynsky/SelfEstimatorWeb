<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="config.*" %>
<%@ page import="core.StockKeeper" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>home</title>
</head>
<body>
<h1 align="center" style="color: RED">Start to estimate yourself:</h1>

<%
    Config configuration = (Config) Beans.getBean("config");
    configuration.setUserName(request.getParameter("userName"));
    String result = configuration.setJson(configuration);
    StockKeeper keeper = new StockKeeper(configuration);
    session.setAttribute("keeper", keeper);
%>

<table>
    <tr>
        <td>
            <form action="terms" method="post">
                <input type="hidden" name="json" value=<%=result %>>
                <input type="submit" value="Show all terms">
            </form>
            <form action="tags" method="get">
                <input type="submit" value="Show all tags">
            </form>
            <form action="userskills" method="get">
                <input type="submit" value="Show userskills">
            </form>
            <form action="dependencies" method="get">
                <input type="submit" value="Show all dependencies termTags">
            </form>
        </td>

        <td>
            <form action="addTerm.jsp" method="post">
                <input type="submit" value="Add new term">
            </form>
            <form action="addTags.jsp" method="post">
                <input type="submit" value="Add new tag">
            </form>
            <form action="addDependency.jsp" method="post">
                <input type="submit" value="Set dependency termTag">
            </form>
            <form action="addUserskills.jsp" method="post">
                <input type="submit" value="Set userskills">
            </form>
        </td>
    </tr>
</table>
</body>
</html>