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
		Integer num1 = 10;
		Integer num2 = 15;
		Integer num3 = 20;
		Integer num4 = 25;
		Integer num5 = 30;

		//PageContext Sınıfı kullanarak attr eklemek.
		pageContext.setAttribute("num1", num1);
		pageContext.setAttribute("num2", num2, PageContext.SESSION_SCOPE);
		pageContext.setAttribute("num3", num3, PageContext.APPLICATION_SCOPE);

		//İmpliicit nesneleri kullanarak attr eklemek
		session.setAttribute("num4", num4);
		request.setAttribute("num5", num5);

		
		System.out.println("setAttr.jsp");
		System.out.println("Page Scope:" + pageContext.getAttribute("num1"));
		System.out.println("Session Scope - PageContext:" + pageContext.getAttribute("num2", PageContext.SESSION_SCOPE));
		System.out.println("Session Scope - Session:" + session.getAttribute("num2"));
		System.out.println("Application Scope - PageContext:" + pageContext.getAttribute("num3", PageContext.APPLICATION_SCOPE));
		System.out.println("Application Scope - Application:" + application.getAttribute("num3"));
		System.out.println("Session Scope :" + session.getAttribute("num4"));
		System.out.println("Request Scope :" + request.getAttribute("num5"));
		System.out.println("Find Attribute:" + pageContext.findAttribute("num2"));//Ilk olarak Page Context scope’a bakacak eger bulamazsa sirasiyla request,session ve application scope’a bakacaktir.
	%>
</body>

</html>