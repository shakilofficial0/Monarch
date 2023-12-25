<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Session;

class LanguageHandler extends Controller
{
    public function changeToEnglish()
    {
        Session::put('locale', 'en');
        App::setLocale('en');
        return redirect()->back();
    }

    public function changeToBangla()
    {
        Session::put('locale', 'bn');
        App::setLocale('bn');
        return redirect()->back();
    }

    public function changeToHindi()
    {
        Session::put('locale', 'hi');
        App::setLocale('hi');
        return redirect()->back();
    }

    public function changeToArabic()
    {
        Session::put('locale', 'ar');
        App::setLocale('ar');
        return redirect()->back();
    }

    public function changeToSpanish()
    {
        Session::put('locale', 'es');
        App::setLocale('es');
        return redirect()->back();
    }

    public function changeToFrench()
    {
        Session::put('locale', 'fr');
        App::setLocale('fr');
        return redirect()->back();
    }

    public function changeToGerman()
    {
        Session::put('locale', 'de');
        App::setLocale('de');
        return redirect()->back();
    }

    public function changeToItalian()
    {
        Session::put('locale', 'it');
        App::setLocale('it');
        return redirect()->back();
    }

    public function changeToJapanese()
    {
        Session::put('locale', 'ja');
        App::setLocale('ja');
        return redirect()->back();
    }

    public function changeToKorean()
    {
        Session::put('locale', 'ko');
        App::setLocale('ko');
        return redirect()->back();
    }

    public function changeToRussian()
    {
        Session::put('locale', 'ru');
        App::setLocale('ru');
        return redirect()->back();
    }
}
