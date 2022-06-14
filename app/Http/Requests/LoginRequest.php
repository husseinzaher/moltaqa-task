<?php

namespace App\Http\Requests;

use App\Models\User;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Auth\Events\Lockout;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Str;
use Illuminate\Validation\Rules\Password;
use Illuminate\Validation\ValidationException;

class LoginRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        // Can use this to set max attempt login, when not use throttle Middleware
        //$this->ensureIsNotRateLimited();
        //RateLimiter::hit($this->throttleKey());

        return [
            'email'    => 'required|email|exists:users',
            'password' => [
                'required', 'string',
                Password::default(),
                function ($attribute, $value, $fail) {
                    $user = User::firstWhere('email', $this->email);
                    if (! Hash::check($value, $user?->password)) {
                        throw ValidationException::withMessages([
                            'auth' => __('auth.failed'),
                        ]);
                    }
                    if ($user->type != 'client') {
                        throw ValidationException::withMessages([
                            'type' => __('your user not have permission to login'),
                        ]);
                    }
                    RateLimiter::clear($this->throttleKey());
                },
            ],
        ];
    }

    /**
     * Ensure the login request is not rate limited.
     *
     */
    public function ensureIsNotRateLimited()
    {
        if (! RateLimiter::tooManyAttempts($this->throttleKey(), 6)) {
            return;
        }
        event(new Lockout($this));
        $seconds = RateLimiter::availableIn($this->throttleKey());
        throw ValidationException::withMessages([
            'email' => trans('auth.throttle', [
                'seconds' => $seconds,
                'minutes' => ceil($seconds / 60),
            ]),
        ]);
    }

    /**
     * Get the rate limiting throttle key for the request.
     */
    public function throttleKey()
    {
        return Str::lower($this->email).'|'.$this->ip();
    }
}
