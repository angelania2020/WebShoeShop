<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1 class="mt-3 d-flex justify-content-center">Новый покупатель</h1>
<h3 class="mt-3 d-flex justify-content-center">${infoText}</h3>

<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-6">
            <form action="createCustomer" method="POST">
                <fieldset>
                    <div class="form-group">
                        <label for="firstName" class="form-label mt-4">Имя покупателя</label>
                        <input type="text" name="firstName" class="form-control" id="firstName">
                    </div>
                    <div class="form-group">
                        <label for="lastName" class="form-label mt-4">Фамилия покупателя</label>
                        <input type="text" name="lastName" class="form-control" id="lastName">
                    </div>
                    <div class="form-group">
                        <label for="telephone" class="form-label mt-4">Телефон</label>
                        <input type="text" name="telephone" class="form-control" id="telephone">
                    </div>
                    <div class="form-group">
                        <label for="balance" class="form-label mt-4">Баланс (евроцентов)</label>
                        <input type="number" name="balance" class="form-control" id="balance">
                    </div>
                    <button type="submit" class="btn btn-primary my-3">Добавить</button>
                </fieldset>
            </form>
        </div>
    </div>
</div>
