<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  @if (isset($page->meta_tag) && isset($page->meta_description))
  <meta name="keywords" content="{{ $page->meta_tag }}">
  <meta name="description" content="{{ $page->meta_description }}">
  <title>{{ $gs->title }}</title>
  @elseif(isset($blog->meta_tag) && isset($blog->meta_description))
  <meta property="og:title" content="{{ $blog->title }}" />
  <meta property="og:description"
    content="{{ $blog->meta_description != null ? $blog->meta_description : strip_tags($blog->meta_description) }}" />
  <meta property="og:image" content="{{ asset('assets/images/blogs' . $blog->photo) }}" />
  <meta name="keywords" content="{{ $blog->meta_tag }}">
  <meta name="description" content="{{ $blog->meta_description }}">
  <title>{{ $gs->title }}</title>
  @elseif(isset($productt))
  <meta name="keywords" content="{{ !empty($productt->meta_tag) ? implode(',', $productt->meta_tag) : '' }}">
  <meta name="description"
    content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}">
  <meta property="og:title" content="{{ $productt->name }}" />
  <meta property="og:description"
    content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}" />
  <meta property="og:image" content="{{ asset('assets/images/thumbnails/' . $productt->thumbnail) }}" />
  <meta name="author" content="GeniusOcean">
  <title>{{ substr($productt->name, 0, 11) . '-' }}{{ $gs->title }}</title>
  @else
  <meta property="og:title" content="{{ $gs->title }}" />
  <meta property="og:description" content="{{ strip_tags($gs->footer) }}" />
  <meta property="og:image" content="{{ asset('assets/images/' . $gs->logo) }}" />
  <meta name="keywords" content="{{ $seo->meta_keys }}">
  <meta name="author" content="GeniusOcean">
  <title>{{ $gs->title }}</title>
  @endif

  <link rel="stylesheet" href="{{ asset('assets/front/css/update.css?v='.time()) }}">
  <!-- favicon -->
  <link rel="icon" type="image/x-icon" href="{{ asset('assets/images/' . $gs->favicon) }}" />
  <!-- bootstrap -->
  <link rel="stylesheet" href="{{ asset('assets/front/css/bootstrap.min.css') }}">
  <!-- Plugin css -->
  <link rel="stylesheet" href="{{ asset('assets/front/css/plugin.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/animate.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/toastr.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/toastr.css') }}">

  <!-- jQuery Ui Css-->
  <link rel="stylesheet" href="{{ asset('assets/front/jquery-ui/jquery-ui.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/jquery-ui/jquery-ui.structure.min.css') }}">
  <link rel="stylesheet" href="https://www.jqueryscript.net/demo/jQuery-Plugin-For-Country-Selecter-with-Flags-flagstrap/dist/css/flags.css">

  @if ($langg->rtl == '1')

  <!-- stylesheet -->
  <link rel="stylesheet" href="{{ asset('assets/front/css/rtl/style.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/rtl/custom.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/common.css') }}">
  <!-- responsive -->
  <link rel="stylesheet" href="{{ asset('assets/front/css/rtl/responsive.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/common-responsive.css') }}">

  <!--Updated CSS-->
  <link rel="stylesheet"
    href="{{ asset('assets/front/css/rtl/styles.php?color=' . str_replace('#', '', $gs->colors) . '&amp;' . 'header_color=' . str_replace('#', '', $gs->header_color) . '&amp;' . 'footer_color=' . str_replace('#', '', $gs->footer_color) . '&amp;' . 'copyright_color=' . str_replace('#', '', $gs->copyright_color) . '&amp;' . 'menu_color=' . str_replace('#', '', $gs->menu_color) . '&amp;' . 'menu_hover_color=' . str_replace('#', '', $gs->menu_hover_color)) }}">

  @else

  <!-- stylesheet -->
  <link rel="stylesheet" href="{{ asset('assets/front/css/style.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/custom.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/common.css') }}">
  <!-- responsive -->
  <link rel="stylesheet" href="{{ asset('assets/front/css/responsive.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/front/css/common-responsive.css') }}">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!--Updated CSS-->
  <link rel="stylesheet"
    href="{{ asset('assets/front/css/styles.php?color=' . str_replace('#', '', $gs->colors) . '&amp;' . 'header_color=' . str_replace('#', '', $gs->header_color) . '&amp;' . 'footer_color=' . str_replace('#', '', $gs->footer_color) . '&amp;' . 'copyright_color=' . str_replace('#', '', $gs->copyright_color) . '&amp;' . 'menu_color=' . str_replace('#', '', $gs->menu_color) . '&amp;' . 'menu_hover_color=' . str_replace('#', '', $gs->menu_hover_color)) }}">
  @endif

  
  @yield('styles')
  

</head>

