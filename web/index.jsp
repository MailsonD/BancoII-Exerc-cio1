<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 28/11/18
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compastible" content="IE=edge">
    <title>Atividade SVG e JTS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/style.css" />
    <script src="main.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
</head>

<body>
<center><label class="title">Atividade SVG e JTS</label></center>
<div class="row"><br>
    <div class="col-sm-3">
        <ul class="list-group">
            <form action="/" method="post">
                <li class="list-group-item">
                    <center><label class="cidade">Cidade 1</label></center><br>
                    <label class="estado">Estado</label>
                    <select class="form-control">
                        <option>Para�ba</option>
                        <option>Pernambuco</option>
                    </select>
                    <label class="estado">Cidade</label>
                    <select class="form-control">
                        <option>Concei��o</option>
                        <option>Triunfo</option>
                    </select><br>
                </li>
            </form>
            <li class="list-group-item">
                <b><label class="dados">Popula��o:</label></b><br>
                <b><label class="dados">Densidade Demogr�fica:</label></b><br>
                <b><label class="dados">�rea:</label></b><br>
                <b><label class="dados">Per�metro:</label></b><br>
            </li>

        </ul>
    </div>
    <div class="col-sm-3">
        <ul class="list-group">
            <form action="/" method="post">
                <li class="list-group-item">
                    <center><label class="cidade">Cidade 2</label></center><br>
                    <label class="estado">Estado</label>
                    <select class="form-control">
                        <option>Para�ba</option>
                        <option>Pernambuco</option>
                    </select>
                    <label class="estado">Cidade</label>
                    <select class="form-control">
                        <option>Concei��o</option>
                        <option>Triunfo</option>
                    </select><br>
                </li>
            </form>
            <li class="list-group-item">
                <b><label class="dados">Popula��o:</label></b><br>
                <b><label class="dados">Densidade Demogr�fica:</label></b><br>
                <b><label class="dados">�rea:</label></b><br>
                <b><label class="dados">Per�metro:</label></b><br>
            </li>

        </ul>
    </div>


</div>
</body>

</html>
