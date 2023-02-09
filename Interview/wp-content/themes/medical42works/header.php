<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php wp_title() ?></title>
	<?php wp_head() ?>
  </head>
  <body>
	<!-- Header -->
	<header class="theme__header">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
			  <div class="container-fluid">
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
				  <a class="navbar-brand" href="<?php bloginfo('url') ?>"><?php dynamic_sidebar('header_logo') ?></a>
				  
				  <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item">
					  <a class="nav-link active" aria-current="page" href="/">Home</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="#">About Us</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="#">Contact Us</a>
					</li>
				  </ul>
				  <div class="menu_search">
				  <a href=""><i class="icofont-search-1"></i></a>
				  </div>
				  <div class="menu_phone">
					<a href="">
						<div class="phone_icon">
							<img src="<?php bloginfo('template_url') ?>/images/phone.svg" alt="">
						</div>
						<div class="phone_info">
							<div class="phone_name">Appointments:</div>
							<div class="phone_no">(123) 123-4567</div>
						</div>
					</a>
				  </div>
				  <!--<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				  </form>-->
				</div>
			  </div>
			</nav>
		</div>
	</header>
	<!-- header close -->
	
	