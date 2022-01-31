<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="mt-3 d-flex justify-content-center">Новый производитель</h1>
<h3 class="mt-3 d-flex justify-content-center">${infoText}</h3>

<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-6">
            <form action="createProducer" method="POST">
                <fieldset>
                    <div class="form-group">
                        <label for="producerName" class="form-label mt-4">Название производителя</label>
                        <input type="text" name="producerName" class="form-control" id="producerName">
                    </div>
                    <div class="form-group">
                        <label for="producerCountry" class="form-label mt-4">Страна производителя</label>
                        <input type="text" name="producerCountry" class="form-control" id="producerCountry">
                    </div>
                    <button type="submit" class="btn btn-primary my-3">Добавить</button>
                </fieldset>
            </form>
        </div>
    </div>
</div>
