<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% 
try {
		
    
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
    String requete ="SELECT * FROM Panier WHERE saisseur=? " ;
	 PreparedStatement ps1 = con.prepareStatement(requete);
	 ps1.setObject(1, session.getAttribute("nom"));
	 ResultSet rs1 = ps1.executeQuery();
	 %>
        


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>pcoint</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css-pc_point/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css-pc_point/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css-pc_point/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
       <link href="template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="template/assets/css/fontawesome.css">
    <link rel="stylesheet" href="template/assets/css/templatemo-sixteen.css">
    <link rel="stylesheet" href="template/assets/css/owl.css">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
</head>
<body>

                            
                    <section class="banner_main">
               <div class="container-fluid">
                  <div class="row d_flex">
                     <div class="col-md-5">
                        <div class="text-bg">
                           <h1>Computer and <br>laptop shop</h1>
                           <strong>Free Multipurpose Responsive</strong>
                           
                                   
                           <a href="Achat.jsp?nom=<%out.println(session.getAttribute("nom")); %>">Vos achat </a>
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
             
                            
                            <h2> panier de <%out.println(session.getAttribute("nom")); %>  </h2>
          <div class="row" style="border: 8px solid white;">                
        <% while(rs1.next()) { %>
	      
<div class="col-lg-4 col-md-4 all dev">
                        <div class="product-item">
                            <img src="img/<% out.println(rs1.getString("img"));  %>" width=200px; height=200px>
	                           <div class="down-content"> 
	       <h3 style="color:black;"><%  out.println(rs1.getString("nom")); %></h3>
	      	                       <h3 style="color:black;"> Prix : <%  out.println(rs1.getInt("prix"));%></h3>
	                               <h3 style="color:black;"> quantiter :<% out.println(rs1.getInt("quantiter")); %></h3>
	    	                       <h3 style="color:black;">type :  <% out.println(rs1.getString("type")); %></h3> 
	                                 <h3 style="color:black;">saisisseur :  <% out.println(rs1.getString("saisseur")); %></h3> 
	         
	       <% 
	      
	       int id_panier =rs1.getInt("id_panier");
	       String nom_panier = rs1.getString("nom");     
	        int Prix_panier = rs1.getInt("prix"); 
	        int quantiter_panier = rs1.getInt("quantiter"); 
	        String type_panier = rs1.getString("type"); 
	        String saisiseur=rs1.getString("saisseur");
	        String img =rs1.getString("img");
	       %>
	       <a href="Confirmation?nom=<%out.println(nom_panier) ; %>&prix=<%out.println(Prix_panier);  %>&saisiseur=<%out.println(saisiseur);  %>&vola=<%out.println(session.getAttribute("vola"));  %>&img=<%out.println(img);  %>"> <button class="btn login_btn" >confirmer</button>  </a>
	       
	       <a href="Supprimer?nom=<%out.println(nom_panier) ; %>&saisiseur=<%out.println(saisiseur);  %>&id_panier=<%out.println(id_panier);%>"><button class="btn login_btn" >supprimer</button></a>   
	        
	       
	        </div>
	         </div>
	           </div>
	         
	        <% } %>
	        </div>
	     
	   
	    <% } catch(Exception e){
	    	e.printStackTrace();
	    }
	    
	    
	    %>  
            
                        


	<a href="welcome.jsp?nom=<%out.println(session.getAttribute("nom")); %>"> retour</a>
	</body>
	    </html>
	     
	     
	     