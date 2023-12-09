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
        $dataTable = DB::table('settings')->pluck('value', 'name')->toArray();
        config([
            "variables.templateName" => $dataTable['siteName'],
            "variables.templateSuffix" => $dataTable['suffix'],
            "variables.templateDescription" => $dataTable['templateDescription'],
            "variables.support_mail" => $dataTable['support_mail'],
            "variables.url" => $dataTable['url'],
            "variables.templateKeyword" => $dataTable['templateKeyword'],
            "variables.facebookUrl" => $dataTable['facebookUrl'],
            "variables.twitterUrl" => $dataTable['twitterUrl'],
            "variables.instagramUrl" => $dataTable['instagramUrl'],
        ]);
    }
}
