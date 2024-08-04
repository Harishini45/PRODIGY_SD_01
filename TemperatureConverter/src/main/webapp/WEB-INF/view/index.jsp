<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Temperature Converter</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h1 class="text-center">Temperature Converter</h1>
            <form action="/get-value" method="post" class="form-inline">
                <div class="form-group mb-3">
                    <label for="fromUnit" class="mr-2">From</label>
                    <select name="fromUnit" id="fromUnit" class="form-select mr-2">
                        <option value="Celsius">Celsius</option>
                        <option value="Kelvin">Kelvin</option>
                        <option value="Fahrenheit">Fahrenheit</option>
                    </select>
                </div>
                <div class="form-group mb-3">
                    <label for="temperature" class="mr-2">Temperature</label>
                    <input type="number" step="0.01" name="temperature" id="temperature" class="form-control mr-2">
                </div>
                <button type="submit" class="btn btn-primary mb-3">Convert</button>
            </form>
            <%
                Double celsius = (Double) request.getAttribute("celsius");
                Double kelvin = (Double) request.getAttribute("kelvin");
                Double fahrenheit = (Double) request.getAttribute("fahrenheit");

                if (celsius != null && kelvin != null && fahrenheit != null) {
            %>
                <div class="mt-4">
                    <h3>Converted Values:</h3>
                    <p>Celsius: <%= celsius %></p>
                    <p>Kelvin: <%= kelvin %></p>
                    <p>Fahrenheit: <%= fahrenheit %></p>
                </div>
            <%
                }
            %>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
