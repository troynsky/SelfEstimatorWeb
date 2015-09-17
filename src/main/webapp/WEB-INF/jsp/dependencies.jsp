<%@ page import="core.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    StockKeeper keeper = (StockKeeper) session.getAttribute("keeper");
    ArrayList<Term> dependenceTermsAndTags = (ArrayList<Term>) keeper.getDependenceTermsAndTags();
    request.setAttribute("dependenceTermsAndTags", dependenceTermsAndTags);
%>
<html>
<head>
    <title>dependenceTermsAndTags</title>
</head>
<body>
<h2>There are </h2>
<c:forEach var="dep" items="${dependenceTermsAndTags}">
    <c:set var="listSize" scope="page" value="${fn:length(dep.tags)}"/>
    <c:if test="${listSize > 0}">
        <tr>
            <td>
                    ${dep.name} :
                <c:forEach var="tag" items="${dep.tags}">
                    ${tag.name}
                </c:forEach>
                <br></td>
        </tr>
    </c:if>
</c:forEach>
</body>
</html>
