<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<style>
input[type=text], select {
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 10%;
  background-color: #ADD8E6;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=button] {
  width: 10%;
  background-color: #ADD8E6;
  color: black;
  padding: 14px 10px;
  margin: 10px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.movie
{
  margin-left:25px;
}
#u_id
{
  margin-left:54px;
}
#u_name
{
  margin-left:38px;
}
.cast
{
margin-right:25px;
}
#u_surname
{ 
  margin-left:15px;
}
.h2{
align:"center":
}
#u_address
{
   margin-left:21px;
}
div {
 position: relative;
 margin: 10px 350px;
  width: 50%;
  border: 5px solid #ADD8E6;
}
</style>

<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
<h2 align="center"> Enter user details</h2>
 
    <br/>
    <div align="center">
    <br>
    <s:form  method="POST" modelAttribute="user" action="${pageContext.request.contextPath}/user/index">
    <label class="cast">User ID</label><input type="text" name="id" class="movie" id="u_id">
    <br/>
    <br/>
   
   <label class="cast">User name</label><input type="text" name="name" id="u_name">
    <br/>
    <br/>
   
   <label class="cast">User Surname</label><input type="text" name="surname" id="u_surname">
    <br/>
    <br/>
    
   <label class="cast">UserAddress</label><input type="text" name="address" id="u_address">
    <br/>
    <br/>
   	<input type="button" style="margin:35px;" class="button" value="Users List" onclick="location.href='${pageContext.request.contextPath}/user/users'">
      <input type="submit" value="Save">

   
    </s:form>
      </div>
</body>
</html>