function scr_player_cheesepepstick() {
    alarm[5] = 2;
    alarm[7] = 60;
    hurted = 1;
    
    if (place_meeting(x, y - 1, obj_railh))
    {
        hsp = 3;
        vsp = 0;
        sprite_index = spr_cheesepep_stickceilling;
    }
    else if (place_meeting(x + 1, y, obj_railv) || place_meeting(x - 1, y, obj_railv))
    {
        if (place_meeting(x + 1, y, obj_railv))
            xscale = -1;
        else
            xscale = 1;
        
        sprite_index = spr_cheesepep_stickwall;
        vsp = -3;
    }
    else
    {
        grav = 0.5;
        image_index = 0;
        sprite_index = spr_cheesepep_jump;
        state = 12;
    }
    
    if (key_jump && (place_meeting(x + 1, y, obj_railv) || place_meeting(x - 1, y, obj_railv)))
    {
        scr_sound(sound_jump);
        grav = 0.5;
        vsp = -9;
        image_index = 0;
        sprite_index = spr_cheesepep_jump;
        state = 12;
    }
    
    if (key_jump && place_meeting(x, y - 1, obj_railh))
    {
        scr_sound(sound_jump);
        grav = 0.5;
        vsp = 1;
        image_index = 0;
        sprite_index = spr_cheesepep_jump;
        state = 12;
    }
    
    image_speed = 0.35;
}