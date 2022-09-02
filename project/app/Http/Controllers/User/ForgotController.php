<?php

namespace App\Http\Controllers\User;

use App\Models\Generalsetting;
use App\Models\User;
use http\Env\Response;
use Illuminate\Http\Request;
use App\Classes\GeniusMailer;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use phpDocumentor\Reflection\Utils;
use Validator;

class ForgotController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function showForgotForm()
    {
        return view('user.forgot');
    }

    public function forgot(Request $request)
    {
      // $user = User::whereEmail($request->email)->first();

      // if($user == null) {
      //   return redirect()->back()->with(['error' => 'Email not exists']);
      // }

      // $user = Sentinel::findById($user->id);
      // $reminder = Reminder::exists($user) ? : Reminder::create($user);
      // $this->sendMail($user, $reminder->code);

      // return redirect()->back()->with(['success' => 'Reset code sent to your email']);
      
      $gs = Generalsetting::findOrFail(1);
      $input =  $request->all();
      if (User::where('email', '=', $request->email)->count() > 0) {
        // user found
        $admin = User::where('email', '=', $request->email)->firstOrFail();
        $token = str_random(64);
        $input['password'] = $token;
        $admin->update($input);
        $subject = "Reset New Password Link";
        $msg = "Your New Password is : https://tazzershop.azurewebsites.net/user/reset_password/".$token;
        if($gs->is_smtp == 1)
        {
          $data = [
            'to' => $request->email,
            'subject' => $subject,
            'body' => $msg,
          ];

          $mailer = new GeniusMailer();
          $mailer->sendCustomMail($data);                
        }
        else
        {
          $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
          mail($request->email, $subject, $msg, $headers);
        }
        return response()->json('Password Reset mail sent successfully. Please Check  your email for new Password');
      }
      else{
      // user not found
      return response()->json(array('errors' => [ 0 => 'No Account Found With This Email.' ]));    
      }  
    }

    // public function sendEmail($user, $code) {
    //   Mail::send(
    //     'email.forgot',
    //     ['user' => $user, 'code'=> $code],
    //     function($message) use ($user) {
    //       $message->to($user->email);
    //       $message->subject("$user->name, reset your password.");
    //     }
    //   );
    // }

    public function showResetPasswordForm($token)
    {
        return view('user.resetPassword', compact('token'));
    }

    public function submitResetPassword(Request $request) {
        $input = $request->all();
        $user = User::where('password', '=', $input['token'])->first();
        if ($user) {
            if ($input['new_password'] == $input['confirm_password']) {
                $input['password'] = bcrypt($input['new_password']);
                $user->update(['password'=>$input['password']]);
                return response()->json("redirect");
            } else {
                return response()->json(array('errors' => [ 0 => 'Password is not matched.' ]));
            }
        } else {
            return response()->json(array('errors' => [ 0 => 'Invalid token.' ]));
        }
    }

}
