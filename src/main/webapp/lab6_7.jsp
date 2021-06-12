
<%@page import="Tkachenko.IR12.Lab6_7.BinaryTreePrinter"%>
<%@page import="Tkachenko.IR12.Lab6_7.BinaryTree"%>
<%@page import="Tkachenko.IR12.Lab6_7.Lab6_7_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6-7</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <%! Lab6_7_1 lab6_7_1 = new Lab6_7_1();%>
        <p>Number 1206<br> Number of digits: <%= lab6_7_1.CountDigits(1206)%></p>
        <%! BinaryTree tree = new BinaryTree();%>
        <%
            tree.add(6);
            tree.add(9);
            tree.add(7);
            tree.add(1);
            tree.add(2);
            tree.add(8);
            tree.add(4);
            tree.add(3);
        %>
        <pre>
        <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
        </pre>
        <%tree.mirrorTree(tree.getRoot()); %>
        <pre>
        <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
        </pre>
    </body>
</html>
