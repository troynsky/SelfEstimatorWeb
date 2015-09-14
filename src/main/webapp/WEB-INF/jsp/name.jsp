<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>
<h1 align="center" style="color: RED">Welcome to SelfEstimator</h1>

<form name="welcome" method="post" action="home">
    <p><b>Name:</b><br>
        <input type="text" name="userName" size="40">
    </p>

    <br>

    <p>Some words about yourself:<Br>
        <textarea name="comment" cols="40" rows="3"></textarea></p>

    <p><input type="submit" value="Submit">
        <input type="reset" value="Clear"></p>
</form>

</body>
</html>