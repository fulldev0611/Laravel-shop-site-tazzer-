@extends('layouts.front')

@section('content')
    <section class="login-signup">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-log" role="tabpanel" aria-labelledby="nav-log-tab">
                            <div class="login-area">
                                <div class="header-area">
                                    <h4 class="title">ENTER NEW PASSWORD</h4>
                                    <p class="text">Please type new password</p>
                                </div>
                                <div class="login-form signin-form">
                                    @include('includes.admin.form-login')
                                    <form class="mloginform" action="{{ route('user-newPassword-submit') }}" method="POST">
                                        {{ csrf_field() }}
                                        <div class="form-input">
                                            <input type="password" class="Password" name="new_password" placeholder="New Password"
                                                   required="">
                                            <i class="icofont-ui-password"></i>
                                        </div>
                                        <div class="form-input">
                                            <input type="password" class="Password" name="confirm_password" placeholder="Confirm Password"
                                                   required="">
                                            <i class="icofont-ui-password"></i>
                                        </div>
                                        <input type="hidden" name="token" value="{{ $token }}">
                                        <button type="submit" class="submit-btn">SUBMIT</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
