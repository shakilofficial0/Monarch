<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;

class LanguageHandler extends Controller
{
    public function changeToEnglish()
    {
        Session::put('locale', 'en');
        return redirect()->back();
    }

    public function changeToBangla()
    {
        Session::put('locale', 'bn');
        return redirect()->back();
    }

    public function changeToHindi()
    {
        Session::put('locale', 'hi');
        return redirect()->back();
    }

    public function changeToArabic()
    {
        Session::put('locale', 'ar');
        return redirect()->back();
    }

    public function changeToSpanish()
    {
        Session::put('locale', 'es');
        return redirect()->back();
    }

    public function changeToFrench()
    {
        Session::put('locale', 'fr');
        return redirect()->back();
    }

    public function changeToGerman()
    {
        Session::put('locale', 'de');
        return redirect()->back();
    }

    public function changeToItalian()
    {
        Session::put('locale', 'it');
        return redirect()->back();
    }

    public function changeToJapanese()
    {
        Session::put('locale', 'ja');
        return redirect()->back();
    }

    public function changeToKorean()
    {
        Session::put('locale', 'ko');
        return redirect()->back();
    }

    public function changeToRussian()
    {
        Session::put('locale', 'ru');
        return redirect()->back();
    }
}
