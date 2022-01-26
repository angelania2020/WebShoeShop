<%-- 
    Document   : addProducer
    Created on : Jan 26, 2022, 10:10:46 PM
    Author     : Angelina
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Добавление производителя</title>
    </head>
    <body>
        <h1>Новый производитель</h1>
        <h3>${infoText}</h3>
        <form action="createProducer" method="POST">
            Название производителя: <input type="text" name="producerName"><br>
            Страна производителя: <input type="text" name="producerCountry"><br>
            <input type="submit" value="Добавить"><br>

        </form>
    </body>
</html>
