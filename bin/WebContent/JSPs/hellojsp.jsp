<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<!-- HTML yorum satiri -->
<!-- @ page satiri JSP dosyasini olusturdugumuzda gelmektedir. 
Burada encoding ve charset ayari yapabiliriz. -->

<%@ page import="java.util.List,java.util.ArrayList"%>
<!--JSP dosyamiza import islemi yapabiliriz. 
Birden fazla import islemi icin araya virgul koyabiliriz.-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
   </head>
   <body>
   
   <!-- JSP Scriptlet kodumuz! -->
   <%
       System.out.println("Java Scriptlet arasinda Java kodumuzu yazabiliriz");
       for (int i = 0; i < 5; i++) {
           System.out.println("i:" + i);
           out.println("i:" + i);
       }

       List<String> testList = new ArrayList<String>();
       testList.add("Hasan");
  %>

       <br>
       <%
       String name = "Hasan";
       int age = 24;
       out.println(name);
       out.println(age);
       %>
       <br>
 
       <!--JSP Expression -->
      <%=name%>
      <%=age%>

      <br>
      <%=addNumber(5, 5)%>

      <!-- JSP Declaration -->
      <%!	public int addNumber(int n1, int n2) {
         		sum = n1 + n2;
         		return sum;
      }
      private int sum = 0;%>

      <br>
      <%=addNumber(5, 10)%>


	<!--
			İmplicit Nesneler 
		JspWriter out
		HttpServletRequest request
		HttpServletResponse response
		ServletContext application (GetServletContext)
		HttpSession session
		ServletConfig config
		Throwable exception
		PageContext pageContext
		Object page -->
	
   </body>
</html>