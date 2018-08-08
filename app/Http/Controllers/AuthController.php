<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Account;

class AuthController extends Controller
{
    /**
     * Create account
     *
     * @param  [string] username
     * @param  [string] email
     * @param  [string] password
     * @return [string] message
     */
    public function register(Request $request)
    {
        $request->validate([
            'username' => 'required|alpha_num|min:3|max:20|unique:accounts',
            'email' => 'required|string|email|max:254|unique:accounts',
            'password' => [
                'required', 
                'string',
                'min:8',
                'max:254', 
                'regex:/^.*(?=.{1,})(?=.*[a-zA-Z])(?=.*[0-9]).*$/'
            ]
        ]);

        $account = new Account([
            'username' => $request->username,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'access_token' => ''
        ]);

        $account->save();

        return response()->json([
            'message' => 'Successfully created account'
        ], 201);
    }
  
    /**
     * Login account and create token
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email|max:254',
            'password' => [
                'required',
                'string', 
                'min:8',
                'max:254', 
                'regex:/^.*(?=.{1,})(?=.*[a-zA-Z])(?=.*[0-9]).*$/'
            ],
            'remember_me' => 'boolean'
        ]);

        $credentials = request(['email', 'password']);

        if(!Auth::attempt($credentials))
            return response()->json([
                'message' => 'Unauthorized'
            ], 401);

        $account = $request->user();

        $tokenResult = $account->createToken('Personal Access Token');

        $token = $tokenResult->token;
        $access_token = $tokenResult->accessToken;

        \App\Account::where('email', $request->email)
                    ->update(['access_token' => $access_token]);

        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(1);

        $token->save();

        return response()->json([
            'message' => 'Successfully logged in',
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString()
        ]);
    }
  
    /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();

        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }
  
    /**
     * Get the authenticated User
     *
     * @return [json] account object
     */
    public function account(Request $request)
    {
        return response()->json($request->user());
    }
}