<%@page import="recherche.Recherche_details"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="base.*"     %>
 <%@ page import="java.util.*"     %>
<%@ page import="java.io.*"     %>
<%@page import="java.sql.*" %>
<%@ page import="article.*"     %>
 <%@ page import="recherche.*"     %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   

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
                     <h1 style="color:white;" >Resultat de votre recherche</h1>
                     
                  </div>
               </div>
            </div>
           </div>
           </div>
<div class="row" style="border: 8px solid white;">
<c:forEach items="${search}" var="recherche"> 
		    
		       <div class="col-lg-4 col-md-4 all dev">
                        <div class="product-item">
                             <img src="img/${search.nom} "style="width:220px; height:200px"> 
	    	                       <div class="down-content">
	    	                        <
	    	                      
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
              </c:forEach>
               </div>


</body>
</html>