<%--
 * footer.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="date" class="java.util.Date" />

<hr />

<b>Copyright &copy; <fmt:formatDate value="${date}" pattern="yyyy" /> Acme, Inc.</b>
<br />
<div id="pruebacookie"></div>

<script>
$(document).ready(function() {
	if (getCookie("accepted") !== ("true")) {
		var language = getCookie("language");
		if (language == "" || language === "en") {
			document.getElementById("pruebacookie").innerHTML = "We use cookies to improve your experience. If you continue surfing this website, we consider that you accept their use. <button type='button' onclick='acceptCookies()'>Accept</button>";
		} else {
			document.getElementById("pruebacookie").innerHTML = "Usamos cookies para mejorar su experiencia. Si continúa navegando en este sitio, consideramos que acepta su uso. <button type='button' onclick='acceptCookies()'>Aceptar</button>";
		}
	}
});

function acceptCookies() {
	document.cookie = "accepted=true; path=/";
	document.getElementById("pruebacookie").innerHTML = "";
}

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
</script>