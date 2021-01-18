<!DOCTYPE html>
<html lang="en">
 <meta charset="utf-8">
    	<%@ page contentType="text/html; charset=UTF-8" %>
<head>
  <link rel="stylesheet" type="text/css" href="style/design.css">
  <link rel="stylesheet" type="text/css" href="style/style.css">
  <link rel="stylesheet" type="text/css" href="style/main.css">
<style>

</style>
</head>

<body style="background-color:#f4f4f4;" LINK="#FFFFFF" VLINK= "#FFFFFF" ALINK="#FFFFFF">

<%

HttpSession sessionID2 = request.getSession(false);
if(sessionID2 == null && sessionID2.isNew()) {
    response.sendRedirect("Login.jsp");
}
String username = "No email", phone = "No phone number", city = "No city", address = "No address";
String sessionID = null;
int id = 0;
String name = "No name", job = "No job", description = "No description";
String ProSkill1 = "No skill", ProSkill2 = "No skill", ProSkill3 = "No skill", ProSkill4 = "No skill";
String PerSkill1 = "No skill", PerSkill2 = "No skill", PerSkill3 = "No skill";
int ProSkill1Value = 0, ProSkill2Value = 0, ProSkill3Value = 0, ProSkill4Value = 0;
int PerSkill1Value = 0, PerSkill2Value = 0, PerSkill3Value = 0;
if(session.getAttribute("username") != null) {
	username = (String) session.getAttribute("username");
}

if(session.getAttribute("phone") != null) {
	phone = (String) session.getAttribute("phone");
}

if(session.getAttribute("city") != null) {
	city = (String) session.getAttribute("city");
}

if(session.getAttribute("address") != null) {
	address = (String) session.getAttribute("address");
}

if(session.getAttribute("name") != null) {
	name = (String) session.getAttribute("name");
}

if(session.getAttribute("job") != null) {
	job = (String) session.getAttribute("job");
}

if(session.getAttribute("description") != null) {
	description = (String) session.getAttribute("description");
}

if(session.getAttribute("ProSkill1") != null) {
	ProSkill1 = (String) session.getAttribute("ProSkill1");
}

if(session.getAttribute("ProSkill2") != null) {
	ProSkill2 = (String) session.getAttribute("ProSkill2");
}

if(session.getAttribute("ProSkill3") != null) {
	ProSkill3 = (String) session.getAttribute("ProSkill3");
}

if(session.getAttribute("ProSkill4") != null) {
	ProSkill4 = (String) session.getAttribute("ProSkill4");
}

if(session.getAttribute("PerSkill1") != null) {
	PerSkill1 = (String) session.getAttribute("PerSkill1");
}

if(session.getAttribute("PerSkill2") != null) {
	PerSkill2 = (String) session.getAttribute("PerSkill2");
}

if(session.getAttribute("PerSkill3") != null) {
	PerSkill3 = (String) session.getAttribute("PerSkill3");
}

if(session.getAttribute("ProSkill1Value") != null) {
	ProSkill1Value = (int) session.getAttribute("ProSkill1Value");
}

if(session.getAttribute("ProSkill2Value") != null) {
	ProSkill2Value = (int) session.getAttribute("ProSkill2Value");
}

if(session.getAttribute("ProSkill3Value") != null) {
	ProSkill3Value = (int) session.getAttribute("ProSkill3Value");
}

if(session.getAttribute("ProSkill4Value") != null) {
	ProSkill4Value = (int) session.getAttribute("ProSkill4Value");
}

if(session.getAttribute("PerSkill1Value") != null) {
	PerSkill1Value = (int) session.getAttribute("PerSkill1Value");
}

if(session.getAttribute("PerSkill2Value") != null) {
	PerSkill2Value = (int) session.getAttribute("PerSkill2Value");
}

if(session.getAttribute("PerSkill3Value") != null) {
	PerSkill3Value = (int) session.getAttribute("PerSkill3Value");
}

%>

