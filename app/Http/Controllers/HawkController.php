<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HawkController extends Controller
{
    public function __construct()
    {
    }

    public function index()
    {
        return view('pages.hawkHome');
    }
}
