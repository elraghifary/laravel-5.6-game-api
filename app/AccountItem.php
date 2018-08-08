<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AccountItem extends Model
{
    /**
     * Custom attributes
     */
    protected $primaryKey = 'item_id';
    const CREATED_AT = null;
    const UPDATED_AT = 'last_update';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['account_id', 'base_item_id', 'quantity'];

    /**
     * Get the account that owns the account items.
     */
    public function account()
    {
        return $this->belongsTo(Account::class, 'account_id');
    }

    /**
     * Get the base item that owns the account items.
     */
    public function base_item()
    {
        return $this->belongsTo(BaseItem::class, 'base_item_id');
    }

    /**
     * Get the shops that owns the base item through account items.
     */
    public function shops()
    {
        return $this->hasManyThrough(
            Shop::class,
            BaseItem::class,
            'base_item_id',
            'base_item_id',
            'base_item_id',
            'base_item_id'
        );
    }
}
