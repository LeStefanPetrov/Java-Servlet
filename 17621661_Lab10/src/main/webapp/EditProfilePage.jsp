<html>
<head>
	<title>Lab9</title>
	<link rel="stylesheet" href="style/main.css">
	<link rel="stylesheet" href="style/style.css">
	<link rel="stylesheet" href="style/design.css">
    <meta charset="utf-8">
    	<%@ page contentType="text/html; charset=UTF-8" %>
</head>
<body LINK="#FFFFFF" VLINK= "#FFFFFF" ALINK="#FFFFFF">
	<div class="header">
		<div class="headerLinkProfiles">
			<form method="post"action="CollectionInfo">
			<a href="Login.html" class="buttonHeader">Login</a>
			<a href="Registration.html" class="buttonHeader">Registration</a>
			<input type="submit" class="buttonHeader" name="button" value="Profiles" />
			</form>			
	</div>
</div>
    </header>
	<%
	String username = null;
	String phone = null;
	String city = null;
	String address = null;
	int id = 0;
	if(session.getAttribute("username") == null || session.getAttribute("phone") == null ||
	   session.getAttribute("city") == null || session.getAttribute("address") == null  ||
	   session.getAttribute("id") == null){
	    response.sendRedirect("Login.html");
	}else {
	    username = (String) session.getAttribute("username");
	    phone = (String) session.getAttribute("phone");
	    city = (String) session.getAttribute("city");
	    address = (String) session.getAttribute("address");
	    id = (int) session.getAttribute("id");
	}
	

	String name = null, job = null, description = null;
	String ProSkill1 = null, ProSkill2 = null, ProSkill3 = null, ProSkill4 = null;
	String PerSkill1 = null, PerSkill2 = null, PerSkill3 = null;
	int ProSkill1Value = 0, ProSkill2Value = 0, ProSkill3Value = 0, ProSkill4Value = 0;
	int PerSkill1Value = 0, PerSkill2Value = 0, PerSkill3Value = 0;
	name = "Иван";
	job = "Студент";
	description = "Инфо"; 
	ProSkill1 = "Java";
	ProSkill2 = "HTML";
	ProSkill3 = "CSS";
	ProSkill4 = "JavaScript";
	PerSkill1 = "Communicative";
	PerSkill2 = "Teamwork";
	PerSkill3 = "Creativity";
	
	username = (String) session.getAttribute("username");
	phone = (String) session.getAttribute("phone");
	city = (String) session.getAttribute("city");
	address = (String) session.getAttribute("address");
	id = (int) session.getAttribute("id"); %>
	
	<main class="main">
	<div style="padding-bottom:70px"></div>	
		<div class="shell">
			<div style="padding-bottom:50px"></div>
	<form method="post" action="EditProfile">
	<div class="containerInfo">
		<img src="images/user.jpg" width="25%" height="100%">
		<div class="containerInfoText">
                <div style="padding-left:35px"><h1>Профилна информация</h1></div>
                <div style="padding-bottom:10px"></div>
                <div style="padding-left:35px"><h2>Име:</h2></div>
                <input type="text" id="name" name="name" placeholder="Enter a name" value="<%=name%>">
                <div style="padding-bottom:10px"></div>
                <div style="padding-left:35px"><h2>Работа:</h2></div>
                <input type="text" id="job" name="job" placeholder="Enter a job" value="<%=job%>">
                <div style="padding-bottom:10px"></div>
                <div style="padding-left:35px"><h2>Описание:</h2></div>
				<textarea id="description" rows="4" cols="80" name="description"><%=description%></textarea>
		</div>
		
	</div>
						
			<h1 class="heading centered">Умения</h1>
			<div class="info-box">
				<div class="pro-skills">
					<h2 class="heading centered">Професионални</h2>
						<input type="text" id="ProSkill1" name="ProSkill1" placeholder="Enter a job" value="<%=ProSkill1%>">
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="ProSkill1Value" id="ProSkill1Value" value="<%=ProSkill1Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<input type="text" id="ProSkill2" name="ProSkill2" placeholder="Enter a job" value="<%=ProSkill2%>">
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="ProSkill2Value" id="ProSkill2Value" value="<%=ProSkill2Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<input type="text" id="ProSkill3" name="ProSkill3" placeholder="Enter a job" value="<%=ProSkill3%>">
			<div class="slidecontainer">
  				<input type="range" min="1" max="100" " class="slider" name="ProSkill3Value" id="ProSkill3Value" value="<%=ProSkill3Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<input type="text" id="ProSkill4" name="ProSkill4" placeholder="Enter a job" value="<%=ProSkill4%>">
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="ProSkill4Value" id="ProSkill4Value" value="<%=ProSkill4Value%>">
				</div>
				<div class="pers-skills">
					<h2 class="heading centered">Личностни</h2>
					<input type="text" id="PerSkill1" name="PerSkill1" placeholder="Enter a job" value="<%=PerSkill1%>">
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="PerSkill1Value" id="PerSkill1Value" value="<%=PerSkill1Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<input type="text" id="PerSkill2" name="PerSkill2" placeholder="Enter a job" value="<%=PerSkill2%>">
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="PerSkill2Value" id="PerSkill2Value" value="<%=PerSkill2Value%>">
			</div>
			<div style="padding-bottom:20px"></div>
			<input type="text" id="PerSkill3" name="PerSkill3" placeholder="Enter a job" value="<%=PerSkill3%>">
			<div class="slidecontainer">
  				<input type="range" min="1" max="100"  class="slider" name="PerSkill3Value" id="PerSkill3Value" value="<%=PerSkill3Value%>">
				</div>
			</div>

			<h1 class="heading centered contact-heading">Контакти</h1>
			<div class="info-box">
				<div class="contact-box">
					<span class="text">Потребителско име</span>
					<input type="text" id="username" name="username" placeholder="Enter username" value="<%=username%>">
				</div>
				<div class="contact-box">
					<span class="text">Град</span>
					<span class="contact-text"><input type="text" id="city" name="city" placeholder="Enter a city" value="<%=city%>"></span>
				</div>
				<div class="contact-box">
					<span class="text">Телефон</span>
					<span class="contact-text"> <input type="text" id="phone" name="phone" placeholder="Enter a phone number" value="<%=phone%>"></span>
				</div>
				<div class="contact-box">
					<span class="text">Улица</span>
					<span class="contact-text"><input type="text" id="address" name="address" placeholder="Enter a address" value="<%=address%>"></span>
				</div>
				<input type="hidden" id="id" name="id"  value="<%=id%>">
						<div style="padding-bottom:50px"></div>
		<center><button class="button" name="SaveButton">Запази</button></center>
		<div style="padding-bottom:50px"></div>
		</form>		
			</div>
		</div>
	</main>	
	<footer class="footer"></footer>
</body>
</html>
