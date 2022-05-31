<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/lg/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="lg/css/style.css">

	</head>
	<body class="img js-fullheight" style="background-image: url(lg/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section"></h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<legend class="mb-4 text-center">INSCRIPTION</legend>
		      	<form action="Trait" class="signin-form" method="POST">
		      		<div class="form-group">
		      			<input type="text" class="form-control" placeholder="votre nom" required  name="nom">
		      		</div>
	            <div class="form-group">
	              <input id="password-field"  class="form-control" placeholder="votre prenom" required name="prenom">
	              
	            </div>
	              <div class="form-group">
		      			<input type="text" class="form-control" placeholder="votre email" required  name="email">
		      		</div>
	                   <div class="form-group">
		      			<input  class="form-control" type="password" placeholder="votre mdp" required  name="mdp">
		      		    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
		      		</div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary submit px-3">valider</button>
	            </div>
	           
	          </form>
             <div class="form-group">
                <a href="index.jsp"  class="px-2 py-2 ml-md-1 rounded"> retour</a>
                </div>
</body>
</html>
</body>
</html>