<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/lg/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/lg/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="lg/css/style.css">
     <link rel="stylesheet" href="css/style.css">
	</head>
	<body class="img js-fullheight" style="background-image: url(lg/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">B I E N V E N U</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      
		      	<form action="Log_trait" class="signin-form" method="POST">
		      		<div class="form-group">
		      			<input type="text" class="form-control" placeholder="votre email" name="email_login" required>
		      		</div>
	            <div class="form-group">
	              <input id="password-field" type="password" class="form-control" placeholder="votre mot de passe" name="mdp_login" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>
	            </div>
	          </form>
	          <p class="w-100 text-center">&mdash; Or &mdash;</p>
	          <div class="social d-flex text-center">
	          	<a href="Inscription.jsp" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> S'inscrire</a>
	          	 <a href="Admin.jsp"  class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Admin</a>
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>


</body>
</html>