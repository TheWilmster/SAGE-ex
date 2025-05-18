function scr_player_firemouth() {
    if (sprite_index == spr_player_firemouthintro || sprite_index == spr_player_firemouthend)
        mask_index = spr_crouchmask;
    else
        mask_index = spr_player_mask;
    
    move = key_left + key_right;
    
    if (grounded)
    {
        if (move != 0)
            xscale = move;
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
    
    mach2 = 0;
    landAnim = 0;
    scr_getinput();
    alarm[5] = 2;
    
    if (sprite_index == spr_player_firemouthintro && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_firemouth;
    
    if (sprite_index == spr_player_firemouth)
    {
        if (movespeed <= 8)
            movespeed += 0.2;
        
        hsp = floor(xscale * movespeed);
    }
    else
    {
        hsp = 0;
        movespeed = 0;
    }
    
    if (sprite_index == spr_player_firemouthend && floor(image_index) == (image_number - 1))
    {
        alarm[5] = 2;
        alarm[7] = 60;
        hurted = 1;
        state = 0;
        sprite_index = spr_player_idle;
        image_index = 0;
    }
    
    if (key_slap2 && sprite_index == spr_player_firemouth && sprite_index != spr_player_firemouthshoot && !instance_exists(obj_firemouth_projectile))
    {
        movespeed = 0;
        image_index = 0;
        sprite_index = spr_player_firemouthshoot;
    }
    
    if (sprite_index == spr_player_firemouthshoot && floor(image_index) == 3 && !instance_exists(obj_firemouth_projectile))
    {
        with (instance_create(x, y, obj_firemouth_projectile))
            image_xscale = other.xscale;
    }
    
    if (sprite_index == spr_player_firemouthshoot && floor(image_index) == (image_number - 1))
    {
        sprite_index = spr_player_firemouth;
        image_index = 0;
    }
    
    if (scr_solid(x + 1, y) && xscale == 1 && hsp != 0 && !place_meeting(x + sign(hsp), y, obj_slope))
    {
        instance_create(x + 10, y + 10, obj_bumpeffect);
        xscale *= -1;
    }
    
    if (scr_solid(x - 1, y) && xscale == -1 && hsp != 0 && !place_meeting(x + sign(hsp), y, obj_slope))
    {
        instance_create(x - 10, y + 10, obj_bumpeffect);
        xscale *= -1;
    }
    
    if (input_buffer_jump < 8 && grounded && hsp != 0)
        vsp = -11;
    
    if (sprite_index == spr_player_firemouth)
    {
        if (movespeed < 4)
            image_speed = 0.35;
        else if (movespeed > 4 && movespeed < 8)
            image_speed = 0.45;
        else
            image_speed = 0.6;
    }
    else
    {
        image_speed = 0.35;
    }
    
    if (hsp != 0 && (floor(image_index) == 0 || floor(image_index) == 2) && steppy == 0 && grounded)
        steppy = 1;
    
    if (floor(image_index) != 0 && floor(image_index) != 2)
        steppy = 0;
    
    if (!instance_exists(obj_dashcloud) && grounded && hsp != 0)
        instance_create(x, y, obj_dashcloud);
}