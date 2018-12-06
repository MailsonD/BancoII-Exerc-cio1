<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 28/11/18
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compastible" content="IE=edge">
    <title>Atividade SVG e JTS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/style.css"/>
    <script src="js/jQuery 3.3.1.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
</head>

<body>
<center><label class="title">Atividade SVG e JTS</label></center>
<form id="form2" action="inicio" method="POST" class="row" style="margin-top: 15px;"><br>
    <div class="col-sm-3">

        <ul class="list-group">
            <li class="list-group-item">
                <center><label class="cidade">Cidade 1</label></center>
                <br>
                <label class="box">Estado</label>
                <select name="estado1" class="form-control" onchange="this.form.submit()">
                    <option>Selecione um Estado</option>
                    <c:forEach var="estado" items="${estados}">
                        <option ${estadoSelecionado1==estado?'selected':''}>${estado}</option>
                    </c:forEach>
                </select>
                <label class="box">Cidade</label>
                <select name="cidade1" class="form-control" onchange="this.form.submit()">
                    <option>Selecione uma Cidade</option>
                    <c:forEach var="cidade" items="${cidades1}">
                        <option ${cidadeSelecionada1==cidade?'selected':''}>${cidade}</option>
                    </c:forEach>
                </select><br>
            </li>
            <li class="list-group-item">
                <b><label class="dados">Popula��o: ${cidade1.getPopulacao()} habitantes</label></b><br>
                <b><label class="dados">Densidade Demogr�fica: ${cidade1.getDencidade()} hab./km�</label></b><br>
                <b><label class="dados">�rea: ${cidade1.getArea()} km�</label></b><br>
                <b><label class="dados">Per�metro: ${cidade1.getPerimetro()} km</label></b><br>
            </li>

        </ul>
    </div>
    <%--<input type="submit" onclick="gerarParam('GerarSVG')" value="Enviar" class="btn btn-primary" style="height:6%; margin-top: 390px;">--%>
    <div class="col-sm-3">
        <ul class="list-group">
            <li class="list-group-item">
                <center><label class="cidade">Cidade 2</label></center>
                <br>
                <label class="box">Estado</label>
                <select name="estado2" class="form-control" onchange="this.form.submit()">
                    <option>Selecione um Estado</option>
                    <c:forEach var="estado" items="${estados}">
                        <option ${estadoSelecionado2==estado?'selected':''}>${estado}</option>
                    </c:forEach>
                </select>
                <label class="box">Cidade</label>
                <select name="cidade2" class="form-control" onchange="this.form.submit()">
                    <option>Selecione uma Cidade</option>
                    <c:forEach var="cidade" items="${cidades2}">
                        <option ${cidadeSelecionada2==cidade?'selected':''}>${cidade}</option>
                    </c:forEach>
                </select><br>
            </li>
            <li class="list-group-item">
                <b><label class="dados">Popula��o: ${cidade2.getPopulacao()} habitantes</label></b><br>
                <b><label class="dados">Densidade Demogr�fica: ${cidade2.getDencidade()} hab./km�</label></b><br>
                <b><label class="dados">�rea: ${cidade2.getArea()} km�</label></b><br>
                <b><label class="dados">Per�metro: ${cidade2.getPerimetro()} km</label></b><br>
            </li>

        </ul>


    </div>
    <%--<input type="text" id="command" name="command" hidden>--%>
    <div class="col-sm-3">
        <label>Dist�ncia Aproximada: ${distancia} km</label><br>
        <div id="svg">
            <svg viewBox="${viewBox}" width="581" height="500">
                <path d="${cidade1.getSvg()}" stroke="black" stroke-width="0.005" fill="blue" fill-opacity=""
                    onmouseover="Tip(${cidade1.getNome()})" onmouseout="UnTip()"/>
                <c:forEach var="cidade" items="${cidades}">
                    <path d="${cidade}" stroke="black" stroke-width="0.005" fill="gray" fill-opacity=""/>
                </c:forEach>
                <path d="${cidade2.getSvg()}" stroke="black" stroke-width="0.005" fill="green" fill-opacity=""
                      onmouseover="Tip(${cidade1.getNome()})" onmouseout="UnTip()"/>
            </svg>
        </div>
    </div>
</form>
<label>Projeto Desenvolvido por <a href="https://github.com/MailsonD">Mailson Dennis</a> e <a href="https://github.com/antonioads2017">Antonio Miguel</a> </label>
<script src="js/main.js"></script>
</body>

</html>
