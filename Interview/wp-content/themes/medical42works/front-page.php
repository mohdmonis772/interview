<?php get_header() ?>

<section class="home_banner" style="background-image: url('<?php echo get_field('banner_bg_image') ?>');">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="banner">
					<h5 class=""><?php echo get_field('banner_subtitle') ?></h5>
					<h1 class=""><?php echo get_field('banner_title') ?></h1>
					<p class=""><?php echo get_field('banner_description') ?></p>
					<a href="<?php echo get_field('banner_button_link') ?>" class="know_more"><?php echo get_field('banner_button_text') ?><i class="icofont-long-arrow-right"></i></a>
				</div>
			</div>
			<div class="col-md-6"></div>
		</div>
	</div>
</section>

<section class="book_consultation">
	<div class="container">
		<div class="row bookconsult">
			<div class="col-md-4">
				<h2 class="conslt_head">Book Consultation</h2>
				<p>Please select a service related to your inquiry. If you  don't find what you need. Fill out our contact form.</p>
			</div>
			<div class="col-md-8">
				<div class="enquiry_form">
					<div class="formgroup">
						<input type="text" placeholder="Name">
						<input type="tel" placeholder="Phone Number">
					</div>
					<div class="formgroup_selct">
						<select>
							<option>Choose Services</option>
							<option>Choose Services</option>
							<option>Choose Services</option>
						</select>
						<a class="frmsubmt" type="submit" href="javascript:;">Submit<i class="icofont-long-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="welcome_allure">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-md-6">
				<div class="image_vidoe">
					<img src="<?php echo get_field('welcome_image') ?>">
					<div class="overplay">
						<img src="<?php bloginfo('template_url') ?>/images/play.svg">
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<h2><?php echo get_field('welcome_title') ?></h2>
				<p><?php echo get_field('welcome_content') ?> </p>
				<a href="<?php echo get_field('welcome_button_link') ?>"><?php echo get_field('welcome_button_text') ?> <i class="icofont-long-arrow-right"></i></a>
			</div>
		</div>
	</div>
</section>

<section class="why_choose_us"
		style="background-image: url('<?php echo get_field('why_choose_us_image') ?>');">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="whychs_cont">
					<h2><?php echo get_field('why_choose_us_title') ?></h2>
					<div class="chooses_why">
						<div class="why_item">
							<div class="item_img_why">
								<img src="<?php echo get_field('item_1_image') ?>">
							</div>
							<div class="item_cont_why">
								<h3><?php echo get_field('item_1_name') ?></h3>
								<p><?php echo get_field('item_1_detail') ?></p>
							</div>
						</div>
						<div class="why_item">
							<div class="item_img_why">
								<img src="<?php echo get_field('item_2_image') ?>">
							</div>
							<div class="item_cont_why">
								<h3><?php echo get_field('item_2_name') ?></h3>
								<p><?php echo get_field('item_2_detail') ?></p>
							</div>
						</div>
						<div class="why_item">
							<div class="item_img_why">
								<img src="<?php echo get_field('item_3_image') ?>">
							</div>
							<div class="item_cont_why">
								<h3><?php echo get_field('item_3_name') ?></h3>
								<p><?php echo get_field('item_3_detail') ?></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
</section>

<section class="loremipsum">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img class="lorepsmimg" src="<?php echo get_field('lorem_image') ?>">
			</div>
			<div class="col-md-8">
				<div class="loremdollor">
					<h2><?php echo get_field('lorem_title') ?></h2>
					<?php echo get_field('lorem_content') ?>
					
				</div>
			</div>
		</div>
	</div>
</section>


<section class="our_services">
	<div class="container">
		<div class="row">
			<h2 class="our_servcs"><?php echo get_field('services_title') ?></h2>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="srvcitemslist">
				<?php 
					$args = array(
						 'post_type' => 'service',
						 'posts_per_page' => -1,
					);
					query_posts($args);
					while(have_posts()) : the_post();
				?>
					<div class="srvc_item">
						<div class="item_imgsrvc">
							<img src="<?php echo get_the_post_thumbnail_url() ?>">
						</div>
						<div class="item_contsrvc">
							<h3><?php the_title() ?></h3>
							<p><?php the_content() ?></p>
						</div>
					</div>
					<?php endwhile; ?>
					
				</div>
				<a href="" class="srvc_viewall">View All <i class="icofont-long-arrow-right"></i></a>
			</div>
			<div class="col-md-6 ourservicimg">
				<img class="srvimg" src="<?php bloginfo('template_url') ?>/images/woomn.png">
			</div>
		</div>
	</div>
</section>




<?php get_footer() ?>