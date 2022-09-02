@if($ps->hot_sale == 1)

<!-- Clothing and Apparel Area Start -->
<!-- <section class="product-tab">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="section-top">
					<div class="row">
						<div class="col-lg-12 remove-padding">
							<div class="section-top">
								<div class="mb-4">
									<h2 class="section-title" style="color:#25cbf2">
										POPULAR PRODUCTS
									</h2>
								</div>
								<div class="row" style="justify-content: center">
									<div style = "vertical-align: center" class="mr-2">
										<img src="{{ asset('assets/images/tazzershopUI/Rectangle49.png') }}" width="60%" height="3px">
									</div>
									<div>
										<i class="fas fa-bookmark" style="font-size:24px; color:#25cbf2"></i>
									</div>
									<div style="vertical-align: center" class="ml-2">
										<img src="{{ asset('assets/images/tazzershopUI/Rectangle49.png') }}" width="60%" height="3px">
									</div>
								</div>
								<div style="text-align:center">
									<p style="font-size: 18px">Ut ut ipsum imperdiet libero viverra blandit. Aliquam ultricies libero ullamcorper, dignissim ipsum<br> sed, placerat ante. Sed luctus</p>
								</div>
							</div>
						</div>
					</div>
					<ul class="nav">
						<li class="nav-item">
							<a class="nav-link active" id="pills-tab1-tab" data-toggle="pill" href="#pills-tab1" role="tab" aria-controls="pills-tab1" aria-selected="false">{{ $langg->lang30 }}</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-tab2-tab" data-toggle="pill" href="#pills-tab2" role="tab" aria-controls="pills-tab2" aria-selected="true">{{ $langg->lang31 }}</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-tab3-tab" data-toggle="pill" href="#pills-tab3" role="tab" aria-controls="pills-tab3" aria-selected="false">{{ $langg->lang32 }}</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-tab4-tab" data-toggle="pill" href="#pills-tab4" role="tab" aria-controls="pills-tab4" aria-selected="false">{{ $langg->lang33 }}</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="tab-content">
					<div class="tab-pane fade active show" id="pills-tab1" role="tabpanel" aria-labelledby="pills-tab1-tab">
						<div class="row">
								@foreach($hot_products as $prod)
									@include('includes.product.list-product')
								@endforeach
						</div>
					</div>
					<div class="tab-pane fade" id="pills-tab2" role="tabpanel" aria-labelledby="pills-tab2-tab">
						<div class="row">
								@foreach($latest_products as $prod)
									@include('includes.product.list-product')
								@endforeach
						</div>
					</div>
					<div class="tab-pane fade" id="pills-tab3" role="tabpanel" aria-labelledby="pills-tab3-tab">
						<div class="row">
								@foreach($trending_products as $prod)
									@include('includes.product.list-product')
								@endforeach
						</div>
					</div>
					<div class="tab-pane fade" id="pills-tab4" role="tabpanel" aria-labelledby="pills-tab4-tab">
							<div class="row">
									@foreach($sale_products as $prod)
									@include('includes.product.list-product')
								@endforeach
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</section> -->
<section  class="trending total-margin">
	<div class="container-fluid mb-5">
		<div class="row mb-5">
			<div class="col-lg-12 remove-padding">
				<div class="section-top">
					<div class="mb-4">
						<h2 class="section-title" style="color:#25cbf2">
							POPULAR PRODUCTS
						</h2>
					</div>
					<div class="row mb-4" style="justify-content: center">
						<div style = "vertical-align: center" class="mr-2">
							<img src="{{ asset('assets/images/tazzershopUI/Rectangle49.png') }}" width="60%" height="3px">
						</div>
						<div>
							<i class="fas fa-bookmark" style="font-size:24px; color:#25cbf2"></i>
						</div>
						<div style="vertical-align: center" class="ml-2">
							<img src="{{ asset('assets/images/tazzershopUI/Rectangle49.png') }}" width="60%" height="3px">
						</div>
					</div>
					<div style="text-align:center">
						<!-- <p style="font-size: 18px">Ut ut ipsum imperdiet libero viverra blandit. Aliquam ultricies libero ullamcorper, dignissim ipsum<br> sed, placerat ante. Sed luctus</p> -->
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="trending-item-slider">
					@foreach($best_products as $prod)
						@include('includes.product.slider-product')
					@endforeach
				</div>
			</div>

		</div>
	</div>
</section>
<!-- Clothing and Apparel Area start -->

@endif

