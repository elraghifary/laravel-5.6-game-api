<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;

class Account extends Authenticatable
{
    use Notifiable, HasApiTokens;

    /**
     * Custom attributes
     */
    protected $primaryKey = 'account_id';
    const CREATED_AT = 'create_date';
    const UPDATED_AT = 'last_login';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'email', 'password', 'access_token',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'access_token',
    ];

    /**
     * Get the account items that owns the account.
     */
    public function account_items() {
        return $this->hasMany(AccountItem::class, 'account_id');
    }

    /**
     * Get the shops that owns the base item through account items.
     */
    public function base_items()
    {
        return $this->hasManyThrough(
            BaseItem::class,
            AccountItem::class,
            'account_id',
            'base_item_id',
            'account_id',
            'account_id'
        );
    }
}
