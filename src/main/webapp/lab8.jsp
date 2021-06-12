
<%@page import="Tkachenko.IR12.Lab8.AlgorithmDetails"%>
<%@page import="Tkachenko.IR12.Lab8.Algorithms"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <h2 class="text-left"><b>Постановка задачі:</b> відсортувати масив цілих чисел</h2>
        <p><b>Вихідні дані:</b><br>Кількість елементів: 40000</p>
        <%! Algorithms algorithms = new Algorithms(40000);%>
        <hr>
        <% AlgorithmDetails bubbleSortDetails = algorithms.bubbleSort(); %>
        <p><b>Назва алгоритму: </b>Bubble Sort</p>
        <p><b>Час роботи:</b>  <%= bubbleSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= bubbleSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= bubbleSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): O^2</b></p>
        <hr>
        <% AlgorithmDetails heapSortDetails = algorithms.HeapSort(); %>
        <p><b>Назва алгоритму: </b>Heap Sort</p>
        <p><b>Час роботи:</b>  <%= heapSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= heapSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= heapSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): nlog(n)</b></p>
        <hr>
        <% AlgorithmDetails mergeSortDetails = algorithms.MergeSort(); %>
        <p><b>Назва алгоритму: </b>Merge Sort</p>
        <p><b>Час роботи:</b>  <%= mergeSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= mergeSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= mergeSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): nlog(n)</b></p>
        <hr>
    </body>
</html>
