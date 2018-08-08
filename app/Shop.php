<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
    /**
     * Custom attributes
     */
    protected $primaryKey = 'shop_id';
    const CREATED_AT = null;
    const UPDATED_AT = 'last_update';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['base_item_id'];

    /**
     * Get the base item that owns the shops.
     */
    public function base_item()
    {
        return $this->belongsTo(BaseItem::class, 'base_item_id');
    }
}
