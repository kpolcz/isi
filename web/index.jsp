
<%@ page contentType="text/html;charset=UTF-8" language="java" import="ti.Narzedzia, ti.DGuzytkownicy" %>
<html style="background-color: ${applicationScope.kolorTla};">
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="styl.css">

</head>
<body>

</body>
<jsp:useBean id="uzytkownicy" class="ti.DGuzytkownicy" scope="application"/>
<jsp:useBean id="uzytkownik" class="ti.DGuzytkownik" scope="session"/>

<% String strona = request.getParameter("strona");
  if (uzytkownik.getUprawnienia() == 1) {

    strona = Narzedzia.parsujStrone(strona, "glowna;przegladaj;trzecia;ustawienia;quiz");

  } else if (uzytkownik.getUprawnienia() == 2) {
    strona = Narzedzia.parsujStrone(strona, "glowna;przegladaj;trzecia;ustawienia;administracja");

  } else
    strona = Narzedzia.parsujStrone(strona, "glowna;przegladaj;link3;rejestracja");

%>
<div id="kontener">
  <div id="naglowek">
    <jsp:include page="/WEB-INF/widok/naglowek.jsp"/>
  </div>
  <div id="srodek">
    <div id="menu">
      <jsp:include page="/WEB-INF/widok/menu.jsp"/>
    </div>
    <div id="tresc">
      <jsp:include page="/WEB-INF/widok/tresc.jsp">
        <jsp:param name="jaka_strona" value="<%=strona%>"/>
      </jsp:include>
    </div>
    <div id="stopka">
      <jsp:include page="/WEB-INF/widok/stopka.jsp"/>

    </div>
  </div>
</div>
</html>