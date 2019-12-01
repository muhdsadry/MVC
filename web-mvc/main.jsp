<%@ page session="true" %> <!-- set the session to true -->
<%@ page import="mvc.LoginBean" %> <!-- import Login Bean -->
<%@ include file="setHeader.jsp" %> <!-- repeating set Header -->
<%
  // check if the session is not empty or null
  if(session.getAttribute("bean") != null){
	  
  // retrieve LoginBean from session	  
  LoginBean bean = (LoginBean)session.getAttribute("bean");
  
  // check whether the LoginBean.Login and LoginBean.Password are not null or empty
  boolean status = bean.isValid();
  if(bean.getLogin() != null && bean.getPassword() != null){
	  
	  // if user is a valid user
    if(status){
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main</title>
</head>
<body>
<center>
<br>
Welcome <%=bean.getLogin()%><br>
<br>
<a href="view.jsp">View Personal Information</a><br>
<a href="form.jsp">Sign Out</a>
</center>
</body>
</html>
<%
   }
    else{
%>
<jsp:forward page="form.jsp?error=1" />  
<%   
    }

  }
  else {
%>
  <jsp:forward page="form.jsp?error=2" />  
<%
 }
}
  else{
%>
<jsp:forward page="form.jsp?error=2" />  
<%
}
%>