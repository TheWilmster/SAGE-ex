function scr_player_knightpep() {
    alarm[5] = 2;
    alarm[7] = 60;
    global.SAGEknighttaken = 1;
    
    if (sprite_index == spr_knightpepwalk || sprite_index == spr_knightpepjump || sprite_index == spr_knightpepfall || sprite_index == spr_knightpepidle)
    {
        move = key_left + key_right;
        hsp = move * movespeed;
    }
    else if (grounded)
    {
        hsp = 0;
        move = 0;
    }
    
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
    
    if (grounded && move != 0 && sprite_index == spr_knightpepidle)
        sprite_index = spr_knightpepwalk;
    else if (grounded && move == 0 && sprite_index == spr_knightpepwalk)
        sprite_index = spr_knightpepidle;
    
    if ((input_buffer_jump < 8 && vsp > 0) && grounded && (sprite_index == spr_knightpepidle || sprite_index == spr_knightpepwalk))
    {
        image_index = 0;
        sprite_index = spr_knightpepjumpstart;
    }
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_knightpepjumpstart)
    {
        scr_soundeffect(sfx_jump);
        vsp = -11;
        
        if (key_right)
            hsp = 4;
        
        if (-key_left)
            hsp = -4;
        
        sprite_index = spr_knightpepjump;
    }
    
    if ((floor(image_index) == (image_number - 1) && sprite_index == spr_knightpepjump) || (!grounded && sprite_index != spr_knightpepjump && sprite_index != spr_knightpepthunder))
        sprite_index = spr_knightpepfall;
    
    if (sprite_index == spr_knightpepfall && grounded && vsp > 0)
    {
        with (obj_baddie)
        {
            if (point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), __view_get(0, 0) + __view_get(2, 0), __view_get(1, 0) + __view_get(3, 0)))
            {
                vsp = -7;
                hsp = 0;
            }
        }
        
        with (obj_camera)
        {
            shake_mag = 10;
            shake_mag_acc = 30 / room_speed;
        }
        
        combo = 0;
        bounce = 0;
        image_index = 0;
        freefallstart = 0;
        momemtum = 0;
        scr_soundeffect(sfx_groundpound);
        instance_create(x, y, obj_landcloud);
        sprite_index = spr_knightpepland;
    }
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_knightpepland)
        sprite_index = spr_knightpepidle;
    
    if (move != 0)
        xscale = move;
    
    if (scr_slope() && sprite_index != spr_knightpepthunder)
    {
        with (instance_place(x, y + 1, obj_slope))
            other.xscale = -sign(image_xscale);
        
        state = 17;
        sprite_index = spr_knightpepdownslope;
    }
    
    if (move != 0)
    {
        if (movespeed < 6)
            movespeed += 0.5;
        else if (movespeed == 6)
            movespeed = 6;
    }
    else
    {
        movespeed = 0;
    }
    
    if (move != 0 && hsp != 0)
    {
        if (movespeed < 1)
            image_speed = 0.15;
        else if (movespeed > 1 && movespeed < 4)
            image_speed = 0.35;
        else
            image_speed = 0.6;
    }
    else
    {
        image_speed = 0.35;
    }
    
    if (floor(image_index) == 4 && sprite_index == spr_knightpepstart)
        instance_create(x, y - 600, obj_thunder);
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_knightpepthunder)
        sprite_index = spr_knightpepidle;
    
    if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
        instance_create(x, y + 43, obj_cloudeffect);
    
    if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0)
        steppy = 1;
    
    if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
        steppy = 0;
}