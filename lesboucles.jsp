<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>


<% String valeur = request.getParameter("valeur"); %>
    
<% if (valeur != null && !valeur.isEmpty()) { %>

    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>

<h2>Exercice 1 : Réponse</h2>
<p>Ecrire le code afin de produire un carré d'étoiles</p>
<% for (int j = 1; j <= cpt; j++) { %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
        <%= "*" %>
    <% } %>
    </p>
<% } %>


<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*</br>**</br>***</br>****</br>*****</p>

<h2>Exercice 2 : Réponse </h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<%
   for (int i = 1; i <= cpt; i++) {
       for (int j = 1; j <= i; j++) {
%>
           <%="*"%>
<%
       }
%>
       <br>
<%
   }
%>



<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>****</br>***</br>**</br>*</p>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<%
   for (int i = cpt; i >= 1; i--) {
       for (int j = 1; j <= i; j++) {
%>
           <%= "*" %>
<%
       }
%>
       <br>
<%
   }
%>


<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>

<h2>Exercice 4 : Réponse </h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<%
   for (int i = 1; i <= cpt; i++) {
       for (int j = cpt - i; j > 0; j--) {
%>
           <%= "&nbsp;&nbsp;" %>
<%
       }
       for (int k = 1; k <= i; k++) {
%>
           <%= "*" %>
<%
       }
%>
       <br>
<%
   }
%>


<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle isocele aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>

<h2>Exercice 5 : Réponse </h2>
<p>Ecrire le code afin de produire un triangle isocele aligné sur la droite</p>

<% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 1; j <= cpt - i; j++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

<h2>Exercice 6 : Réponse </h2>
<p>Ecrire le code afin de produire un losange</p>

<% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 1; j <= cpt - i; j++) { %>
        <%= "&nbsp;&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>
</p>

<% for (int i = cpt; i >= 1; i--) { %>
    <% for (int j = 1; j <= cpt - i; j++) { %>
        <%= "&nbsp;&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>
<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<h2>Exercice 7 : Réponse </h2>
<p>Ecrire le code afin de créer une table de multiplication</p>
<%
   for (int i = 1; i <= 10; i++) {
%>
       <p><%= cpt %> x <%= i %> = <%= cpt*i %></p>
<%
   }
%>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
