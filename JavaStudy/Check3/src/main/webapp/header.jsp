<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*,java.text.SimpleDateFormat"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>

<header>
<div>

	<span>login</span>

 	<span style="font-size:10px; color:black; padding:10px;"> 
 		 <% Date date = new Date();
      	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
      	String formatDate = sdf.format(date);%>
   		<%= formatDate %>
   	</span>

</div>
</header>

<!-- </body>
</html> -->