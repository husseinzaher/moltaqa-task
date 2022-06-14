<?php

namespace Tests\Feature;

use Tests\TestCase;

class UserAuthTest extends TestCase
{
    public function testAuthExample()
    {
        $response = $this->post('/api/login', ['email' => 'shanie.gorczany@example.com', 'password' => 'password']);

        $response->assertStatus(200);
        $response->assertSee('accessToken');
        $response->assertSee('nearest_drivers');
        $response->assertJsonCount(3, 'body.nearest_drivers');
    }
}
