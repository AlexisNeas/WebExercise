<%@ page language="java"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classEx</title>
</head>
<body>
<%

Object rows = session.getAttribute("rows");
Object cols = session.getAttribute("cols");
Object name = session.getAttribute("name");
if(rows != null && Integer.parseInt(rows.toString()) <= 0){
out.println(name + " ROWS MUST BE GREATER THAN 0");
session.setAttribute("rows", 1);
}
else if(cols != null && Integer.parseInt(cols.toString()) <= 0){
 out.println(name + " COLUMNS MUST BE GREATER THAN 0");
 session.setAttribute("cols", 1);
 }
%>
<form method="post" action="createtable.jsp" name="action1">
<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your name<br>
</td>
<td style="vertical-align: top;"><input name="nameBox"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input value="1" name="rowsBox"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input value="1"
name="columnBox"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="submitButton"
type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="resetButton"
type="reset"><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>
