<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddRelationshipsToAccountItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('account_items', function (Blueprint $table) {
            $table->integer('account_id')->unsigned()->change();
            $table->foreign('account_id')->references('account_id')->on('accounts')->onUpdate('cascade')->onDelete('cascade');
            $table->integer('base_item_id')->unsigned()->change();
            $table->foreign('base_item_id')->references('base_item_id')->on('base_items')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('account_items', function (Blueprint $table) {
            $table->dropForeign('account_items_account_id_foreign');
            $table->dropIndex('account_items_account_id_foreign');
            $table->integer('account_id')->change();
            $table->dropForeign('account_items_base_item_id_foreign');
            $table->dropIndex('account_items_base_item_id_foreign');
            $table->integer('base_item_id')->change();
        });
    }
}
