<?php

use App\Http\Controllers\LanguageHandler;


Route::get('/change-language/en', [LanguageHandler::class, 'changeToEnglish'])->name('change.language.english');
Route::get('/change-language/bn', [LanguageHandler::class, 'changeToBangla'])->name('change.language.bangla');
Route::get('/change-language/hi', [LanguageHandler::class, 'changeToHindi'])->name('change.language.hindi');
Route::get('/change-language/ar', [LanguageHandler::class, 'changeToArabic'])->name('change.language.arabic');
Route::get('/change-language/es', [LanguageHandler::class, 'changeToSpanish'])->name('change.language.spanish');
Route::get('/change-language/fr', [LanguageHandler::class, 'changeToFrench'])->name('change.language.french');
Route::get('/change-language/de', [LanguageHandler::class, 'changeToGerman'])->name('change.language.german');
Route::get('/change-language/it', [LanguageHandler::class, 'changeToItalian'])->name('change.language.italian');
Route::get('/change-language/ja', [LanguageHandler::class, 'changeToJapanese'])->name('change.language.japanese');
Route::get('/change-language/ko', [LanguageHandler::class, 'changeToKorean'])->name('change.language.korean');
Route::get('/change-language/ru', [LanguageHandler::class, 'changeToRussian'])->name('change.language.russian');
