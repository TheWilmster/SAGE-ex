function scr_player_mach1() {
    dir = xscale;
    move = key_left + key_right;
    landAnim = 0;
    
    if (scr_solid(x + 1, y) && xscale == 1 && !place_meeting(x + 1, y, obj_slope))
    {
        mach2 = 0;
        state = 0;
        movespeed = 0;
    }
    
    if (scr_solid(x - 1, y) && xscale == -1 && !place_meeting(x - 1, y, obj_slope))
    {
        mach2 = 0;
        state = 0;
        movespeed = 0;
    }
    
    machhitAnim = 0;
    crouchslideAnim = 1;
    
    if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
        hsp = xscale * movespeed;
    else if (place_meeting(x, y + 1, obj_railh))
        hsp = (xscale * movespeed) - 5;
    else if (place_meeting(x, y + 1, obj_railh2))
        hsp = (xscale * movespeed) + 5;
    
    if (xscale == 1 && move == -1)
    {
        sprite_index = spr_mach1;
        momemtum = 0;
        mach2 = 0;
        movespeed = 6;
        image_index = 0;
        xscale = -1;
    }
    
    if (xscale == -1 && move == 1)
    {
        sprite_index = spr_mach1;
        momemtum = 0;
        mach2 = 0;
        movespeed = 6;
        image_index = 0;
        xscale = 1;
    }
    
    if (grounded)
    {
        if (movespeed <= 8)
            movespeed += 0.075;
        
        if (movespeed >= 8)
        {
            state = 69;
            
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale;
        }
    }
    
    if (!grounded && sprite_index != spr_airdash1)
        sprite_index = spr_airdash2;
    
    if (sprite_index == spr_airdash1 && floor(image_index) == (image_number - 1))
        sprite_index = spr_airdash2;
    
    if ((!key_attack && character == "P") || (character == "S" && move == 0))
    {
        state = 0;
        image_index = 0;
    }
    
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
    {
        vsp /= 10;
        jumpstop = 1;
    }
    
    if (grounded && vsp > 0)
        jumpstop = 0;
    
    if (place_meeting(x + xscale, y, obj_solid) && !place_meeting(x + sign(hsp), y, obj_slope))
    {
        movespeed = 0;
        state = 0;
    }
    
    image_speed = 0.5;
    
    if (!instance_exists(obj_dashcloud) && grounded)
    {
        with (instance_create(x, y, obj_dashcloud))
            image_xscale = other.xscale;
    }
    
    if (key_slap2 && key_down)
    {
        image_index = 0;
        state = 90;
        vsp = -4;
    }
    
    if (grounded && sprite_index != spr_mach1 && vsp > 0)
    {
        sprite_index = spr_mach1;
        image_index = 0;
    }
    
    if (key_jump && grounded)
    {
        scr_soundeffect(sfx_jump);
        sprite_index = spr_airdash1;
        dir = xscale;
        momemtum = 1;
        vsp = -11;
        jumpAnim = 1;
        image_index = 0;
    }
    
    if (key_attack && !place_meeting(x + xscale, y, obj_solid) && character == "S" && grounded)
    {
        state = 21;
        movespeed = 0;
    }
    
    if (key_down && !grounded)
    {
        if (shotgunAnim == 0)
        {
            image_index = 0;
            state = 90;
            sprite_index = spr_bodyslamstart;
            vsp = -5;
        }
        else
        {
            image_index = 0;
            state = 90;
            sprite_index = spr_player_shotgunjump1;
            vsp = -5;
            
            with (instance_create(x + (xscale * 30), y + 60, obj_shotgunbullet))
            {
                sprite_index = sprite10391;
                spdh = -10;
                spd = 0;
            }
            
            with (instance_create(x + (xscale * 30), y + 60, obj_shotgunbullet))
            {
                sprite_index = sprite10391;
                spdh = -10;
                spd = 5;
            }
            
            with (instance_create(x + (xscale * 30), y + 60, obj_shotgunbullet))
            {
                sprite_index = sprite10391;
                spdh = -10;
                spd = -5;
            }
        }
    }
    
    if (key_taunt2)
    {
        scr_soundeffect(sfx_taunt);
        taunttimer = 20;
        tauntstoredmovespeed = movespeed;
        tauntstoredsprite = sprite_index;
        tauntstoredstate = state;
        state = 50;
        image_index = random_range(0, sprite_get_number(spr_taunt) - 1);
        sprite_index = spr_taunt;
        instance_create(x, y, obj_taunteffect);
    }
}