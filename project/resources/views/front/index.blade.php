@extends('layouts.front')

@section('content')

	@if($ps->slider == 1)

		@if(count($sliders))

			@include('includes.slider-style')
		@endif
	@endif

	@if($ps->slider == 1)
		<!-- Hero Area Start -->
		<section class="hero-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 decrease-padding">
							@if($ps->slider == 1)
							@if(count($sliders))
								<div class="hero-area-slider">
									<div class="slide-progress"></div>
									<div class="intro-carousel">
										@foreach($sliders as $key => $data)
											<div class="intro-content {{$data->position}} twoslide" style="background-image: url({{asset('assets/images/sliders/'.$data->photo)}})">
												<div class="slider-content">
													<!-- layer 1 -->
													<div class="layer-1">
														<h4 style="font-size: {{$data->subtitle_size}}px; color: {{$data->subtitle_color}}; font-family: Microsoft PhagsPa; font-weight:BOLD" class="subtitle subtitle{{$data->id}}" data-animation="animated {{$data->subtitle_anime}}"><strong>{{$data->subtitle_text}}</strong></h4>
														@if ($key == 0) 
															<h2 style="font-size: {{$data->title_size}}px; color: {{$data->title_color}}; font-family: Nueva Std; font-weight:BOLD; font-stretch: condensed;" class="title title{{$data->id}}" data-animation="animated {{$data->title_anime}}">Up to <span style="color:#E7FF10">40%</span> Off</h2>
														@elseif ($key == 1)
															<h2 style="font-size: {{$data->title_size}}px; color: {{$data->title_color}}; font-family: Nueva Std; font-weight:BOLD; font-stretch: condensed;" class="title title{{$data->id}}" data-animation="animated {{$data->title_anime}}">{{$data->title_text}}</h2>
														@else 
															<h2 style="font-size: {{$data->subtitle_size}}px; color: {{$data->subtitle_color}}; font-family: Microsoft PhagsPa; font-weight:BOLD" class="title title{{$data->id}}" data-animation="animated {{$data->title_anime}}">{{$data->title_text}}</h2>
														@endif
														
													</div>
													<!-- layer 2 -->
													<div class="layer-2">
														<p style="font-size: {{$data->details_size}}px; color: {{$data->details_color}}; font-family: Poppins"  class="text text{{$data->id}}" data-animation="animated {{$data->details_anime}}">{{$data->details_text}}</p>
													</div>
													<!-- layer 3 -->
													<div class="layer-3">
														@if ($key > 2)
														<a href="{{$data->link}}" target="" class="mybtn1" style="background-color:#592A65; border: 2px solid white; border-radius: 2px!important"><span>{{ $langg->lang25 }} <i class="fas fa-chevron-right"></i></span></a>
														@else
														<a href="{{$data->link}}" target="" class="mybtn1" style="background-color:#25CBF3; border: 2px solid white; border-radius: 2px!important"><span>{{ $langg->lang25 }} <i class="fas fa-chevron-right"></i></span></a>
														@endif
													</div>
												</div>
											</div>
										@endforeach
									</div>
								</div>
							@endif
						@endif
					</div>
				</div>	
			</div>
		</section>
		<!-- Hero Area End -->
	@endif


	@if($ps->featured_category == 1)

	{{-- Slider Bottom Banner Start --}}
	<section class="slider_bottom_banner">
		<div class="container-fluid">
		@foreach(DB::table('featured_banners')->get()->chunk(4) as $data1)
			<div class="row">
				@foreach($data1 as $data)
				<div class="col-lg-3 col-6">
				<a href="{{ $data->link }}" target="_blank" class="banner-effect">
					<img src="{{ $data->photo ? asset('assets/images/featuredbanner/'.$data->photo) : asset('assets/images/noimage.png') }}" alt="">
				</a>
				</div>
				@endforeach
			</div>
			@if(!$loop->last)
			<br>
			@endif
		@endforeach		
	
			</div>
		</div>
	</section>
	{{-- Slider Botom Banner End --}}

	@endif




	@if($ps->service == 1)

{{-- Info Area Start --}}
<section class="info-area total-margin">
	<div class="container-fluid">

		@foreach($services->chunk(3) as $chunk)

		<div class="row">

			<div class="col-lg-12 p-0">
				<div class="info-big-box  white-background">
					<div class="row" style="padding: 0 15px">
						@foreach($chunk as $service)
						<div class="col-4 col-xl-4 p-0 m-10 border_right" >
							<div class="info-box">
								<div class="icon">
									<img src="{{ asset('assets/images/services/'.$service->photo) }}">
								</div>
								<div class="info">
									<div class="details">
										<h4 class="title">{{ $service->title }}</h4>
										<p class="text">
											{!! $service->details !!}
										</p>
									</div>
								</div>
							</div>
						</div>
						@endforeach
					</div>
				</div>
			</div>

		</div>

		@endforeach

	</div>
