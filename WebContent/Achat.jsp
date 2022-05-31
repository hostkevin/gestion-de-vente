<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"     %>
<%@ page import="confirmation_trai.*"     %>
 <%@ page import="base.*" %>
<%
try {
		
	 
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
	    String requete ="SELECT DISTINCT * FROM achat WHERE saisiseur=? " ;
		 PreparedStatement ps1 = con.prepareStatement(requete);
		 ps1.setObject(1, session.getAttribute("nom"));
		 ResultSet rs2 = ps1.executeQuery();
          %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
  <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="css-pc_point/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css-pc_point/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css-pc_point/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css-pc_point/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!-- Bootstrap core CSS -->
    <link href="template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="template/assets/css/fontawesome.css">
    <link rel="stylesheet" href="template/assets/css/templatemo-sixteen.css">
    <link rel="stylesheet" href="template/assets/css/owl.css">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
<title>Insert title here</title>
</head>
<body>
<div id="about" class="about">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>vos achat effectuer</h2>
                     <span>voir vos achats</span>
                  </div>
               </div>
            </div>
           </div>
           </div>
 <div class="row">
               <%while(rs2.next()) {%>
		         <div class="col-lg-4 col-md-4 all dev">
                        <div class="product-item">
                             <img src="img/<% out.println(rs2.getString("image"));%>"style="width:220px; height:200px"> 
	    	                      <div class="down-content">
	    	                     <h3 style="color:black;"><%  out.println(rs2.getString("nom")); %></h3>   
	    	                      
	      	                       
	    	                      </div>
	    	                      </div>
	    	                      </div>
	    	                      
	    	                  
                               
	      <% } %>
	      
                                </div>
	    <%
}   catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					

	      }
	      
	      %>     



</body>
</html>