<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado da Média</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h2>Resultado da Média</h2>

<%
    // Recupera os parâmetros nota1 e nota2 do formulário HTML
    String nota1Str = request.getParameter("nota1");
    String nota2Str = request.getParameter("nota2");

    // Verifica se os parâmetros foram enviados e são válidos
    if (nota1Str != null && !nota1Str.isEmpty() && nota2Str != null && !nota2Str.isEmpty()) {
        try {
            // Converte os valores das notas para double
            double nota1 = Double.parseDouble(nota1Str);
            double nota2 = Double.parseDouble(nota2Str);

            // Calcula a média das notas
            double media = (nota1 + nota2) / 2;

            // Exibe o resultado da média
%>
<p>A média das notas: <%= nota1 %>, <%= nota2 %> = <%= media %></p>
<%
        } catch (NumberFormatException e) {
            // Tratamento de erro ao converter valores para double
            out.println("Valores inválidos para as notas.");
        }
    } else {
        // Exibe mensagem se os parâmetros não foram enviados
        out.println("Por favor, informe as duas notas.");
    }
%>
<button onclick="voltarParaNotas()">Voltar para Inserir Notas</button>

<script>
    function voltarParaNotas() {

        window.location.href = "index.html"; // Substitua "notas.html" pelo caminho correto da tela de inserção de notas
    }
</script>
</body>
</html>
