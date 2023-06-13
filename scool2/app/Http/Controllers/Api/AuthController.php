<?php
namespace App\Http\Controllers;
use App\Models\type_user;
use Illuminate\Http\Request;
use App\Http\Resources\Userreso;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
// use Validator;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }
    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request){
    	$validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        if (! $token = auth()->attempt($validator->validated())) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        return $this->createNewToken($token);
    }
    /**
     * Register a User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|confirmed|min:6',
        ]);
        if($validator->fails()){
            return response()->json($validator->errors()->toJson(), 400);
        }
        $user = User::create(array_merge(
                    $validator->validated(),
                    ['password' => bcrypt($request->password)]
                ));
        return response()->json([
            'message' => 'User successfully registered',
            'user' => $user
        ], 201);
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout() {
        auth()->logout();
        return response()->json(['message' => 'User successfully signed out']);
    }
    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh() {
        return $this->createNewToken(auth()->refresh());
    }
    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function userProfile() {
        return response()->json(auth()->user());
    }
    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token){
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user()
        ]);
    }
}
//  namespace App\Http\Controllers\Api;
// // use AuthController;
// use auth;
// use App\Models\User;
// use App\Models\type_user;
// // use Illuminate\Support\Facades\Auth;


// use Illuminate\Http\Request;
// use App\Http\Resources\Userreso;
// // use Illuminate\Support\Facades\Auth;
// // use Illuminate\Http\RedirectResponse;
// use App\Http\Controllers\Controller;
// use Illuminate\Support\Facades\Validator;
// // use Illuminate\Support\Facades\Validator;
// // use App\Http\Resources\Userreso;
// /**
//  * AuthController
//  */
// class AuthController extends Controller
// {

//     //  use Validator;
//     /**
//      * Create a new AuthController instance.
//      *
//      * @return void
//      */
//     public function __construct() {
//         $this->middleware('auth:api', ['except' => ['login', 'register']]);
//     }
//     /**
//      * Get a JWT via given credentials.
//      *
//      * @return \Illuminate\Http\JsonResponse
//      */
//     public function login(Request $request){
//         $validator=validator::make($request->all(), [
//             'email' => 'required|email',
//             'password' => 'required|string|min:6',
//         ]);
//         if ($validator->fails()) {
//             return response()->json($validator->errors(), 422);
//         }
//         if (! $token = auth()->attempt($validator->validated())) {
//             return response()->json(['error' => 'Unauthorized'], 401);
//         }
//         return $this->createNewToken($token);
//     }
//     /**
//      * Register a User.
//      *
//      * @return \Illuminate\Http\JsonResponse
//      */
//     public function register(Request $request) {
//         $validator = Validator::make($request->all(), [
//             'name' => 'required|string|between:2,100',
//             'email' => 'required|string|email|max:100|unique:users',
//             'password' => 'required|string|confirmed|min:6',
//         //   'type_user_id' => 'required|integar|max=20',

//         ]);
//         if($validator->fails()){
//             return response()->json($validator->errors()->toJson(), 400);
//         }
//         $users=type_user::find($request->type_user_id);
//         $user = User::create(array_merge(
//                     $validator->validated(),
//                     ['password' => bcrypt($request->password),
//                     'type_user_id'=>$request->type_user_id
//                     ]
//                 ));
//         return response()->json([
//             'message' => 'User successfully registered',
//             'user' => $user
//         ], 201);
//     }

//     /**
//      * Log the user out (Invalidate the token).
//      *
//      * @return \Illuminate\Http\JsonResponse
//      */
//     public function logout() {
//         auth()->logout();
//         return response()->json(['message' => 'User successfully signed out']);
//     }
//     /**
//      * Refresh a token.
//      *
//      * @return \Illuminate\Http\JsonResponse
//      */
//     // public function refresh() {
//     //     return $this->createNewToken(auth()->refresh());
//     // }
//     /**
//      * Get the authenticated User.
//      *
//      * @return \Illuminate\Http\JsonResponse
//      */
//     public function userProfile() {
//         return response()->json(auth()->user());
//     }
//     /**
//      * Get the token array structure.
//      *
//      * @param  string $token
//      *
//      * @return \Illuminate\Http\JsonResponse
//      */
//     protected function createNewToken($token){
//         return response()->json([
//             'access_token' => $token,
//             'token_type' => 'bearer',
//             'expires_in' => auth()->factory()->getTTL() * 60,
//             'user' => auth()->user()
//         ]);

//         return [
//             'token'=> auth()->user()->createToken('web')->plainTextToken
//         ];
//     }
// //
// // protected function createNewToken($token){
// //     return response()->json([
// //         'access_token' => $token,
// //         'token_type' => 'bearer',
// //         'expires_in' => auth()->factory()->getTTL() * 60,
// //         'user' => auth()->user()
// //     ]);
// // }
// }
// // namespace App\Http\Controllers\Api;

// // use App\Http\Controllers\Controller;
// // use Illuminate\Http\Request;

// // class AuthController extends Controller
// // {
// //     //
// // } -->
