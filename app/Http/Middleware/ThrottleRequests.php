<?php

namespace App\Http\Middleware;

use Illuminate\Routing\Middleware\ThrottleRequests as
    BaseThrottleRequests;
use Closure;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Validation\ValidationException;

class ThrottleRequests extends BaseThrottleRequests
{
    public function handle($request, Closure $next, $maxAttempts = 60, $decayMinutes = 1, $prefix = '')
    {
        $key = $request->ip();
        $maxAttempts = $this->resolveMaxAttempts($request, $maxAttempts);
        if ($this->limiter->tooManyAttempts($key, $maxAttempts)) {

            $seconds = RateLimiter::availableIn($key);

            throw ValidationException::withMessages([
                "ip" => trans('auth.throttle', [
                    'ip' => $key,
                    'seconds' => $seconds,
                    'minutes' => ceil($seconds / 60),
                ]),
            ]);
        }

        $this->limiter->hit($key, $decayMinutes * 60);

        return $next($request);
    }
}
