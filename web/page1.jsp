<%-- 
    Document   : page1
    Created on : Jan 25, 2022, 2:02:49 PM
    Author     : Angelina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1><br>
        <h3>${infoText}</h3>
        <p>${producer.producerName} ${producer.producerCountry}</p>
        <p>Покупатель: ${customer.firstName} ${customer.lastName}. Телефон: ${customer.telephone}. Баланс: ${customer.balance}.</p>
        <h1><a href="index.html">index</a></h1>
    </body>
</html>
