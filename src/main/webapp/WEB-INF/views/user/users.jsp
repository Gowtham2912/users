<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  border-collapse: collapse;
  padding-top:50%;
  width: 50%;
}
a:hover{
color:blue;
}

th, td {
  text-align: center;
  padding: 8px;
  border-bottom: 1px solid #ADD8E6;
  
}

tr td:nth-child(1n+2)
{padding-left:35px;
}
tr:hover {background-color: #ADD8E6;}

th {
  background-color: #ADD8E6;
  color: black;
}
table, th, td {
  
}
.button {
  background-color: #99bbff;
  border: none;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;

}

.button2 {
  background-color: #b9bdc6;
  border: none;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;
}

.button3{
 background-color: #ADD8E6;
 size="25%";
  border: none;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  font-size: 20px;
  margin:auto;
  display:block;
  width:155px;
}
div {
 position: relative;
 margin: 10px 350px;
  width: 50%;
  border: 5px solid #ADD8E6;
}
</style>




<meta charset="ISO-8859-1">
<title>User Details</title>
</head>
<body>
	
<h3 align="center">USERS LIST</h3>
<br/>
<div>
<br/>
<br/>

<table align="center" >
	<tr>
	<th style="background-color: #ADD8E6;">User ID</th>
	<th style="background-color: #ADD8E6;">User Name</th>
	<th style="background-color: #ADD8E6;">User Surname</th>
	<th style="background-color: #ADD8E6;">User Address</th>
	<th style="background-color: #ADD8E6;">Update</th>
	<th style="background-color: #ADD8E6;">Delete</th>
	</tr>
	<c:forEach var="user" items="${users}">
	<tr>
	<td>${user.id}</td>
		<td>${user.name}</td>	
			<td>${user.surname}</td>
			    <td>${user.address}</td>
			    				
	<td><a href="${pageContext.request.contextPath}/user/update/${user.id}"class="button2" >Update Details</a>
		<td><a href="${pageContext.request.contextPath}/user/delete/${user.id}"class="button2" onClick="return confirm('Are you sure?')">Delete</a>
		
	</td>
	
	
	</tr>
	</c:forEach>
</table>
<br/>
<br/>
<br/>

<a href="${pageContext.request.contextPath}/user/index" class="button3" >Home</a><br>

</div>

</body>
</html>