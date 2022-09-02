<a href="{{ route('front.product', $prod->slug) }}" class="item" style="border:none!important">
		<div class="item-img">
			<!-- @if(!empty($prod->features))
			<div class="sell-area">
				@foreach($prod->features as $key => $data1)
				<span class="sale"
					style="background-color:{{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</span>
				@endforeach
			</div>
			@endif -->
			<img class="img-fluid"
				src="{{ $prod->photo ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png') }}"
				alt="">
			@if($prod->stock == 0)
				<div class="sold-out">
					SOLD OUT
				</div>
			@elseif($prod->hot == 1)
				<div class="hot-prod">
					HOT
				</div>
			@elseif($prod->latest == 1) 
				<div class="new-prod">
					New
				</div>
			@endif
		</div>
		<div class="info">
			<h5 class="name" >{{ $prod->showName() }}</h5>
			<h4 class="price">{{ $prod->showPrice() }}
				<del><small>{{ $prod->showPreviousPrice() }}</small></del><sapn style="color:#24B166"> 15% Off</span></h4>
			<div class="stars">
				<div class="ratings">
					<div class="empty-stars"></div>
					<!-- <div class="full-stars"
						style="width:{{App\Models\Rating::ratings($prod->id)}}%"></div> -->
					<div class="full-stars"
					style="width:95%; color:#FFBC20"></div>
				</div>
			</div>
			<div class="item-cart-area">
				
				<!-- <ul class="item-cart-options"> -->
					<div class="item-cart-options">
							@if(Auth::guard('web')->check())
							<button>
								<span href="javascript:;" class="add-to-wish"
									data-href="{{ route('user-wishlist-add',$prod->id) }}" data-toggle="tooltip"
									data-placement="top" title="{{ $langg->lang54 }}"><i
										class="shopping_cart"></i>
								</span>
								ADD TO CART
							</button>
							
							@else
							<button class="btn btn-info mt-1 bg-white" style="color: #592a65; border-color: black" >
								<span href="javascript:;" rel-toggle="tooltip" title="{{ $langg->lang54 }}"
									data-toggle="modal" id="wish-btn" data-target="#comment-log-reg"
									data-placement="top">
									<i class="icofont-heart-alt"></i>
								</span>
								ADD TO CART
							</button>
							
							@endif
					</div>
					<!-- <li>
						<span  class="quick-view" rel-toggle="tooltip" title="{{ $langg->lang55 }}" href="javascript:;" data-href="{{ route('product.quick',$prod->id) }}" data-toggle="modal" data-target="#quickview" data-placement="top">
								<i class="fas fa-shopping-basket"></i>
						</span>
					</li>
					<li>
							<span href="javascript:;" class="add-to-compare"
							data-href="{{ route('product.compare.add',$prod->id) }}" data-toggle="tooltip"
							data-placement="top" title="{{ $langg->lang57 }}" >
							<i class="icofont-exchange"></i>
						</span>
					</li> -->
				<!-- </ul> -->
			</div>
		</div>
</a>
