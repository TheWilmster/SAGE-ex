if (floor(image_index) == (image_number - 1) && obj_player.state != 77)
{
    with (obj_player)
    {
        state = 77;
        sprite_index = spr_snick_victory;
        image_index = 0;
    }
    
    alarm[0] = 200;
}

if (floor(image_index) == (image_number - 1))
    image_speed = 0;
