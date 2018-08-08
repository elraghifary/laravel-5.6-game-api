<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Account;
use App\AccountItem;
use App\Shop;
use App\BaseItem;

class AccountItemController extends Controller
{
    /**
     * Buy item
     *
     * @param  [string] account_id
     * @param  [string] base_item_id
     * @param  [string] quantity
     * @return [string] message
     */
    public function buy_item(Request $request)
    {
        $request->validate([
            'account_id' => 'required|exists:accounts,account_id',
            'base_item_id' => 'required|exists:base_items,base_item_id',
            'quantity' => 'required|numeric'
        ]);

        $account_id = $request->user()->token()->user_id;

        $item = Shop::where('base_item_id', $request->base_item_id)->with('base_item')->get();

        $total = $request->quantity * $item[0]['gold_price'];
        
        $gold = Account::where('account_id', $account_id)->pluck('gold');

        if ($total > $gold[0]) {
            return response()->json([
                'message' => 'Insufficient Gold'
            ], 401);
        }

        $account_item = new AccountItem([
            'account_id' => $request->account_id,
            'base_item_id' => $request->base_item_id,
            'quantity' => $request->quantity
        ]);

        $gold[0] = $gold[0] - $total;

        \App\Account::where('account_id', $account_id)
                    ->update(['gold' => $gold[0]]);

        $account_item->save();

        return response()->json([
            'message' => 'Successfully bought item'
        ], 201);
    }

    /**
     * Get inventory
     *
     * @return [json] account_items object
     */
    public function get_inventory(Request $request)
    {
        $account_id = $request->user()->token()->user_id;

        $account_items = AccountItem::where('account_id', $account_id)->with('account', 'base_item')->get();

        $inventory = array();

        $i = 0;
        foreach ($account_items as $item) {
            $inventory[$i]['item_id'] = $item->item_id;
            $inventory[$i]['item_name'] = $item->base_item->item_name;
            $inventory[$i]['quantity'] = $item->quantity;
            $i++;
        }
        
        return response()->json(['inventory' => $inventory]);
    }
}
