<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>les conditions</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les conditions</h1>

    <form action="#" method="post">
        <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1"></p>
        <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
    <% } %>
    <h2>Exercice 1 : Réponse</h2>
    <form action="#" method="post">
        <p>Saisir la valeur A : <input type="text" id="inputValeur1Exo1" name="valeur1Exo1"></p>
        <p>Saisir la valeur B : <input type="text" id="inputValeur2Exo1" name="valeur2Exo1"></p>
        <p>Saisir la valeur C : <input type="text" id="inputValeur3Exo1" name="valeur3Exo1"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% String valeur1Exo1 = request.getParameter("valeur1Exo1"); %>
    <% String valeur2Exo1 = request.getParameter("valeur2Exo1"); %>
    <% String valeur3Exo1 = request.getParameter("valeur3Exo1"); %>

    <%-- Vérification de la condition entre les trois valeurs --%>
    <% if (valeur1Exo1 != null && valeur2Exo1 != null && valeur3Exo1 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int valeur1Exo1 = Integer.parseInt(valeur1Exo1); %>
        <% int valeur2Exo1 = Integer.parseInt(valeur2Exo1); %>
        <% int valeur3Exo1 = Integer.parseInt(valeur3Exo1); %>

        <% if (valeur3Exo1 >= valeur1Exo1 && valeur3Exo1 <= valeur2Exo1) { %>
            <p>Oui, C est compris entre A et B.</p>
        <% } else if (valeur3Exo1 >= valeur2Exo1 && valeur3Exo1 <= valeur1Exo1) { %>
            <p>Oui, C est compris entre A et B.</p>
        <% } else { %>
            <p>Non, C n'est pas compris entre A et B.</p>
        <% } %>
    <% } %>
<h2>Exercice 2 : Pair ou Impair ?</h2>
    <form action="#" method="post">
        <p>Saisir une valeur : <input type="text" id="inputNombre" name="nombre"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération de la valeur --%>
    <% String nombre = request.getParameter("nombre"); %>

    <%-- Vérification de la parité de la valeur --%>
    <% if (nombre != null) { %>
        <%-- Conversion de la valeur en entier pour la vérification --%>
        <% int intNombre = Integer.parseInt(nombre); %>

        <%-- Condition if pour vérifier si le nombre est pair ou impair --%>
        <% if (intNombre % 2 == 0) { %>
            <p>Le nombre saisi est pair.</p>
        <% } else { %>
            <p>Le nombre saisi est impair.</p>
        <% } %>
    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
    
