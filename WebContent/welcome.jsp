<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding= "ISO-8859-1"   %>
 <%@ page import="base.*"     %>
 <%@ page import="article.*"     %>
  <%@ page import="search.*"     %>
 <%@ page import="java.sql.*"     %>
 
<%  Database data = new Database();%>
<% 
try {
		
    
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
    String requete ="SELECT  * FROM   Article" ;
	Statement stmt = con.createStatement();
	ResultSet res = stmt.executeQuery(requete);
          
          
         
          
          %>
      
<%
Search recherche = new Search();
Database db = new Database();
String search =request.getParameter("search");
recherche.setSearching(search); 
%>
<!DOCTYPE html>
<html>
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
      <!-- site metas -->
      <title>pcoint</title>
 </head>
 
     <body>
     

         <!-- header inner -->
         <div  class="head_top">
            <div class="header">
               <div class="container">
                  <div class="row">
                     <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                        <div class="full">
                           <div class="center-desk">
                              <div class="logo">
                                 <a href="index.html"><img src="images/logo.png" alt="#" /></a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                        <nav class="navigation navbar navbar-expand-md navbar-dark ">
                           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                           <span class="navbar-toggler-icon"></span>
                           </button>
                           <div class="collapse navbar-collapse" id="navbarsExample04">
                              <ul class="navbar-nav mr-auto">
                                 <li class="nav-item">
                                    <a class="nav-link" href="index.html"> Home  </a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="#about">About</a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="#contact">Contact us</a>
                                 </li>
                              </ul>
                              <div class="sign_btn"><a href="Inscription.jsp">Sign in</a></div>
                            
                           </div>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
            <!-- end header inner -->
            <!-- end header -->
            <!-- banner -->
            <section class="banner_main">
               <div class="container-fluid">
                  <div class="row d_flex">
                     <div class="col-md-5">
                        <div class="text-bg">
                           <h1>Computer and <br>laptop shop</h1>
                           <strong>Free Multipurpose Responsive</strong>
                           <span>Bienvenu ${ nom } 
                                     voici votre argent ${vola } ar  </span>
                           <a href="Panier_persone.jsp?nom=<%out.println(session.getAttribute("nom")); %>">Votre panier </a>
                        </div>
                     </div>
                     <div class="col-md-7 padding_right1">
                        <div class="text-img">
                           <figure><img src="images/top_img.png" alt="#"/></figure>
                           <h3>01</h3>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
         </div>
     
                 
 
 <form action="" method="post">
 <div class="input-group mb-3" >
<input type="text" name="search" placeholder="rechercher un article">
</div>
<div class="form-group">
<button type="submit" class="btn login_btn" > rechercher</button></p>
 </div>
 </form>
<% 
try {
	
	db.recherche(recherche);
    %>
   <%if(recherche.getSearching()!=null ) { %>
    <h1> votre recherche : </h1>
    
    
  <div class="row" style="border: 4px solid white;">
      <div class="col-lg-4 col-md-4 all dev">
                      <div class="product-item">
    <img src="img/<%out.println(db.getRecherche_img()); %>" width=200px height=200px>
      <div class="down-content">
    <% out.println(db.getRecherche_nom()); %> 
    <% out.println(db.getRecherche_prix()); %> 
    <% out.println(db.getRecherche_quantiter()); %> 
    <% out.println(db.getRecherche_type()); %> 
    
	      
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
     <% }
     else if(recherche.getSearching()!=db.getRecherche_nom()) { %>
    out.println("aucun article trouver");
    <% } %>
<% 
}catch(Exception e) {
	e.printStackTrace();
}
%>


<div id="about" class="about">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>About Pcoint</h2>
                     <span>d to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum gener</span>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-8 offset-md-2 ">
                  <div class="about_box ">
                     <figure><img src="images/about_img.png" alt="#"/></figure>
                     <a class="read_more" href="#">Read more</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
 </div>
 <div id="" class="best">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Build With Best </h2>
                     <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna</span>
                  </div>
               </div>
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
	    	                      
                     
               
	      <%
	         
	         String getimg = res.getString("image");
	    	 String getNom_article = res.getString("nom");     
	        int getPrix_article = res.getInt("prix"); 
	        int getQuantiter_article = res.getInt("quantiter"); 
	        String getType_article = res.getString("type"); 
	        %>
	       <a href="Magasin?nom_article=<% out.println(getNom_article); %>&Prix_article=<% out.println(getPrix_article); %>&quantiter_article=<% out.println(getQuantiter_article); %>&type_article=<% out.println(getType_article); %>&saisiseur=<% out.println(session.getAttribute("nom")); %>&img=<% out.println(getimg); %> " ><button class="btn login_btn" >ajouter au panier</button>  </a></p> 
	      
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
              
              



	      %>
	
   
</body>	    
</html>