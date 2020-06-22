
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="uzytkownik" class="ti.DGuzytkownik" scope="session"/>
<ul>
    <li><a href="index.jsp?strona=glowna"> Strona główna</a></li>
    <li><a href="index.jsp?strona=przegladaj"> przegladaj kursy</a></li>
    ${(uzytkownik.uprawnienia>0) ?
            '<li><a href="index.jsp?strona=ustawienia"> Ustawienia</a></li>' : ''}

    <% if (uzytkownik.getUprawnienia()==2) {  %>
    <li><a href="index.jsp?strona=administracja"> Administracja</a> </li>
    <% } %>
    ${(uzytkownik.uprawnienia<0) ?
            '<li><a href="index.jsp?strona=rejestracja"> Rejestracja</a></li>' : ''}
</ul>
<div id="newsy">
    <% if (uzytkownik.getUprawnienia()<0){%>
    <form action="DG?akcja=zaloguj" method="post">
        Login: <input type="text" name="login" style="width: 90%">
        hasło: <input type="password" name="haslo" style="width: 90%">
        <input type="submit" value="Zaloguj"><br/>
    </form>
    <%} else {%>
    <form action="DG?akcja=wyloguj" method="post">
        Jesteś zalogowany jako <b>${uzytkownik.login}</b>
        <input type="submit" value="Wyloguj"><br/>
    </form>
    <%}%>
    <p id="news1"></p>
    <p id="news2"></p>
</div>