<body>

  @if ($gs->is_loader == 1)
  <div class="preloader" id="preloader"
    style="background: url({{ asset('assets/images/' . $gs->loader) }}) no-repeat scroll center center #FFF;">
  </div>
  @endif

  @if ($gs->is_popup == 1)
  @if (isset($visited))
  <div style="display:none">
    <img src="{{ asset('assets/images/' . $gs->popup_background) }}">
  </div>
  <!--  Starting of subscribe-pre-loader Area   -->
  <div class="subscribe-preloader-wrap" id="subscriptionForm" style="display: none;">
    <div class="subscribePreloader__thumb"
      style="background-image: url({{ asset('assets/images/' . $gs->popup_background) }});">
      <span class="preload-close"><i class="fas fa-times"></i></span>
      <div class="subscribePreloader__text text-center">
        <h1>{{ $gs->popup_title }}</h1>
        <p>{{ $gs->popup_text }}</p>
        <form action="{{ route('front.subscribe') }}" id="subscribeform" method="POST">
          {{ csrf_field() }}
          <div class="form-group">
            <input type="email" name="email" placeholder="{{ $langg->lang741 }}" required="">
            <button id="sub-btn" type="submit">{{ $langg->lang742 }}</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!--  Ending of subscribe-pre-loader Area   -->
  @endif
  @endif
  <section class="top-header" style="margin: 0 6%;  border:none!important">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12 col-md-6 col-4 remove-padding">
          <nav class="navbar navbar-expand-lg navbar-light" id="tazzer-top-navbar">
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapseTopNavbar"
              style="border-color: rgb(255 254 255 / 31%)">
              <span class="fa fa-bars" style="color: white"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapseTopNavbar">
              <ul class="navbar-nav mr-auto" id="top-info-navbar">
                <li class="nav-item">
                  <a href="javascript:void(0);" class="nav-link" style="text-decoration: none; color: #070707">
                    <h4 class="title" style="font-size:14px; font-weight: 600; margin-bottom: 0px">WELCOME TO OUR <b>TAZZER SHOP</b></h4>
                  </a>
                </li>
                <li class="nav-item" style="padding-top: 4px; position: absolute; right: 0px;">
                  <div class="left-content">
                    <div class="list">
                      <ul style="display: inline-flex;">
                        <li>
                          <div style="display: flex">
                            <img src="{{ asset('assets/images/language/svg/tracking.svg') }}" alt=""
                              style="top: 6px; right: 310px">
                            <span
                              style="color: #919191; padding: 0px 16px 0px 6px; top: 6px; width: 100%; right: 100px;">Order
                              Tracking</span>
                          </div>
                        </li>
                        <span style="padding: 2px 0px; margin-right: 16px; color: #D8D8D8">|</span>
                        @if ($gs->is_language == 1)
                        <li>
                          <div class="language-selector">
                            <!-- <i class="fas fa-globe-americas"></i> -->
                            {{-- <div class="form-group">
                              <label>Select Country</label><br>
                              <div class="select-country" data-input-name="country2" data-selected-country="US">
                              </div>
                            </div> --}}
                            <?php 
                              
                              function get_client_ip()
                              {
                                  $ipaddress = '';
                                  if (isset($_SERVER['HTTP_CLIENT_IP'])) {
                                      $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
                                  } else if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
                                      $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
                                  } else if (isset($_SERVER['HTTP_X_FORWARDED'])) {
                                      $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
                                  } else if (isset($_SERVER['HTTP_FORWARDED_FOR'])) {
                                      $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
                                  } else if (isset($_SERVER['HTTP_FORWARDED'])) {
                                      $ipaddress = $_SERVER['HTTP_FORWARDED'];
                                  } else if (isset($_SERVER['REMOTE_ADDR'])) {
                                      $ipaddress = $_SERVER['REMOTE_ADDR'];
                                  } else {
                                      $ipaddress = 'UNKNOWN';
                                  }

                                  return $ipaddress;
                              }
                              $PublicIP =  get_client_ip();
                              $IP = explode(":", $PublicIP)[0];
                              // $json     = file_get_contents("https://ipinfo.io/$IP/geo");
                              // API end URL 
                              $apiURL = 'https://freegeoip.app/json/'.$IP; 
                              // Create a new cURL resource with URL 
                              $ch = curl_init($apiURL); 
                              // Return response instead of outputting 
                              curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                              curl_setopt($ch, CURLOPT_HEADER, FALSE);
                              curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
                              curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
                              // Execute API request 
                              $apiResponse = curl_exec($ch);
                              // Close cURL resource 
                              curl_close($ch); 
                              // Retrieve IP data from API response 
                              $ipData = json_decode($apiResponse, true);
                              if(!empty($ipData)){ 
                                
                                $country  = $ipData['country_code'];   
                                $countryArray = ['US', 'GB', 'JP', 'BR', 'AU', 'CA', 'CN', 'EG', 'FR', 'DE', 'IN', 'IT', 'MX', 'NL', 'PL', 'SA', 'SG', 'ES', 'SE', 'TR','AE'];
                              }else{ 
                                $countryArray = '';
                              }
                          ?>
                          @switch ($country)
                            @case('JP')
                              @if(!Session::has('language') || ! Session::has('currency'))
                                {{ Session::put('currency', 'JPY') }}
                                {{ Session::put('language', 'Japanese') }}
                              @endif
                              @break;
                            @case('US')
                              @if(!Session::has('language') || ! Session::has('currency'))
                                {{ Session::put('currency', 'USD') }}
                                {{ Session::put('language', 'English') }}
                              @endif
                              @break;
                            @case('GB')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'GBP') }}
                              {{ Session::put('language', 'English') }}
                              @endif
                              @break;
                            @case('BR')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'BRL') }}
                              {{ Session::put('language', 'Portuguese') }}
                              @endif
                              @break;
                            @case('AU')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'AUD') }}
                              {{ Session::put('language', 'English') }}
                              @endif
                              @break;
                            @case('CA')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'CAD') }}
                              {{ Session::put('language', 'English') }}
                              @endif
                              @break;
                            @case('CN')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'CNY') }}
                              {{ Session::put('language', 'Chinese') }}
                              @endif
                              @break;
                            @case('EG')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'USD') }}
                              {{ Session::put('language', 'Arabic') }}
                              @endif
                              @break;
                            @case('FR')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'EUR') }}
                              {{ Session::put('language', 'French') }}
                              @endif
                              @break;
                            @case('DE')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'EUR') }}
                              {{ Session::put('language', 'German') }}
                              @endif
                              @break;
                            @case('IN')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'INR') }}
                              {{ Session::put('language', 'Hindi') }}
                              @endif
                              @break;
                            @case('IT')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'EUR') }}
                              {{ Session::put('language', 'Italian') }}
                              @endif
                              {{-- add Italian --}}
                              @break;
                            @case('MX')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'USD') }}
                              {{ Session::put('language', 'Spanish') }}
                              @endif
                              @break;
                            @case('NL')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'EUR') }}
                              {{ Session::put('language', 'German') }}
                              @endif
                              @break;
                            @case('PL')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'PLN') }}
                              {{ Session::put('language', 'English') }}
                              @endif
                              @break;
                            @case('SA')
                              {{ Session::put('currency', 'SAR') }}
                              {{ Session::put('temp', 'Arabic') }}
                              @break;
                            @case('SG')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'SGD') }}
                              {{ Session::put('language', 'English') }}
                              @endif
                              @break;
                            @case('ES')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'EUR') }}
                              {{ Session::put('language', 'Spanish') }}
                              @endif
                              @break;
                            @case('SE')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'SEK') }}
                              {{ Session::put('language', 'Swedish') }}
                              {{-- add Swedish --}}
                              @endif
                              @break;
                            @case('TR')
                              @if(!Session::has('language') || ! Session::has('currency'))
                              {{ Session::put('currency', 'TRY') }}
                              {{ Session::put('language', 'Turkish') }}
                              @endif
                              @break;
                            @default
                          @endswitch

                            @if ($countryArray !== '')
                              @foreach ($countryArray as $array)
                                @if ($country === $array)
                                  <span class="icp-flag icp-flag-<?php echo $array ?>"></span>
                                @endif
                              @endforeach
                            @else
                              <img src="{{ asset('assets/images/language/english.png') }}" alt="" style=" width: 20px; top: 6px; right: 168px">
                            @endif
                            
                            <select name="language" class="language selectors nice">
                              @foreach (DB::table('languages')->get() as $language)
                                <option id="{{$language->language}}" value="{{ route('front.language', $language->language) }}" {{ Session::has('language') ?
                                  (Session::get('language')===$language->language
                                  ? 'selected'
                                  : '')
                                  : (DB::table('languages')->where('is_default', '=', 1)->first()->id == $language->id
                                  ? 'selected'
                                  : '') }}>
                                {{ $language->language }}</option>
                              @endforeach
                            </select>                           
                          </div>
                        </li>
                        <span style="padding: 2px 0px; margin-right: 10px; color: #D8D8D8">|</span>
                        @endif
                        @if ($gs->is_currency == 1)
                        <li>
                          <div class="currency-selector">
                            <span>{{ Session::has('currency')
                              ? DB::table('currencies')->where('name', '=', Session::get('currency'))->first()->sign
                              : DB::table('currencies')->where('is_default', '=', 1)->first()->sign }}</span>
                            <select name="currency" class="currency selectors nice">
                              @foreach (DB::table('currencies')->get() as $currency)
                              <option value="{{ route('front.currency', $currency->name) }}" {{ Session::has('currency') ?
                                (Session::get('currency')==$currency->name
                                ? 'selected'
                                : '')
                                : (DB::table('currencies')->where('is_default', '=', 1)->first()->id == $currency->id
                                ? 'selected'
                                : '') }}>
                                {{ $currency->name }}</option>
                              @endforeach
                            </select>
                          </div>
                        </li>
                        <i class="fa fa-angle-down arrow-down arrow-mob-down"
                          style="padding: 5px 0px; display: none"></i>
                        @endif
                      </ul>
                    </div>
                  </div>
                </li>
              </ul>

              <ul class="navbar-nav">
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </div>
  </section>
  <!-- Top Header Area End -->
  <hr style="margin-top:0px">
  <!-- Logo Header Area Start -->
  <section class="logo-header" style="margin: 0 6%">
    <div class="container-fluid">
      <div class="row " style="align-items: center">
        <div class="col-lg-2 col-sm-6 col-5 remove-padding logo-img">
          <div class="logo">
            <a href="{{ route('front.index') }}">
              <img class="logo_image" src="{{ asset('assets/images/' . $gs->logo) }}" alt="">
            </a>
          </div>
        </div>
        <div class="col-lg-6 col-sm-12 remove-padding order-last order-sm-2 order-md-2 search-panel" >
          <div class="search-box-wrapper">
            <div class="search-box">
              <form id="searchForm" class="search-form"
                action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}"
                method="GET">
                @if (!empty(request()->input('sort')))
                <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                @endif
                @if (!empty(request()->input('minprice')))
                <input type="hidden" name="minprice" value="{{ request()->input('minprice') }}">
                @endif
                @if (!empty(request()->input('maxprice')))
                <input type="hidden" name="maxprice" value="{{ request()->input('maxprice') }}">
                @endif
                <input type="text" id="prod_name" name="search" placeholder="What are you looking for..."
                  value="{{ request()->input('search') }}" autocomplete="off">
                <span
                  style="padding: 3px 0px; margin-right: 5px; font-size: 26px; color: #D8D8D8; position: absolute;">|</span>
                <div class="categori-container" id="catSelectForm"
                  style="top: 50%; transform: translateY(-50%); right: 120px;">
                  <select name="category" id="category_select" class="categoris">
                    <option value="" style="background-color: white!important">{{ $langg->lang1 }}</option>
                    @foreach ($categories as $data)
                    <option style="background-color: white!important" value="{{ $data->slug }}" {{ Request::route('category')==$data->slug ? 'selected' : '' }}>
                      {{ $data->name }}</option>
                    @endforeach
                  </select>
                </div>

                <div class="autocomplete">
                  <div id="myInputautocomplete-list" class="autocomplete-items">
                  </div>
                </div>
                <button type="submit" class="header_search_button" style="background-color: #592a65!important;"><i class="icofont-search-1"></i></button>
              </form>


            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 col-7 remove-padding order-lg-last logo-icons">
          <div class="helpful-links">
            <ul class="helpful-links-inner pr-3">
              <li class="my-dropdown li_right_0_margin" data-toggle="tooltip" data-placement="top" title="{{ $langg->lang3 }}">
                <a href="javascript:;" class="cart carticon">
                  <div class="icon">
                    <img src="{{ asset('assets/images/tazzershopUI/shopping_basket.png') }}" alt="">
                    <span class="cart-quantity cart_index" id="cart-count" style="background-color: black">{{ Session::has('cart') ?
                      count(Session::get('cart')->items) : '0' }}</span>
                  </div>
                </a>
                <div class="my-dropdown-menu" id="cart-items">
                  @include('load.cart')
                </div>
              </li>
              <span class="log">Cart</span>
              <li class="wishlist li_right_0_margin" data-toggle="tooltip" data-placement="top" title="{{ $langg->lang9 }}">
                @if (Auth::guard('web')->check())
                <a href="{{ route('user-wishlists') }}" class="wish">
                  <img src="{{ asset('assets/images/tazzershopUI/like.png') }}" alt="">
                  <span class="favorite_index" id="wishlist-count" style="background-color: black">{{ count(Auth::user()->wishlists) }}</span>
                </a>
                @else
                <a href="javascript:;"  id="wish-btn" class="wish">
                  <img src="{{ asset('assets/images/tazzershopUI/like.png') }}" alt="">
                  <span class="favorite_index" id="wishlist-count" style="background-color: black">0</span>
                </a>
                @endif
              </li>
              <span class="log">Favorite</span>
              <!-- <li class="compare" data-toggle="tooltip" data-placement="top" title="{{ $langg->lang10 }}">
                <a href="{{ route('product.compare') }}" class="wish compare-product">
                  <div class="icon">
                    <i class="fas fa-exchange-alt"></i>
                    <span id="compare-count">{{ Session::has('compare') ? count(Session::get('compare')->items) : '0'
                      }}</span>
                  </div>
                </a>
              </li> -->
              <li class="compare li_right_0_margin" data-toggle="tooltip" data-placement="top" style="vertical-align: top;">
                @if(Auth::guard('web')->check())
                  <div class="dropdown">
                    <div class="" type="button" id="user_avatar" data-toggle="dropdown">
                      @if(Auth::user()->photo)
                        <img src="{{ asset('assets/images/users/'.Auth::user()->photo) }}" alt="" width="35" height="35" style="border-radius:32px">
                      @else
                        <div class="icon">
                          <img src="{{ asset('assets/images/tazzershopUI/user.png') }}" alt="">
                        </div>
                      @endif
                    </div>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="user_avatar" style="padding: 2px; border-radius: 3px; min-width: unset; width: 150px">
                      <div class="p-2 border-bottom">
                        <li role="presentation"><a role="menuitem" href="/user/profile"><i class="fa fa-user mr-2"></i>Setting</a></li>
                      </div>
                      <div class="p-2">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="/user/logout"><i class="fa fa-sign-out-alt mr-2"></i>Log Out</a></li>
                      </div>
                    </ul>
                  </div>
                @else
                <div class="dropdown">
                  <div class="" type="button" id="user_avatar" data-toggle="dropdown">
                    <div class="icon">
                      <img src="{{ asset('assets/images/tazzershopUI/user.png') }}" alt="">
                    </div>
                  </div>
                  <ul class="dropdown-menu" role="menu" aria-labelledby="user_avatar" style="padding: 2px; border-radius: 3px; min-width: unset; width: 108px">
                    <div class="p-2 border-bottom">
                      <li role="presentation">
                        <a role="menuitem" data-toggle="modal" class="wish compare-product" data-target="#comment-log-reg" href="javascript:;">As Buyer</a>
                      </li>
                    </div>
                    <div class="p-2">
                      <li role="presentation">
                        <a role="menuitem" data-toggle="modal" data-target="#vendor-login" class="wish compare-product" href="javascript:;">As Seller</a>
                      </li>
                    </div>
                  </ul>
                </div>
                @endif
              </li>
              @if(Auth::guard('web')->check())
                <span class="log"> <?php echo Auth::user()->name ?> </span>
              @else
                <span class="log">Login</span>
              @endif
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Logo Header Area End -->
  <!--Main-Menu Area Start-->
  <div class="mainmenu-area mainmenu-bb main_menu_color">
    <div class="container-fluid" style = "height: 60px!important">
      <div class="row  mainmenu-area-innner" style="margin-right: 6%" >
        <div class="col-lg-3 col-md-6 col-9 categorimenu-wrapper remove-padding">
          <!--categorie menu start-->
          <div class="categories_menu" style="margin-left:15%">
            <div class="categories_title category_background" style="background-color:#25cbf2!important;">
              <h2 class="categori_toggle all_categories pt-2 px-4"><i class="fa fa-bars"></i>
                <span class="responsive-category">Categories</span>
                <i class="fa fa-angle-down arrow-down"></i></h2>
            </div>
            <div class="categories_menu_inner">
              <ul>
                @php
                $i = 1;
                @endphp
                @foreach ($categories as $category)
                <li class="{{ count($category->subs) > 0 ? 'dropdown_list' : '' }} {{ $i >= 14 ? 'rx-child' : '' }}"  style="line-hieght:50px!important; border-bottom: 1px solid rgb(72, 158, 71, 0.2);">
                  @if (count($category->subs) > 0)
                  <div class="img">
                    <img class="online-img" src="{{ asset('assets/images/categories/' . $category->photo) }}" alt="">
                  </div>
                  <div class="link-area" style="width:70%!important">
                    <span><a href="{{ route('front.category', $category->slug) }}" style = "font-size:15px!important" class="category-overflow">{{ $category->name }}</a></span>
                    @if (count($category->subs) > 0)
                    <a href="javascript:;" style="display: none">
                      <i class="fa fa-angle-right" aria-hidden="true"></i>
                    </a>
                    @endif
                  </div>
                  <div>
                    @if (count($category->subs) > 0)
                      <a href="javascript:;">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                      </a>
                    @endif
                  </div>
                  @else
                  <a href="{{ route('front.category', $category->slug) }}" style = "font-size:15px!important" class="category-overflow"><img
                      src="{{ asset('assets/images/categories/' . $category->photo) }}"  style="line-hieght:50px!important">
                    {{ $category->name }}</a>

                  @endif
                  @if (count($category->subs) > 0)
                  @php
                  $ck = 0;
                  foreach ($category->subs as $subcat) {
                  if (count($subcat->childs) > 0) {
                  $ck = 1;
                  break;
                  }
                  }
                  @endphp
                  <ul class="{{   $ck == 1 ? 'categories_mega_menu' : 'categories_mega_menu column_1' }}">
                    @foreach ($category->subs as $subcat)
                    <li>
                      <a
                        href="{{ route('front.subcat', ['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug]) }}">{{
                        $subcat->name }}</a>
                      @if (count($subcat->childs) > 0)
                      <div class="categorie_sub_menu">
                        <ul>
                          @foreach ($subcat->childs as $childcat)
                          <li><a style="color: black; white-space: nowrap"
                              href="{{ route('front.childcat', ['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug]) }}">{{
                              $childcat->name }}</a>
                          </li>
                          @endforeach
                          
                        </ul>
                      </div>
                      @endif
                    </li>
                    @endforeach
                  </ul>
                  @endif
                </li>
                @php
                $i++;
                @endphp
                @if ($i == 15)
                <li>
                  <a href="{{ route('front.categories') }}" class="more_category">
                   More Categories <i class="fas fa-plus"></i></a>
                </li>
                @break
                @endif
                @endforeach
              </ul>
            </div>
          </div>
          <!--categorie menu end-->
        </div>
        <div class="col-lg-9 col-md-6 col-3 mainmenu-wrapper remove-padding">
          <nav hidden style="margin-top: 12px">
            <div class="nav-header">
              <button class="toggle-bar"><span class="fa fa-bars"></span></button>
            </div>
            <ul class="menu">
              @if ($gs->is_home == 1)
              <li><a href="{{ route('front.index') }}">{{ $langg->lang17 }}</a></li>
              @endif
              <li>
              <!-- @if ($gs->is_faq == 1)
              <li><a href="{{ route('front.faq') }}" class="menu_sub_color">FAQ</a></li>
              @endif -->
              @foreach (DB::table('pages')->where('header', '=', 1)->get()
              as $data)
              <li><a href="{{ route('front.page', $data->slug) }}" class="menu_sub_color">{{$data->title}}</a></li>
              @endforeach
              <li><a href="{{ route('front.blog') }}" class="menu_sub_color">Blogs</a></li>
              @if ($gs->is_contact == 1)
              <li><a href="{{ route('front.contact') }}" class="menu_sub_color">Contact Us</a></li>
              @endif
              <li><a href="https://developer-data-work.azurewebsites.net" class="menu_sub_color">Service</a></li>
              <!-- <li>
                <a href="javascript:;" data-toggle="modal" data-target="#track-order-modal" class="track-btn">TRACK
                  ORDER</a>
              </li> -->
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
  <!--Main-Menu Area End-->

  @yield('content')

  <!-- Footer Area Start -->
  <footer class="footer" id="footer" style="padding:5%; background-color:#592a65!important">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6 col-lg-3">
          <div class="footer-info-area">
            <div class="footer-logo">
              <a href="{{ route('front.index') }}" class="logo-link">
                <img src="{{ asset('assets/images/' . $gs->footer_logo) }}" alt="">
              </a>
            </div>
            <div class="text">
              <p>
                {!! $gs->footer !!}
              </p>
              <!-- <h4 class="title" style="color: white; margin-top: 10px; font-weight: 600">Open Hours:</h4>
              <p>Mon ~ Sat : 8am - 6pm<br>Sunday : Closed</p> -->
            </div>
            <!-- <div class="contactdet">
              <ul>
                <li class="color-grey">
                  <p></p>
                  <p><span style="font-size:14px; color: white"><img
                        src="https://developer-data-work.azurewebsites.net/assets/img/locate.8eb7c7e8.svg">&nbsp;
                      &nbsp;South Yorkshire, S66 7AW</span></p>
                  <p><span style="font-size:14px; color: white"><img
                        src="https://developer-data-work.azurewebsites.net/assets/img/call.3c7e5ae4.svg">&nbsp;
                      &nbsp; (+44)(0)79 6124 2587 </span></p>
                  <p><span style="font-size:14px; color: white"><img
                        src="https://developer-data-work.azurewebsites.net/assets/img/call.3c7e5ae4.svg">&nbsp;
                      &nbsp; (+44)(0)33 3404 1413 </span></p>
                  <p><span style="font-size:14px; color: white"><img
                        src="https://developer-data-work.azurewebsites.net/assets/img/mail-box.394d51c7.svg">&nbsp;
                      &nbsp;info@developer-data-work.azurewebsites.net</span></p>
                </li>
              </ul>
            </div> -->
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="footer-widget info-link-widget">
            <h4 class="title">
              Popular Products
            </h4>
            <ul class="link-list">
              <!-- @foreach (DB::table('categories')->where('status', '=', 1)->get()->chunk(2)
              as $datas)
              <div class="row">
                @foreach($datas as $data)
                <li style="width:50%">
                  <a href="{{ route('front.category', $data->slug) }}">
                    <i class="fas fa-angle-double-right"></i>{{ $data->name }}
                  </a>
                </li>
                @endforeach
              </div>
              @endforeach -->
              <li style="width:100%">
                <a href="{{ route('front.category', 'Cleaning-products-supplies-and-tools')}}">
                  <i class="fas fa-angle-double-right"></i>Cleaning Prodcuts
                </a>
              </li>
              <li style="width:100%">
                <a href="{{ route('front.category', 'Construction-and-Builders-products-supplies-and-tools')}}">
                  <i class="fas fa-angle-double-right"></i>Construction And Builders Products
                </a>
              </li>
              <li style="width:100%">
                <a href="{{ route('front.category', 'Handmade-products-Supplies-and-tool')}}">
                  <i class="fas fa-angle-double-right"></i>Handman Products
                </a>
              </li>
              <li style="width:100%">
                <a href="{{ route('front.category', 'Domestic-Helpers-products-supplies-and-tools')}}">
                  <i class="fas fa-angle-double-right"></i>Domestic Helpers Products
                </a>
              </li>
              <li style="width:100%">
                <a href="{{ route('front.category', 'Gardening-and-Landscaping-products-supplies-and-tools')}}">
                  <i class="fas fa-angle-double-right"></i>Gardening And Landscaping Products
                </a>
              </li>
              <li style="width:100%">
                <a href="{{ route('front.category', 'Clearance-and-clean-up-products-supplies-and-tools')}}">
                  <i class="fas fa-angle-double-right"></i>Clearance And Rubbish Removal Products
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="footer-widget info-link-widget">
            <h4 class="title">
              Contact Info
            </h4>
            <ul class="link-list">
              <li>
                <a href="{{ route('front.index') }}" style="font-size:15px">
                  <i class="material-icons" style="font-size:13px; color:#592a65; background-color: white; border-radius:50%; padding:2px; margin-right:5px">location_on</i>South Yorkshire, S66 7AW
                </a>
              </li>
              <li>
                <a href="{{ route('front.faq') }}" style="font-size:15px">
                  <i class="material-icons" style="font-size:13px; color:#592a65; background-color: white; border-radius:50%; padding:2px; margin-right:5px">phone</i>(+44)(0)79 6124 2587
                </a>
              </li>
              <li>
                <a href="{{ route('front.faq') }}" style="font-size:15px">
                  <i class="material-icons" style="font-size:13px; color:#592a65; background-color: white; border-radius:50%; padding:2px; margin-right:5px">phone</i>(+44)(0)33 3404 1413
                </a>
              </li>
              <li>
                <a href="{{ route('front.contact') }}" style="font-size:15px">
                  <i class="fas fa-envelope" style="font-size:13px; color:#592a65; background-color: white; border-radius:50%; padding:2px; margin-right:5px"></i>shop@tazzergroup.com
                </a>
              </li>
            </ul>
            <!-- <h4 class="title">
              Information
            </h4>
            <ul class="link-list">
              <li>
                <a href="{{ route('front.index') }}">
                  <i class="fas fa-angle-double-right"></i>{{ $langg->lang22 }}
                </a>
              </li>
              <li>
                <a href="{{ route('front.faq') }}">
                  <i class="fas fa-angle-double-right"></i>FAQ
                </a>
              </li>
              @foreach (DB::table('pages')->where('footer', '=', 1)->get()
              as $data)
              <li>
                <a href="{{ route('front.page', $data->slug) }}">
                  <i class="fas fa-angle-double-right"></i>{{ $data->title }}
                </a>
              </li>
              @endforeach
              <li>
                <a href="{{ route('front.contact') }}">
                  <i class="fas fa-angle-double-right"></i>{{ $langg->lang23 }}
                </a>
              </li>
            </ul> -->
          </div>
        </div>
        <div class="col-md-6 col-lg-2">
          <div class="footer-widget recent-post-widget">
            <h4 class="title" style="">
              <!-- {{ $langg->lang24 }} -->
              Open Hours
            </h4>
            <p style="color:white">
            (Mon to Sun) 24 hours
            </p>
            <!-- <ul class="post-list">
              @foreach (App\Models\Blog::orderBy('created_at', 'desc')->limit(3)->get()
              as $blog)
              <li>
                <div class="post">
                  <div class="post-img">
                    <img style="width: 73px; height: 59px;" src="{{ asset('assets/images/blogs/' . $blog->photo) }}"
                      alt="">
                  </div>
                  <div class="post-details">
                    <a href="{{ route('front.blogshow', $blog->id) }}">
                      <h4 class="post-title">
                        {{ mb_strlen($blog->title, 'utf-8') > 45 ? mb_substr($blog->title, 0, 45, 'utf-8') . ' ..' :
                        $blog->title }}
                      </h4>
                    </a>
                    <p class="date">
                      {{ date('M d - Y', strtotime($blog->created_at)) }}
                    </p>
                  </div>
                </div>
              </li>
              @endforeach
            </ul> -->
            <ul style="display: -webkit-inline-box;">
              <li>
                <img style="width: 50px; height: 50px; margin: 10px"
                  src="{{ asset('assets/images/Rectangle11556.png') }}" alt="">
              </li>
              <li>
                <img style="width: 50px; height: 50px; margin: 10px" src="{{ asset('assets/images/Mask-Group56.png') }}"
                  alt="">
              </li>
              <li>
                <img style="width: 50px; height: px; margin: 10px" src="{{ asset('assets/images/Mask-Group55.png') }}"
                  alt="">
              </li>
            </ul>
          </div>
          <!-- <div class="fotter-social-links" style="margin-top: 20px">
            <ul>
              @if (App\Models\Socialsetting::find(1)->f_status == 1)
              <li>
                <a href="{{ App\Models\Socialsetting::find(1)->facebook }}" class="facebook" target="_blank">
                  <img style="margin: 2px" src="{{ asset('assets/images/Group17267.png') }}" alt="">
                </a>
              </li>
              @endif
              <li>
                <a href="https://www.instagram.com/tazzer_group/" class="instagram" target="_blank">
                  <img style="margin: 2px" src="{{ asset('assets/images/Group17268.png') }}" alt="">
                </a>
              </li>
              @if (App\Models\Socialsetting::find(1)->t_status == 1)
              <li>
                <a href="{{ App\Models\Socialsetting::find(1)->twitter }}" class="twitter" target="_blank">
                  <img style="margin: 2px" src="{{ asset('assets/images/Group17269.png') }}" alt="">
                </a>
              </li>
              @endif
              @if (App\Models\Socialsetting::find(1)->l_status == 1)
              <li>
                <a href="{{ App\Models\Socialsetting::find(1)->linkedin }}" class="linkedin" target="_blank">
                  <img style="margin: 2px" src="{{ asset('assets/images/Group17270.png') }}" alt="">
                </a>
              </li>
              @endif
              <li>
                <a href="https://www.pinterest.ca/tazzer_group/_created/" class="pinterest" target="_blank">
                  <img style="margin: 2px" src="{{ asset('assets/images/Group17274.png') }}" alt="">
                </a>
              </li>
              @if (App\Models\Socialsetting::find(1)->g_status == 1)
                <li>
                  <a href="#" class="google-plus" target="_blank">
                    <img style="margin: 2px" src="{{ asset('assets/images/Group17271.png') }}" alt="">
                  </a>
                </li>
              @endif

            </ul>
          </div> -->
        </div>
      </div>
      <hr style="background-color: white;">
      <div class="row">
        <div class="col-lg-5 col-sm-12 category-overflow">
          <span ><a href="" class="footer-info">Home  |  </a></span><span><a href=""  class="footer-info">FAQ  |  </a></span><span><a href=""  class="footer-info">About Us  |  </a></span><span><a href=""  class="footer-info">Privacy & Policy  |  </a></span><span><a href=""  class="footer-info">Terms & Conditions  |  </a></span><span><a href=""  class="footer-info">Contact Us  |  </a></span> 
        </div>
        <div class="col-lg-3 col-sm-12" >
            <span class="footer-info category-overflow">Copyright tazzershop - 2021</span>              
        </div>
        <div class="col-lg-4 col-sm-12 category-overflow" style="text-align: right">
          <span class="footer-info">follow on : </span><span><a href=""><i class="fab fa-facebook-f social-icon"></i></a><a href=""><i class="fab fa-linkedin-in footer-info social-icon"></i></a><a href=""><i class="fab fa-instagram social-icon"></i></a><a href=""><i class="fab fa-twitter social-icon"></i></a><a href=""><i class="fab fa-google social-icon"></i></a><a href=""><i class="fab fa-dribbble social-icon"></i></a><a href=""><i class="fab fa-pinterest social-icon"></i></a> </span>
        </div>
    </div>
    <!-- <div class="copy-bg">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="content">
              <div class="content">
                <p style="color: black">{!! $gs->copyright !!}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
  </footer>
  <!-- Footer Area End -->

  <!-- Back to Top Start -->
  <div class="bottomtotop">
    <i class="fas fa-chevron-right"></i>
  </div>
  <!-- Back to Top End -->

  <!-- LOGIN MODAL -->
  <div class="modal fade" id="comment-log-reg" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
    aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <nav class="comment-log-reg-tabmenu">
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
              <a class="nav-item nav-link login active" id="nav-log-tab1" data-toggle="tab" href="#nav-log1" role="tab"
                aria-controls="nav-log" aria-selected="true">
                {{ $langg->lang197 }}
              </a>
              <a class="nav-item nav-link" id="nav-reg-tab1" data-toggle="tab" href="#nav-reg1" role="tab"
                aria-controls="nav-reg" aria-selected="false">
                {{ $langg->lang198 }}
              </a>
            </div>
          </nav>
          <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-log1" role="tabpanel" aria-labelledby="nav-log-tab1">
              <div class="login-area">
                <div class="header-area">
                  <h4 class="title">{{ $langg->lang172 }}</h4>
                </div>
                <div class="login-form signin-form">
                  @include('includes.admin.form-login')
                  <form class="mloginform" action="{{ route('user.login.submit') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="form-input">
                      <input type="email" id="email_login" name="email" placeholder="{{ $langg->lang173 }}" required="">
                      <i class="icofont-user-alt-5"></i>
                    </div>
                    <div class="form-input">
                      <input type="password" id="password_login" class="Password" name="password" placeholder="{{ $langg->lang174 }}"
                        required="">
                      <i class="icofont-ui-password"></i>
                    </div>
                    <div class="form-forgot-pass">
                      <div class="left">
                        <input type="checkbox" name="remember" id="mrp" {{ old('remember') ? 'checked' : '' }}>
                        <label for="mrp">{{ $langg->lang175 }}</label>
                      </div>
                      <div class="right">
                        <a href="javascript:;" id="show-forgot">
                          {{ $langg->lang176 }}
                        </a>
                      </div>
                    </div>
                    <input type="hidden" name="modal" value="1">
                    <input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
                    <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
                    @if (App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check
                    == 1)
                    <div class="social-area">
                      <h3 class="title">{{ $langg->lang179 }}</h3>
                      <p class="text">{{ $langg->lang180 }}</p>
                      <ul class="social-links">
                        @if (App\Models\Socialsetting::find(1)->f_check == 1)
                        <li>
                          <a href="{{ route('social-provider', 'facebook') }}">
                            <i class="fab fa-facebook-f"></i>
                          </a>
                        </li>
                        @endif
                        @if (App\Models\Socialsetting::find(1)->g_check == 1)
                        <li>
                          <a href="{{ route('social-provider', 'google') }}">
                            <i class="fab fa-google-plus-g"></i>
                          </a>
                        </li>
                        @endif
                      </ul>
                    </div>
                    @endif
                  </form>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="nav-reg1" role="tabpanel" aria-labelledby="nav-reg-tab1">
              <div class="login-area signup-area">
                <div class="header-area">
                  <h4 class="title">{{ $langg->lang181 }}</h4>
                </div>
                <div class="login-form signup-form">
                  @include('includes.admin.form-login')
                  <form class="mregisterform" action="{{ route('user-register-submit') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="form-input">
                      <input type="text" class="User Name" name="name" placeholder="{{ $langg->lang182 }}" required="">
                      <i class="icofont-user-alt-5"></i>
                    </div>
                    <div class="form-input">
                      <input type="email" class="User Name" name="email" placeholder="{{ $langg->lang183 }}"
                        required="">
                      <i class="icofont-email"></i>
                    </div>
                    <div class="form-input">
                      <input type="text" class="User Name" name="phone" placeholder="{{ $langg->lang184 }}" required="">
                      <i class="icofont-phone"></i>
                    </div>
                    <div class="form-input">
                      <input type="text" class="User Name" name="address" placeholder="{{ $langg->lang185 }}"
                        required="">
                      <i class="icofont-location-pin"></i>
                    </div>
                    <div class="form-input">
                      <input type="password" class="Password" name="password" placeholder="{{ $langg->lang186 }}"
                        required="">
                      <i class="icofont-ui-password"></i>
                    </div>
                    <div class="form-input">
                      <input type="password" class="Password" name="password_confirmation"
                        placeholder="{{ $langg->lang187 }}" required="">
                      <i class="icofont-ui-password"></i>
                    </div>
                    @if ($gs->is_capcha == 1)

                    <ul class="captcha-area">
                      <li>
                        <p><img class="codeimg1" src="{{ asset('assets/images/capcha_code.png') }}" alt="">
                          <i class="fas fa-sync-alt pointer refresh_code "></i>
                        </p>
                      </li>
                    </ul>
                    <div class="form-input">
                      <input type="text" class="Password" name="codes" placeholder="{{ $langg->lang51 }}" required="">
                      <i class="icofont-refresh"></i>
                    </div>
                    @endif
                    <input class="mprocessdata" type="hidden" value="{{ $langg->lang188 }}">
                    <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- LOGIN MODAL ENDS -->

  <!-- FORGOT MODAL -->
  <div class="modal fade" id="forgot-modal" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
    aria-hidden="true">
      <div class="modal-dialog  modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="login-area">
              <div class="header-area forgot-passwor-area">
                <h4 class="title">{{ $langg->lang191 }} </h4> <!--FORGOT PASSWORD -->
                <p class="text">{{ $langg->lang192 }} </p>  <!--Please write your email -->
              </div>
              <div class="login-form">
                @include('includes.admin.form-login')
                <form id="mforgotform" action="{{ route('user-forgot-submit') }}" method="POST">
                  {{ csrf_field() }}
                  <div class="form-input">
                    <input id="emailId" type="email" name="email" class="User Name" placeholder="{{ $langg->lang193 }}" required="">
                    <i class="icofont-user-alt-5"></i>
                  </div>
                  <div class="to-login-page">
                    <a href="javascript:;" id="show-login">
                      {{ $langg->lang194 }} <!--Login Now -->
                    </a>
                  </div>
                  <input class="fauthdata" type="hidden" value="{{ $langg->lang195 }}">
                  <button onclick="clicked_submit()" type="submit" class="submit-btn">{{ $langg->lang196 }}</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
  <!-- FORGOT MODAL ENDS -->

  <!-- VENDOR LOGIN MODAL -->
  <div class="modal fade" id="vendor-login" tabindex="-1" role="dialog" aria-labelledby="vendor-login-Title"
    aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" style="transition: .5s;" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <nav class="comment-log-reg-tabmenu">
            <div class="nav nav-tabs" id="nav-tab1" role="tablist">
              <a class="nav-item nav-link login active" id="nav-log-tab11" data-toggle="tab" href="#nav-log11"
                role="tab" aria-controls="nav-log" aria-selected="true">
                {{ $langg->lang234 }}
              </a>
              <a class="nav-item nav-link" id="nav-reg-tab11" data-toggle="tab" href="#nav-reg11" role="tab"
                aria-controls="nav-reg" aria-selected="false">
                {{ $langg->lang235 }}
              </a>
            </div>
          </nav>
          <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-log11" role="tabpanel" aria-labelledby="nav-log-tab">
              <div class="login-area">
                <div class="login-form signin-form">
                  @include('includes.admin.form-login', ['page'=>'forgot'])
                  <form class="mloginform" action="{{ route('user.login.submit') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="form-input">
                      <input type="email" name="email" placeholder="{{ $langg->lang173 }}" required="">
                      <i class="icofont-user-alt-5"></i>
                    </div>
                    <div class="form-input">
                      <input type="password" class="Password" name="password" placeholder="{{ $langg->lang174 }}"
                        required="">
                      <i class="icofont-ui-password"></i>
                    </div>
                    <div class="form-forgot-pass">
                      <div class="left">
                        <input type="checkbox" name="remember" id="mrp1" {{ old('remember') ? 'checked' : '' }}>
                        <label for="mrp1">{{ $langg->lang175 }}</label>
                      </div>
                      <div class="right">
                        <a href="javascript:;" id="show-forgot1">
                          {{ $langg->lang176 }}
                        </a>
                      </div>
                    </div>
                    <input type="hidden" name="modal" value="1">
                    <input type="hidden" name="vendor" value="1">
                    <input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
                    <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
                    @if (App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check
                    == 1)
                    <div class="social-area">
                      <h3 class="title">{{ $langg->lang179 }}</h3>
                      <p class="text">{{ $langg->lang180 }}</p>
                      <ul class="social-links">
                        @if (App\Models\Socialsetting::find(1)->f_check == 1)
                        <li>
                          <a href="{{ route('social-provider', 'facebook') }}">
                            <i class="fab fa-facebook-f"></i>
                          </a>
                        </li>
                        @endif
                        @if (App\Models\Socialsetting::find(1)->g_check == 1)
                        <li>
                          <a href="{{ route('social-provider', 'google') }}">
                            <i class="fab fa-google-plus-g"></i>
                          </a>
                        </li>
                        @endif
                      </ul>
                    </div>
                    @endif
                  </form>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="nav-reg11" role="tabpanel" aria-labelledby="nav-reg-tab">
              <div class="login-area signup-area">
                <div class="login-form signup-form">
                  @include('includes.admin.form-login')
                  <form class="mregisterform" action="{{ route('user-register-submit') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="name" placeholder="{{ $langg->lang182 }}"
                            required="">
                          <i class="icofont-user-alt-5"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="email" class="User Name" name="email" placeholder="{{ $langg->lang183 }}"
                            required="">
                          <i class="icofont-email"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="phone" placeholder="{{ $langg->lang184 }}"
                            required="">
                          <i class="icofont-phone"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="address" placeholder="{{ $langg->lang185 }}"
                            required="">
                          <i class="icofont-location-pin"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="shop_name" placeholder="{{ $langg->lang238 }}"
                            required="">
                          <i class="icofont-cart-alt"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="owner_name" placeholder="{{ $langg->lang239 }}"
                            required="">
                          <i class="icofont-cart"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="shop_number" placeholder="{{ $langg->lang240 }}"
                            required="">
                          <i class="icofont-shopping-cart"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="shop_address" placeholder="{{ $langg->lang241 }}"
                            required="">
                          <i class="icofont-opencart"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="reg_number" placeholder="{{ $langg->lang242 }}"
                            required="">
                          <i class="icofont-ui-cart"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="User Name" name="shop_message" placeholder="{{ $langg->lang243 }}"
                            required="">
                          <i class="icofont-envelope"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="password" class="Password" name="password" placeholder="{{ $langg->lang186 }}"
                            required="">
                          <i class="icofont-ui-password"></i>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="password" class="Password" name="password_confirmation"
                            placeholder="{{ $langg->lang187 }}" required="">
                          <i class="icofont-ui-password"></i>
                        </div>
                      </div>
                      @if ($gs->is_capcha == 1)
                      <div class="col-lg-6">
                        <ul class="captcha-area">
                          <li>
                            <p>
                              <img class="codeimg1" src="{{ asset('assets/images/capcha_code.png') }}" alt="">
                              <i class="fas fa-sync-alt pointer refresh_code "></i>
                            </p>
                          </li>
                        </ul>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-input">
                          <input type="text" class="Password" name="codes" placeholder="{{ $langg->lang51 }}"
                            required="">
                          <i class="icofont-refresh"></i>
                        </div>
                      </div>
                      @endif
                      <input type="hidden" name="vendor" value="1">
                      <input class="mprocessdata" type="hidden" value="{{ $langg->lang188 }}">
                      <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- VENDOR LOGIN MODAL ENDS -->

  <!-- Product Quick View Modal -->

  <div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog quickview-modal modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="submit-loader">
          <img src="{{ asset('assets/images/' . $gs->loader) }}" alt="">
        </div>
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container quick-view-modal">

          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Product Quick View Modal -->

  <!-- Order Tracking modal Start-->
  <div class="modal fade" id="track-order-modal" tabindex="-1" role="dialog" aria-labelledby="order-tracking-modal"
    aria-hidden="true">
    <div class="modal-dialog  modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title"> <b>{{ $langg->lang772 }}</b> </h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

          <div class="order-tracking-content">
            <form id="track-form" class="track-form">
              {{ csrf_field() }}
              <input type="text" id="track-code" placeholder="{{ $langg->lang773 }}" required="">
              <button type="submit" class="mybtn1">{{ $langg->lang774 }}</button>
              <a href="#" data-toggle="modal" data-target="#order-tracking-modal"></a>
            </form>
          </div>

          <div>
            <div class="submit-loader d-none">
              <img src="{{ asset('assets/images/' . $gs->loader) }}" alt="">
            </div>
            <div id="track-order">

            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- Order Tracking modal End -->

  <script type="text/javascript">
    var mainurl = "{{ url('/') }}";
    var gs = {!! json_encode($gs)!!};
    var langg = {!! json_encode($langg)!!};
  </script>

  <!-- jquery -->
  <script src="{{ asset('assets/front/js/jquery.js') }}"></script>
  {{--
  <script src="{{asset('assets/front/js/vue.js')}}"></script> --}}
  <script src="{{ asset('assets/front/jquery-ui/jquery-ui.min.js') }}"></script>
  <!-- popper -->
  <script src="{{ asset('assets/front/js/popper.min.js') }}"></script>
  <!-- bootstrap -->
  <script src="{{ asset('assets/front/js/bootstrap.min.js') }}"></script>
  <!-- plugin js-->
  <script src="{{ asset('assets/front/js/plugin.js') }}"></script>

  <script src="{{ asset('assets/front/js/xzoom.min.js') }}"></script>
  <script src="{{ asset('assets/front/js/jquery.hammer.min.js') }}"></script>
  <script src="{{ asset('assets/front/js/setup.js') }}"></script>

  <script src="{{ asset('assets/front/js/toastr.js') }}"></script>
  <!-- main -->
  <script src="{{ asset('assets/front/js/main.js') }}"></script>
  <!-- custom -->
  <script src="{{ asset('assets/front/js/custom.js') }}"></script>
  <script src="https://www.jqueryscript.net/demo/jQuery-Plugin-For-Country-Selecter-with-Flags-flagstrap/dist/js/jquery.flagstrap.js"></script>

  {!! $seo->google_analytics !!}

  @if ($gs->is_talkto == 1)
  <!--Start of Tawk.to Script-->
  {!! $gs->talkto !!}
  <!--End of Tawk.to Script-->
  @endif

  @yield('scripts')
  <script>
    function clicked_submit() {
      var temp = document.getElementById('emailId').value;
      window.localStorage.setItem('email', temp);
    }
    // $(window).on('load',function() {

    //   setTimeout(function(){

    //       $('#extraData').load('{{route('front.extraIndex')}}');

    //   }, 1);
    // });
    // $(document).ready(function () {
    //   console.log('here')
    //   $.ajax({
    //       method: "GET",
    //       url: "{{ route('front.currency', DB::table('currencies')->where('name', '=', 'JPY')->first()->id) }}",
    //       success: function (data) {
    //       }
    //   });
    // })

  </script>

</body>

</html>