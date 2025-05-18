if (sprite_index == spr_grabbiehand_fall)
{
    with (obj_player)
    {
        if (state == 14)
        {
            scr_sound(sound_losetransformation);
            
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 0;
            
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 1;
            
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 2;
            
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 3;
            
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 4;
        }
        
        if (state == 12 || state == 13)
        {
            scr_sound(sound_losetransformation);
            instance_create(x, y, obj_slimedebris);
            instance_create(x, y, obj_slimedebris);
            instance_create(x, y, obj_slimedebris);
            instance_create(x, y, obj_slimedebris);
            instance_create(x, y, obj_slimedebris);
            instance_create(x, y, obj_slimedebris);
            instance_create(x, y, obj_slimedebris);
            instance_create(x, y, obj_slimedebris);
        }
    }
    
    grav = 0;
    vsp = 0;
    grabbing = 1;
    sprite_index = spr_grabbiehand_catch;
    other.image_index = 0;
    obj_player.sprite_index = spr_player_catched;
    other.state = 71;
    other.x = x;
    other.y = y;
    other.vsp = 0;
    other.hsp = 0;
    scr_sound(sound_suplex1);
}

if (sprite_index == spr_grabbiehand_catch)
{
    other.vsp = 0;
    other.hsp = 0;
    other.state = 71;
    obj_player.sprite_index = spr_player_catched;
    other.x = x;
    other.y = y;
}
