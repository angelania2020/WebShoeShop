<%-- 
    Document   : addCustomer
    Created on : Jan 26, 2022, 10:10:35 PM
    Author     : Angelina
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Добавление покупателя</title>
    </head>
    <body>
        <h1>Новый покупатель</h1>
        <h3>${infoText}</h3>
        <form action="createCustomer" method="POST">
            Имя покупателя: <input type="text" name="firstName"><br>
            Фамилия покупателя: <input type="text" name="lastName"><br>
            Телефон: <input type="text" name="telephone"><br>
            Баланс (евроцентов): <input type="number" name="balance"><br>
            <input type="submit" value="Добавить"><br>

        </form>
    </body>
</html>
