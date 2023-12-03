<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserDumpLog extends Model
{
    use HasFactory;
    protected $fillable = [
        'username',
        '_token',
        'ip',
        'action_type',
        'user_agent',
        'browser',
        'platform',
        'device',
        'attempt_at',
        'attempted_action',
        'loggedout_at',
    ];

    protected $table = 'userdumplog';
    public $timestamps = false;


}
