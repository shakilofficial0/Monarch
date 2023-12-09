<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\SystemSettings;
use DB;

class ConfigUpdaterProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {   
        try {
            $dataTable = DB::table('settings')->pluck('value', 'name')->toArray();
        } catch (\Exception $e) {
            
        }
        
        config([
            "variables.templateName" => empty($dataTable['siteName']) ? config('variables.templateName') : $dataTable['siteName'],
            "variables.templateSuffix" => empty($dataTable['suffix']) ? config('variables.templateSuffix') : $dataTable['suffix'],
            "variables.templateDescription" => empty($dataTable['templateDescription']) ? config('variables.templateDescription') : $dataTable['templateDescription'],
            "variables.support_mail" => empty($dataTable['support_mail']) ? config('variables.support_mail') : $dataTable['support_mail'],
            "variables.url" => empty($dataTable['url']) ? config('variables.url') : $dataTable['url'],
            "variables.templateKeyword" => empty($dataTable['templateKeyword']) ? config('variables.templateKeyword') : $dataTable['templateKeyword'],
            "variables.facebookUrl" => empty($dataTable['facebookUrl']) ? config('variables.facebookUrl') : $dataTable['facebookUrl'],
            "variables.twitterUrl" => empty($dataTable['twitterUrl']) ? config('variables.twitterUrl') : $dataTable['twitterUrl'],
            "variables.instagramUrl" => empty($dataTable['instagramUrl']) ? config('variables.instagramUrl') : $dataTable['instagramUrl'],
        ]);
    }
}
