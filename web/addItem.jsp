<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="mt-3 d-flex justify-content-center">Новая обувь</h1>
<h3 class="mt-3 d-flex justify-content-center">${infoText}</h3>

<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-6">
            <form action="createItem" method="POST">
                <fieldset>
                    <div class="form-group">
                        <label for="itemName" class="form-label mt-4">Название обуви</label>
                        <input type="text" name="itemName" class="form-control" id="itemName">
                    </div>
                    <div class="form-group">
                        <label for="color" class="form-label mt-4">Цвет обуви</label>
                        <input type="text" name="color" class="form-control" id="color">
                    </div>
                    <div class="form-group">
                        <label for="itemSize" class="form-label mt-4">Размер обуви</label>
                        <input type="number" name="itemSize" class="form-control" id="itemSize">
                    </div>
                    <div class="form-group">
                        <label for="chosenProducer" class="form-label mt-4">Производитель</label>
                        <select name="chosenProducer" class="form-select" id="chosenProducer">
                            <c:forEach var="producers" items="${producers}">
                                <option value="${producers.id}">${producers.producerName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="itemCost" class="form-label mt-4">Цена</label>
                        <input type="number" name="itemCost" class="form-control" id="itemCost">
                    </div>
                    <div class="form-group">
                        <label for="quantity" class="form-label mt-4">Количество пар</label>
                        <input type="number" name="quantity" class="form-control" id="quantity">
                    </div>
                    <button type="submit" class="btn btn-primary my-3">Добавить</button>
                </fieldset>
            </form>
        </div>
    </div>
</div>
