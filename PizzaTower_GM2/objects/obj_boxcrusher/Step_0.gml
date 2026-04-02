if (y == ystart && (obj_player.x > (x - 50) && obj_player.x < (x + 50)) && (obj_player.y > y && obj_player.y < (y + 200)))
{
    scr_sound(sound_enemythrow);
    grav = 0.35;
    vsp = 10;
    sprite_index = spr_boxcrusher_fall;
}

if (grounded && sprite_index == spr_boxcrusher_fall)
{
    scr_sound(sound_maximumspeedland);
    
    with (obj_camera)
    {
        shake_mag = 10;
        shake_mag_acc = 30 / room_speed;
    }
    
    vsp = 0;
    image_index = 0;
    sprite_index = spr_boxcrusher_land;
}

if (sprite_index == spr_boxcrusher_land && floor(image_index) == (image_number - 1))
{
    grav = 0;
    sprite_index = spr_boxcrusher_idle;
    vsp = -1;
}

if (y == ystart && vsp == -1)
    vsp = 0;

scr_collide();
