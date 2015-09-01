<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="config.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main</title>
</head>
<body>
	<h1 align="center" style="color: RED">Welcome to SelfEstimator</h1>
	<%--<%--%>
		<%--Config configuration = new Config();--%>
		<%--String result = configuration.setJson(configuration);--%>
	<%--%>--%>
	<table>
		<tr>
			<td><form action="terms.jsp" method="post">
					<input type="hidden" name="json" value="check"> <input
						type="submit" value="Show all terms">
				</form>
				<form action="tags.jsp" method="post">
					<input type="submit" value="Show all tags">
				</form>
				<form action="userskills.jsp" method="post">
					<input type="submit" value="Show userskills">
				</form>
				<form action="dependencies.jsp" method="post">
					<input type="submit" value="Show all dependencies termTags">
				</form></td>

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