</section>
{{-- Info Area End  --}}
@endif	

	<style>
		.img1 {
			width:100%;
			padding-top:100%;
			position: relative;
			/* width: 150px; */
			background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url(assets/images/tazzershopUI/gardening.png);
			background-repeat: no-repeat;
			background-size: cover;
			background-color: rgba(255, 255, 0, 0.75);
		}		
		.img2 {
			width:100%;
			padding-top:100%;
			/* width: 150px; */
			background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url(assets/images/tazzershopUI/cleaning.png);
			background-repeat: no-repeat;
			background-size: cover;
			background-color: rgba(0,0,0,0.3)
		}
		.img3 {
			width:100%;
			padding-top:100%;
			position: relative;
			/* width: 150px; */
			background: url(assets/images/tazzershopUI/craft.png);
			background-repeat: no-repeat;
			background-size: cover;
		}
		.img4 {
			width:100%;
			padding-top:100%;
			position: relative;
			/* width: 150px; */
			background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url(assets/images/tazzershopUI/dog.png);
			background-repeat: no-repeat;
			background-size: cover;
		}
		.img5 {
			width:100%;
			padding-top:100%;
			position: relative;
			/* width: 150px; */
			background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url(assets/images/tazzershopUI/security.png);
			background-repeat: no-repeat;
			background-size: cover;
		}
	</style>
	<!-- Styles for man and women area start -->
	<section class="categori-item styles-for-man-Area total-margin mt-5">
		<div class="container-fluid">
			<div class="row">
				<div class="left-side-28">
					<div class="row" style="margin: 2px; border: 1px solid #d6dede">						
						<div class="col-lg-12">
							<div class="row">
								<div class="img1 banner-effect">
									<div class="img1-text">
										<p class="side-title"><strong>GARDENING AND<br>LAND<span style="font-weight: bolder">SCA</span>PING <span>PRODUCTS, SUPPLIES & TOOLS</span></strong></p>
										<p class="side-description">BECOME AN<br>ATTRACTIVE MAN!</p>
									</div>
								</div>
								<div class="img2 mt-2 banner-effect">
									<div class="img2-text">
										<p class="side-title"><strong>CLEAN<span style="font-weight: bolder">ING</span> PRODUCTS <br> <span> SUPPLIES & TOOLS</span></strong></p>
										<p class="side-description">NEW PRODUCTS!</p>
										<a href="" class="shop-now"><b>SHOP NOW</b></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="middle-side-44">
					<div class="row" style="margin: 2px;">						
						<div class="col-lg-12">
							<div class="row craft-product" style="padding:0 4%">
								<div class="img3 banner-effect">
									<div class="img3-text">
										<p class="middle-title" style="color:#25cbf2"><strong>CRAFT PRODUCT</strong></p>
										{{-- <p class="middle-description" style="color: black">VIEW OUR FAVOURITE ITEMS THIS AUTION</p> --}}
										<a href="" class="shop-now"><b>SHOP NOW</b></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="right-side-28">
					<div class="row" style="margin: 2px; border: 1px solid #d6dede">				
						<div class="col-lg-12">
							<div class="row">
								<div class="img4 banner-effect">
									<div class="img4-text">
										<p class="side-title"><strong><span style="font-weight: bolder">PET</span> PRODUCTS <br> SUPPLIES & TOOLS</strong> </p>
										<p class="side-description">BEST AGENCY<br>FOR YOUR PET</p>
									</div>
								</div>
								<div class="img5 mt-2 banner-effect">
									<div class="img5-text">
										<p class="side-title"><strong>SECURITY PROD<span style="font-weight: bolder">UCTS</span> <br> SUPPLIES & TOOLS </strong></p>
										<p class="side-description">WE PROVIDE BEST PRODUCT</p>
										<a href="" class="shop-now"><b>SHOP NOW</b></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
	<!-- Styles for man and women area end -->

	@if($ps->featured == 1)
		<!-- Trending Item Area Start -->
		<section  class="trending total-margin">
			<div class="container-fluid mb-5">
				<div class="row mb-5">
					<div class="col-lg-12 remove-padding">
						<div class="section-top">
							<div class="mb-4">
								<h2 class="section-title" style="color:#25cbf2">
									FEATURED PRODUCTS
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
							<!-- <div style="text-align:center">
								<p style="font-size: 18px">Ut ut ipsum imperdiet libero viverra blandit. Aliquam ultricies libero ullamcorper, dignissim ipsum<br> sed, placerat ante. Sed luctus</p>
							</div> -->
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="trending-item-slider">
							@foreach($feature_products as $prod)
								@include('includes.product.slider-product')
							@endforeach
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- Tranding Item Area End -->
	@endif

	@if($ps->small_banner == 1)
		<!-- Banner Area One Start -->
		<section class="banner-section total-margin">
			<div class="container-fluid mb-5">
				@foreach($top_small_banners->chunk(3) as $chunk)
					<div class="row">
						@foreach($chunk as $img)
							<div class="col-lg-4 remove-padding">
								<div class="left">
									<a class="banner-effect" href="{{ $img->link }}" target="_blank">
										<img src="{{asset('assets/images/banners/'.$img->photo)}}" alt="">
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

	<section id="extraData" class="total-margin">
		<div class="text-center">
		<img class="{{ $gs->is_loader == 1 ? '' : 'd-none' }}" src="{{asset('assets/images/'.$gs->loader)}}">
		</div>
	</section>


@endsection

@section('scripts')
	<script>
        $(window).on('load',function() {

            setTimeout(function(){

                $('#extraData').load('{{route('front.extraIndex')}}');

            }, 1);
        });
		

	</script>
@endsection