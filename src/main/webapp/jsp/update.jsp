<%@page import="com.example.demo.bean.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
  body {
    font-family: Arial, sans-serif;
  }
  .container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }
  input[type="text"], input[type="email"], input[type="password"], input[type="tel"], textarea {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  button:hover {
    background-color: #45a049;
  }
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <%student s=(student)session.getAttribute("student"); %>
   
<div class="container">
 <form action="showupdate">
    <h1>Update Password</h1>
    	
      <input  type="hidden" id="firstName" value="<%=s.getId()%>" name="id" required>
      
       <label for="lastName">Firstname</label>
      <input type="text" id="firstName" value="<%=s.getFname()%> "name="fname" required>
      
        <label for="fisrtName">Lastname</label>
      <input type="text" id="lastName" value="<%=s.getLname()%> "name="lname" required>
      
      <label for="email">Email</label>
      <input type="text" id="email"value="<%=s.getEmail()%>" name="email" required>
      
      
      
      
    <label for="firstName">Password</label>
      <input type="text" id="firstName" value="<%=s.getPassword()%> "name="password" required>
      
      
      
      
        <label for="mobile">Mobile No</label>
      <input type="text" id="mobile" value="<%=s.getMobile()%>" name="mobile" required>
      
        <label for="address">Address</label>
      <input type="text" id="address" value="<%=s.getAddress()%> "name="address" required>
      
      
        <button type="submit">Submit</button>
    	
      </form>
      </div>
      
</body>
</html>