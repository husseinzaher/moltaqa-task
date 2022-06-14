<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{

    public function toArray($request)
    {

        return [
            'id'        => (integer) $this->id,
            'name'      => (string) $this->name,
            'phone'     => (string) $this->phone,
            'type'     => (string) $this->type,
            'latitude'  => (double) $this->latitude,
            'longitude' => (double) $this->longitude,
        ];
    }
}
