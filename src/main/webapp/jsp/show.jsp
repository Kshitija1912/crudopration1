<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.example.demo.bean.student"%>
<html>
<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}
#button{
float: right;
    margin-top: -53px;
    }

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
  <%List<student> list=(List)session.getAttribute("student");%>
  
  <div><h1>Student Details</h1>

<button id=button> <a href="register" > Add Student </a></button>
</div>


<table id="customers">
  
  
  <tr>
    <th >Email</th>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Address</th>
   
    <th>Mobile</th>
    <th>Password</th>
    <th>action</th>
    
  </tr>

    <%for(student s:list){ %>
  
  
  <tr>
     <td><%=s.getEmail() %></td>
    <td ><%=s.getFname() %></td>
    <td><%=s.getLname() %></td>
    <td><%=s.getAddress() %></td>
    <td><%=s.getMobile() %></td>
    <td><%=s.getPassword()%></td>
    <td> <a href="update?id=<%=s.getId()%>
    &fname=<%=s.getFname()%>
    &lname=<%=s.getLname()%>
    &email=<%=s.getEmail()%>
    &password=<%=s.getPassword()%>
    &mobile=<%=s.getMobile()%>
    &address=<%=s.getAddress()%>"> Update</a>  <a href="delete?id=<%=s.getId()%>">Delete</a></td>
    
     </tr>
       <%} %>
  
  
  
</table>

</body>
</html>