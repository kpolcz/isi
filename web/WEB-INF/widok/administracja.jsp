
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action="DG?akcja=administracja" method="post">
    <fieldset id="kolor">
        Kolor tła: <input type="text" name="kolor" value="${applicationScope.kolorTla}"/><br/>
        <input type="submit" value="Zapisz"/>
    </fieldset>

</form>
<form action="DG?akcja=uprawnienia" method="post">

<jsp:useBean id="uzytkownicy" class="ti.DGuzytkownicy" scope="application"/>
    <%=uzytkownicy.generujUzytkownikow()%>

    <input type="submit" value="Aktualizuj Uprawnienia" />
</form>