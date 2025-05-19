function scr_player_boxxedpep() {
    mask_index = spr_crouchmask;
    key_particles = 0;
    alarm[5] = 2;
    alarm[7] = 60;
    hurted = 1;
    
    if (key_jump)
        input_buffer_jump = 0;
    
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
    {
        vsp /= 2;
        jumpstop = 1;
    }
    
    if (grounded && vsp > 0)
        jumpstop = 0;
    
    if (dir != xscale)
    {
        dir = xscale;
        movespeed = 0;
    }
    
    if (sprite_index != spr_boxxedpep_intro)
    {
        move = key_left + key_right;
        
        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
            hsp = move * movespeed;
        else if (place_meeting(x, y + 1, obj_railh))
            hsp = (move * movespeed) - 5;
        else if (place_meeting(x, y + 1, obj_railh2))
            hsp = (move * movespeed) + 5;
    }
    
    if (scr_solid(x + sign(hsp), y) && xscale == 1 && move == 1 && !place_meeting(x + 1, y, obj_slope))
        movespeed = 0;
    
    if (scr_solid(x + sign(hsp), y) && xscale == -1 && move == -1 && !place_meeting(x - 1, y, obj_slope))
        movespeed = 0;
    
    if ((grounded && input_buffer_jump < 8 && vsp > 0) && !scr_solid(x, y - 16) && !scr_solid(x, y - 32))
    {
        scr_sound(sound_jump);
        instance_create(x, y, obj_highjumpcloud2);
        vsp = -11;
    }
    
    if (move != 0)
    {
        if (movespeed < 8)
            movespeed += 0.5;
        else if (floor(movespeed) == 8)
            movespeed = 8;
    }
    else
    {
        movespeed = 0;
    }
    
    if (movespeed > 8)
        movespeed -= 0.1;
    
    if (sprite_index == spr_boxxedpep_intro && floor(image_index) == (image_number - 1))
        sprite_index = spr_boxxedpep_idle;
    
    if (sprite_index != spr_boxxedpep_intro)
    {
        if (move != 0)
            xscale = move;
        
        if (grounded)
        {
            if (move != 0)
                sprite_index = spr_boxxedpep_walk;
            else
                sprite_index = spr_boxxedpep_idle;
        }
        else
        {
            sprite_index = spr_boxxedpep_air;
        }
    }
    
    if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
        instance_create(x, y + 43, obj_cloudeffect);
    
    if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (sprite_index == spr_player_downslopes || sprite_index == spr_player_upslopes))
        instance_create(x, y + 43, obj_cloudeffect);
    
    if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0)
    {
        scr_sound(sound_step);
        steppy = 1;
    }
    
    if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
        steppy = 0;
}