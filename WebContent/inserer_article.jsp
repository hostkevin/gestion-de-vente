<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="base.*"     %>
 <%@ page import="java.util.*"     %>
<%@ page import="java.io.*"     %>
<%@page import="java.sql.*" %>
<%@ page import="article.*"     %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%
  try{

	   Database data = new Database();
	   request.setAttribute("type",data.type());
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
	   String requete ="SELECT  * FROM   Article" ;
	   Statement stmt = con.createStatement();
	   ResultSet res = stmt.executeQuery(requete);
  
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
<meta charset="utf-8">
      
     
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
                     <h1 style="color:white;" >BACK OFFICE</h1>
                     
                  </div>
               </div>
            </div>
           </div>
           </div>
<div class="container h-100">
    <div class="d-flex justify-content-center h-100">
      <div class="d-flex justify-content-center">

<form action="Magasin" method="post"  enctype="multipart/form-data">
 
   


    
    <div class="input-group mb-3" >
              
   <input type="text" name="nom_article" placeholder="nom de l'article" style="border : 2px solid white;">
   </div>
   <div class="input-group mb-3" >
             
   <input type="number" name="prix_article" placeholder="prix de l'article" style="border : 2px solid white;">
   </div>
   <div class="input-group mb-3" >
              
   <input type="number" name="quantiter_article" placeholder="quantiter de l'article" style="border : 2px solid white;">
   </div>
   <div class="input-group mb-3" >
              
   <input type="text" name="type_de_l'article" placeholder="type de l'article" style="border : 2px solid white;">
   </div>
   <input type="file" name="image" placeholder="inserer une image">
   <div class="input-group mb-3" >
     
 
   </div>
   <button type="submit" class="btn login_btn"> valider </button>
   <a href="index.jsp"> retour</a>
</form>
   <form action="Supprimer.jsp"> 
  <label for="pet-select">Crud:</label>
<select name="pets" id="pet-select">
   <option value="Supprimer.jsp">supprimer </option>
    <input type="submit"  value="voir"> 
   </select> 
    
  </form>
  
  <form action="Recherche" method="post"> 
  <label for="pet-select">recherche avancer</label>
 <div class="input-group mb-3" >
             
   <input type="text" name="recherche" placeholder="rechercher" style="border : 2px solid white;">
   </div>
<select name="recherche_avancer" >
<c:forEach items="${type}" var="type"> 
<option value="">${type} </option>
   </c:forEach>
    <input type="submit"  value="voir"> 
    </select>
   </form>
  </div>
  </div>
  </div>
 
        	
    <div id="about" class="about">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Nos produit en stock</h2>
                     <span>d to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum gener</span>
                  </div>
               </div>
            </div>
           </div>
           </div>    
   <div class="row" style="border: 8px solid white;">
   <%  while(res.next()) { %>
		       <div class="col-lg-4 col-md-4 all dev">
                        <div class="product-item">
                             <img src="img/<% out.println(res.getString("image"));%>"style="width:220px; height:200px"> 
	    	                       <div class="down-content">
	    	                        <h3 style="color:black;"><%  out.println(res.getString("nom")); %></h3>
	      	                       <h3 style="color:black;"> Prix : <%  out.println(res.getInt("prix"));%></h3>
	                               <h3 style="color:black;"> quantiter :<% out.println(res.getInt("quantiter")); %></h3>
	    	                       <h3 style="color:black;">type :  <% out.println(res.getString("type")); %></h3> 
	    	                      
                      <ul class="stars">
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                          </ul>	            
	        </div>
	          </div>  
                  
	             </div>
	               
	                    
	         <%   } %>	
	                </div>
	             
	             
	               <% 
	    
}   catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					

	      }
	      
	      %>

</body>
</html>              
   
 
 

 
  
  
  
  
  
  
  
  
  
  
  
  
 




</div>
</div>
</div>
</body>
</html>