@if($ps->bottom_small == 1)
	<!-- Banner Area One Start -->
	<section class="banner-section" style="margin:0 -6%">
			@foreach($bottom_small_banners->chunk(2) as $chunk)
			<div class="row banner-shop" style="padding: 10px">
				@foreach($chunk as $img)
					<div class="col-lg-6 col-md-6 col-6 remove-padding banner-img">
						<div class="left">
							<button class="btn small-banner-btn">Shop Now</button>
							<a class="banner-effect" href="{{ $img->link }}" target="_blank">
								<img src="{{asset('assets/images/banners/'.$img->photo)}}" alt="" style="height: auto">
							</a>
						</div>
					</div>
				@endforeach
			</div>
			@endforeach
		</div>
	</section>
	<!-- Banner Area One Start -->
@endif

@if($ps->best == 1)
<!-- Phone and Accessories Area Start -->
<!-- <section class="phone-and-accessories categori-item">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="section-top">
					<h2 class="section-title">
						{{ $langg->lang27 }}
					</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					@foreach($best_products as $prod)
					@include('includes.product.home-product')
					@endforeach
				</div>
			</div>
		</div>
	</div>
</section> -->
<section  class="trending total-margin">
	<div class="container-fluid mb-4">
		<div class="row mb-5">
			<div class="col-lg-12 remove-padding">
				<div class="section-top">
					<div class="mb-4">
						<h2 class="section-title" style="color:#25cbf2">
							DEALS OF THE DAY
						</h2>
					</div>
					<div class="row mb-4" style="justify-content: center">
						<div style = "vertical-align: center" class="mr-2">
							<img src="{{ asset('assets/images/tazzershopUI/Rectangle49.png') }}" width="60%" height="3px">
						</div>
						<div>
							<i class="fas fa-bookmark" style="font-size:24px; color:#25cbf2"></i>
						</div>
						<div style="vertical-align: center" class="ml-2">
							<img src="{{ asset('assets/images/tazzershopUI/Rectangle49.png') }}" width="60%" height="3px">
						</div>
					</div>
					<div style="text-align:center" >
						<!-- <p style="font-size: 18px">Ut ut ipsum imperdiet libero viverra blandit. Aliquam ultricies libero ullamcorper, dignissim ipsum<br> sed, placerat ante. Sed luctus</p> -->
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="trending-item-slider">
					@foreach($top_products as $prod)
						@include('includes.product.slider-product')
					@endforeach
				</div>
			</div>

		</div>
	</div>
</section>
<!-- Phone and Accessories Area start-->
@endif



@if($ps->large_banner == 1)
	<!-- Banner Area One Start -->
	<section class="banner-section"  style="margin:0 -6%">
		<div class="container-fluid">
			@foreach($large_banners->chunk(1) as $chunk)
				<div class="row">
					@foreach($chunk as $img)
						<div class="col-lg-12 remove-padding">
							<div class="img">
								<a class="banner-effect" href="{{ $img->link }}">
									<img src="{{asset('assets/images/banners/'.$img->photo)}}" alt="">
								</a>
								<!-- <div class="left-letter-banner">
									<h2 class="left-letter-banner-title" style="color: white">THIS WEEK'S DEAL</h2>
									<p class="left-letter-banner-desc" style="color: white">Spring's collection has discounted now!</p>
								</div>
								<div class="right-letter-banner">
									<p class="left-letter-banner-desc" style="color: white">ON SHOES</p>
									<h2 class="left-letter-banner-title" style="color: white">UP TO 20% OFF</h2>
									<a href="{{ route('front.discount_Category') }}"><button class="btn large-banner-btn">Shop Now</button></a>
								</div> -->
							</div>
						</div>
					@endforeach
				</div>
			@endforeach
		</div>
	</section>
	<!-- Banner Area One Start -->
@endif

@if($ps->flash_deal == 1)
	<!-- Electronics Area Start -->
	<!-- <section class="categori-item electronics-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 remove-padding">
					<div class="section-top">
						<h2 class="section-title">
							Deals Of The Day
						</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="flash-deals">
						<div class="flas-deal-slider">

							@foreach($discount_products as $prod)
								@include('includes.product.flash-product')
							@endforeach
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Electronics Area start-->
@endif

@if($ps->top_rated == 1)
	<!-- Electronics Area Start -->
	<!-- <section class="categori-item electronics-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 remove-padding">
					<div class="section-top">
						<h2 class="section-title">
							{{ $langg->lang28 }}
						</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="row">

						@foreach($top_products as $prod)
							@include('includes.product.top-product')
						@endforeach

					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Electronics Area start-->
