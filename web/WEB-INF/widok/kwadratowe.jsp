
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>kwadratowe</title>
</head>
<body>
<div id="kontener">
    <div id="naglowek">
        <h1>Nagłówek</h1>
    </div>
    <div id="srodek">
        <div id="menu">
            <nav id="page-nav">
                <label for="hamburger">&#9776;</label>
                <input type="checkbox" id="hamburger"/>
                <ul>
                    <li><a href="lab2.html"> Strona główna</a> </li>
                    <li><a href="kwadratowe.html"> ax<sup>2</sup>+bx+c=0</a></li>
                    <li><a href=""> Link3</a> </li>
                </ul>
            </nav>
            <div id="newsy">
                <p id="news1"></p>
                <p id="news2"></p>

            </div>

        </div>
        <div id="tresc">
            <form id="dane" name="dane">
                <input placeholder="a" type="number" id="wsp_a" name="wa">x<sup>2</sup>+
                <input placeholder="b" type="number" id="wsp_b" name="wb">x+
                <input placeholder="c" type="number" id="wsp_c" name="wc"><br/>
                <div id="przycisk">
                    <input type="button" id="licz" value="Oblicz">
                </div>
            </form>
            <div id="lista"></div>
        </div>
    </div>
    <div id="stopka">
        &copy;2020 DG
    </div>
</div>
</body>
</html>
