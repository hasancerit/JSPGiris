<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	 <title>Insert title here</title>
	 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>


<body>
 <%

	System.out.println("GetAttribute.jsp");
	System.out.println("Page Scope:" + pageContext.getAttribute("num1"));
	System.out.println("Session Scope:" + pageContext.getAttribute("num2", PageContext.SESSION_SCOPE));
	System.out.println("Session Scope - session:" + session.getAttribute("num2"));
	System.out.println("Application Scope:" + pageContext.getAttribute("num3", PageContext.APPLICATION_SCOPE));
	System.out.println("Application Scope - application:" + application.getAttribute("num3"));
	System.out.println("Session Scope :" + session.getAttribute("num4"));
	System.out.println("Request Scope :" + request.getAttribute("num5"));
	System.out.println("Find Attribute:" + pageContext.findAttribute("num2"));

 %>
</body>

</html>