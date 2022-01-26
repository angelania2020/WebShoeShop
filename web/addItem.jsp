<%-- 
    Document   : addItem
    Created on : Jan 25, 2022, 4:30:46 PM
    Author     : Angelina
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Добавление обуви</title>
    </head>
    <body>
        <h1>Новая обувь</h1>
        <h3>${infoText}</h3>
        <form action="createItem" method="POST">
            Название обуви: <input type="text" name="itemName"><br>
            Цвет обуви: <input type="text" name="color"><br>
            Размер обуви: <input type="number" name="itemSize"><br>
            Производитель: <select name="chosenProducer">
                <c:forEach var="producers" items="${producers}">
                    <option value="${producers.id}">${producers.producerName}</option>
                </c:forEach>
            </select><br>
            Цена: <input type="number" name="itemCost"><br>
            Количество пар: <input type="number" name="quantity"><br>
            <input type="submit" value="Добавить"><br>

        </form>
    </body>
</html>
