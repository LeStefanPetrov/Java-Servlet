<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="style/design.css" type="text/css" >
   <link rel="stylesheet" href="style/style.css" type="text/css" >
    <link rel="stylesheet" href="style/main.css" type="text/css" >

</head>

<body style="background-color:#f4f4f4;">

	<div class="header">
		<div class="headerLinkProfiles">
			<form method="post"action="CollectionInfo">
			<a href="Login.html" class="buttonHeader">Login</a>
			<a href="Registration.html" class="buttonHeader">Registration</a>
			<input type="submit" class="buttonHeader" name="button" value="Profiles" />
			</form>			
		</div>
	</div>
<div style="padding-bottom:75px"></div>

<center>
		<table style="width:60%" id="t01">
		  <tr background-color: #012e5e;>
		    <th>Email</th>
		    <th>Phone Number</th>
		    <th>City</th>
		    <th>Address</th>
		  </tr>
		  <%@page import="java.util.ArrayList"%>
		  <%@page import="Package_IT.User"%>
		  
		  <% 
		  ArrayList<User> val=(ArrayList)request.getSession().getAttribute("list");
		  
	      for (User us : val) { %>
			<tr>
		    <td><%out.println(us.getUsername());%></td>
		    <td><%out.println(us.getPhone());%></td>
		    <td><%out.println(us.getCity());%></td>
		    <td><%out.println(us.getAddress());%></td>
		  </tr>
		 <% }
		  
		  %>
		  
		</table>
	</center>	




</body>
</html>