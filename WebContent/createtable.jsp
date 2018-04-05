<%@ page language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable.html</title>
</head>

<body style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);"
alink="#000099" link="#000099" vlink="#990099">
<br>
<%

String name = request.getParameter("nameBox");
session.setAttribute("name",name);
out.println("Hello, " + name + " your table is here." + "<br>");
String rows = request.getParameter("rowsBox");
String cols = request.getParameter("columnBox");
if(Integer.parseInt(rows) <= 0)
{
	session.setAttribute("rows",Integer.parseInt(rows));
	response.sendRedirect("classexercise.jsp");	
	
}
if(Integer.parseInt(cols) <= 0)
{
	session.setAttribute("cols",Integer.parseInt(cols));
response.sendRedirect("classexercise.jsp");	
}
out.println("<table style=\"text-align: left; width: 100%;\"border=\"1\" cellpadding=\"2\" cellspacing=\"2\">");
for(int i =1;i < Integer.parseInt(rows)+1; i++){
	
	for(int j=1;j<Integer.parseInt(cols)+1; j++){
	out.println("<td style=\"vertical-align: top;\">" + i + ","+ j +"<br></td>");
	}
	out.println("</tr>");
}
out.println("</tbody></table>");
%>
<br>
</body>
</html>
