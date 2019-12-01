<%@ page session="true" %>
<%@ include file="setHeader.jsp" %>
<%
session.removeAttribute("bean");
session.invalidate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<br>
<br>
<form method="post" action="controller">
<table align="center">
<tr>
<td>Login</td>
<td>:</td>
<td><input type="text" name="login" size="20"></td>
</tr>
<tr>
<td>Password</td>
<td>:</td>
<td><input type="password" name="password" size="20"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td align="center"><input type="submit" value="Enter">&nbsp;&nbsp;<input type="reset" value="Clear"></td>
</tr>
<tr>
<td align="center" colspan="3">
<font color="red">
<%
String error = request.getParameter("error");
if(error != null && error.equals("1")){
%>
Invalid Login and Password!
<%
}
else if(error != null && error.equals("2")){
%>
Empty Login and Password!
<%
}
%>
</font>
</td>
</tr>
</table>
</form>
</body>
</html>