@endif

@if($ps->big == 1)
<!-- Clothing and Apparel Area Start -->
<!-- <section class="categori-item clothing-and-Apparel-Area">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="section-top">
					<h2 class="section-title">
						{{ $langg->lang29 }}
					</h2>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					@foreach($big_products as $prod)
					@include('includes.product.home-product')
					@endforeach
				</div>
			</div>
		</div>
	</div>
	</div>
</section> -->
<!-- Clothing and Apparel Area start-->
@endif

@if($ps->partners == 1)
<!-- Partners Area Start -->
<section class="brand-section partners">
		<div class="container-fluid">
			<div class="row mb-5">
				<div class="col-lg-12 remove-padding">
					<div class="section-top">
						<div class="mb-4">
							<h2 class="section-title" style="color:#25cbf2">
								OUR TOP BRANDS
							</h2>
						</div>
						<div class="row mb-4" style="justify-content: center">
							<div style = "vertical-align: center" class="mr-2">
								<img src="{{ asset('assets/images/tazzershopUI/Rectangle49.png') }}" width="60%" height="3px">
							</div>
							<div>
								<i class="fas fa-bookmark" style="font-size:24px; color:#25cbf2"></i>
							</div>
							<div style="vertical-align: center" class="ml-2">
								<img src="{{ asset('assets/images/tazzershopUI/Rectangle49.png') }}" width="60%" height="3px">
							</div>
						</div>
						<div style="text-align:center" >
							<!-- <p style="font-size: 18px">Ut ut ipsum imperdiet libero viverra blandit. Aliquam ultricies libero ullamcorper, dignissim ipsum<br> sed, placerat ante. Sed luctus</p> -->
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-lg-12 padding-decrease">
					<div class="brand-slider">
						@foreach($partners->chunk(1) as $partner)
							<div class="slide-item">
								@foreach($partner as $data)
									<a href="{{ $data->link }}" target="" class="brand">
										<img src="{{ asset('assets/images/partner/'.$data->photo) }}" alt="">
									</a>
								@endforeach		
							</div>						
						@endforeach
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Partners Area End -->
@endif


<!-- Subscribe Area One Start -->
<section class="subscribe-section" style="margin:0 -6% 10px -6%">
	<!-- <div class="container-fluid p-5" style="background-image: url({{asset('assets/images/subscribe-back.png')}}); background-size: 100% 100%;"> -->
	<div class="container-fluid p-5" style="background-color: #25cbf2">
		<div class="">
			<!-- <div class="text-left" style="margin-left: 30px"> -->
			<div class="" style="margin-left: 30px">
				<div class="row">
					<h2 class="subscrib_title col-lg-5 col-sm-12" style="font-size: 36px; color: white">Subscribe Our Newsletter</h2>
					<form action="{{route('front.subscribe')}}" id="subscribeform" method="POST" class="col-lg-7 col-sm-12">
						{{csrf_field()}}
						<div class="form-group">
							<input type="email" name="email"  placeholder="{{ $langg->lang741 }}" required="" style="width: 47%; border: none; border-radius: 25px; padding: 10px 20px; font-size: 20px">
							<button id="sub-btn sub-btn-ext" type="submit" style="padding: 10px 20px; border: none; border-radius: 35px; margin-left: -50px; color:white; background: #592a65; font-size: 20px">{{ $langg->lang742 }}</button>
						</div>
					</form>
				</div>
				<!-- <p class="subscribe_text">£ 20 discount for your first order</p>
				<h2 class="subscrib_title" style="font-size: 36px; color: white">Join Our newsletter and get...</h2>
				<p class="subscribe_text">Join our email subscription now to get updates on promotions and coupons</p>
				<form action="{{route('front.subscribe')}}" id="subscribeform" method="POST">
					{{csrf_field()}}
					<div class="form-group">
						<input type="email" name="email"  placeholder="{{ $langg->lang741 }}" required="" style="width: 70%; border: none; border-radius: 3px; padding: 10px; font-size: 13px">
						<button id="sub-btn sub-btn-ext" type="submit" style="padding: 10px; border: none; border-radius: 3px; margin-left: -10px; background: white; font-size: 13px">{{ $langg->lang742 }}</button>
					</div>
				</form> -->
			</div>
		</div>
	</div>
</section>
<!-- Subscribe Area One End -->


	<!-- main -->
	<script src="{{asset('assets/front/js/mainextra.js')}}"></script>