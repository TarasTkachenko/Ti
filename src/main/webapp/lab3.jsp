
<%@page import="Tkachenko.IR12.Lab3.Lab3"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <h1>Lab 3</h1>
        <%! Lab3 lab3 = new Lab3(10);%>
        <% lab3.InitArray(); %>
        <p>Array: <%= lab3.DisplayArray() %></p>
        <p>k = 3<br>n = 7</p>
        <p>Result: <%= lab3.CountSum(3, 7) %></p>
    </body>
</html>
