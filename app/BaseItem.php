<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BaseItem extends Model
{
    /**
     * Custom attributes
     */
    protected $table = 'base_items';
    protected $primaryKey = 'base_item_id';
    const CREATED_AT = null;
    const UPDATED_AT = 'last_update';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['item_name'];

    /**
     * Get the shops that owns the base item.
     */
    public function shops()
    {
        return $this->hasMany(Shop::class, 'shop_id');
    }
}
