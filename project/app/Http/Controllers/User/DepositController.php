<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Generalsetting as GS;
use App\Models\Currency;
use App\Models\Transaction;
use Session;

class DepositController extends Controller
{
    public function index() {
      return view('user.deposit.index');
    }

    public function transactions() {
      return view('user.transactions');
    }

    public function transhow($id)
    {
      $data = Transaction::find($id);
      return view('load.transaction-details',compact('data'));
    }

    public function create() {
      if (Session::has('currency'))
      {
        $data['curr'] = Currency::where('name', '=', Session::get('currency'))->first();
      }
      else
      {
        $data['curr'] = Currency::where('is_default','=',1)->first();
      }
      $data['gs'] = GS::first();
      return view('user.deposit.create', $data);
    }

}
