<?php

namespace App\Entity;

use MyCLabs\Enum\Enum;

class Role extends Enum
{
    public const Admin = 'admin';
    public const Registered = 'registered';
    public const Anonym = 'anonym';
}