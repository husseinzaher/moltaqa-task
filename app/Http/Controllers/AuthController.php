<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use App\Http\Resources\DriverResource;
use App\Http\Resources\UserResource;
use App\Models\User;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    public function login(LoginRequest $request)
    {
        Auth::validate($request->validated());
        $user = Auth::getLastAttempted();
        $this->code = 200;
        $this->message = 'login successfully';
        $this->body['user'] = UserResource::make($user);
        $this->body['accessToken'] = $user->createToken('User login token')->plainTextToken;
        $this->body['nearest_drivers'] = DriverResource::collection($this->drivers($user->latitude, $user->longitude)->take(3)->get());

        return self::apiResponse($this->code, $this->message, $this->body);
    }

    private function drivers($Latitude, $Longitude)
    {
        $query = User::query()->where('type', 'driver')->select();
        $haversine = "(6371 
        * acos(cos(radians($Latitude))
         * cos(radians(latitude)) 
         * cos(radians(longitude) 
         - radians($Longitude)) 
         + sin(radians($Latitude)) 
         * sin(radians(latitude))))";

        return $query->selectRaw("{$haversine} AS distance");
    }
}