<div class="containerMainProfil">
	<div class="header">
		<div class="headerLinkProfiles">
			<form method="post" action="CollectionInfo">
			<a href="Login.html" class="buttonHeader">Login</a>
			<a href="Registration.html" class="buttonHeader">Registration</a>	
			<input type="submit" class="buttonHeader" name="button" value="Profiles" />
			</form>		
		</div>
	</div>
	<%
	String welcome = "Welcome!";
	Cookie[] cookies = request.getCookies();
	if(cookies !=null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("welcome")) {
			welcome = "";
			}
		}
	}
	%>
	<center><h1><% out.print(welcome);%></h1></center>
	<form method="GET" action="Cookies">
	   	<center><button class="button" name="Cookies">Close</button></center>
	</form>
	<div class="containerInfo">
		<img src="images/user.jpg" width="25%" height="100%">
		<div class="containerInfoText">
                <h1>Профилна информация</h1>
                <div style="padding-bottom:10px"></div>
                <h2>Име: <%=name%></h2>
                <div style="padding-bottom:10px"></div>
                <h2>Работа: <%=job%></h2>
                <div style="padding-bottom:10px"></div>
                <div style="padding-right:130px"><h2>Описание: <%=description%></h2></div>
		</div>
	</div>
	<div style="padding-bottom:20px"></div>
	
	<center><h1>Умения</h1></center>
	<div style="padding-bottom:20px"></div>
	<div class="containerSkillsProfile">
		<div class="containerSkillsLeft">
			<div style="padding-left:30px"><h3>Професионални</h3></div>
			<div style="padding-bottom:20px"></div>
			<div style="padding-left:30px"><h2><%=ProSkill1%></h2></div>
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="ProSkill1Value" id="ProSkill1Value" value="<%=ProSkill1Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<div style="padding-left:30px"><h2><%=ProSkill2%></h2></div>
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="ProSkill2Value" id="ProSkill2Value" value="<%=ProSkill2Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<div style="padding-left:30px"><h2><%=ProSkill3%></h2></div>
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="ProSkill3Value" id="ProSkill3Value" value="<%=ProSkill3Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<div style="padding-left:30px"><h2><%=ProSkill4%></h2></div>
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="ProSkill4Value" id="ProSkill4Value" value="<%=ProSkill4Value%>">
			</div>
		</div>
		<div class="containerSkillsRight">
			<div style="padding-left:30px"><h3>Личностни</h3></div>
			<div style="padding-bottom:20px"></div>
			<div style="padding-left:30px"><h2><%=PerSkill1%></h2></div>
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="PerSkill1Value" id="PerSkill1Value" value="<%=PerSkill1Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<div style="padding-left:30px"><h2><%=PerSkill2%></h2></div>
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="PerSkill2Value" id="PerSkill2Value" value="<%=PerSkill2Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<div style="padding-left:30px"><h2><%=PerSkill3%></h2></div>
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="PerSkill3Value" id="PerSkill3Value" value="<%=PerSkill3Value%>">
			</div>
		</div>
	</div>
	<div style="padding-bottom:570px"></div>
	
	<script>
	 document.getElementById("ProSkill1Value").disabled = true;
	 document.getElementById("ProSkill2Value").disabled = true;
	 document.getElementById("ProSkill3Value").disabled = true;
	 document.getElementById("ProSkill4Value").disabled = true;
	 document.getElementById("PerSkill1Value").disabled = true;
	 document.getElementById("PerSkill2Value").disabled = true;
	 document.getElementById("PerSkill3Value").disabled = true;
	</script>
	<center><h1>Контакти</h1></center>
	<div style="padding-bottom:20px"></div>
	<div class="containerContacts">
		<div class="containerContactsLeft">
			<h3>Username</h3>
		<h4><%=username%></h4>	
			<h3>Телефонен Номер</h3>
			<h4><%=phone%></h4>
		</div>
		<div class="containerContactsRight">
			<h3>Град</h3>
			<h4><%=city%></h4>
			<h3>Адрес</h3>
			<h4><%=address%></h4>
		</div>
	</div>
	<div style="padding-bottom:320px"></div>	
<div class="headerBot"></div>
</div>

</body>
</html>