function scr_player_grab() {
    grav = 0.5;
    move = key_left + key_right;
    
    if (grounded)
    {
        if (dir != xscale && sprite_index != spr_player_swingding)
        {
            dir = xscale;
            movespeed = 2;
            facehurt = 0;
        }
        
        jumpstop = 0;
        anger = 100;
        
        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
            hsp = move * movespeed;
        else if (place_meeting(x, y + 1, obj_railh))
            hsp = (move * movespeed) - 5;
        else if (place_meeting(x, y + 1, obj_railh2))
            hsp = (move * movespeed) + 5;
        
        if (heavy == 0)
        {
            if (move != 0)
            {
                if (movespeed < 6)
                    movespeed += 0.5;
                else if (floor(movespeed) == 6)
                    movespeed = 6;
            }
            else
            {
                movespeed = 0;
            }
            
            if (movespeed > 6)
                movespeed -= 0.1;
        }
        else
        {
            if (move != 0)
            {
                if (movespeed < 4)
                    movespeed += 0.25;
                else if (floor(movespeed) == 4)
                    movespeed = 4;
            }
            else
            {
                movespeed = 0;
            }
            
            if (movespeed > 4)
                movespeed -= 0.1;
        }
        
        if (move != 0 && sprite_index != spr_player_swingding)
            xscale = move;
        
        if (move != 0)
        {
            if (movespeed < 3 && move != 0)
                image_speed = 0.35;
            else if (movespeed > 3 && movespeed < 6)
                image_speed = 0.45;
            else
                image_speed = 0.6;
        }
        else
        {
            image_speed = 0.35;
        }
    }
    
    if (!grounded)
    {
        if (dir != xscale && sprite_index != spr_player_swingding)
        {
            dir = xscale;
            movespeed = 2;
            facehurt = 0;
        }
        
        if (move != xscale)
            movespeed = 2;
        
        if (momemtum == 0)
            hsp = move * movespeed;
        else
            hsp = xscale * movespeed;
        
        if (move != xscale && momemtum == 1 && movespeed != 0)
            movespeed -= 0.05;
        
        if (movespeed == 0)
            momemtum = 0;
        
        if (move != 0 && movespeed < 6)
            movespeed += 0.5;
        
        if (movespeed > 6)
            movespeed -= 0.5;
        
        if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1))
            movespeed = 0;
        
        if (dir != xscale && sprite_index != spr_player_swingding)
        {
            dir = xscale;
            movespeed = 2;
            facehurt = 0;
        }
        
        if (move == -xscale)
        {
            mach2 = 0;
            momemtum = 0;
        }
        
        landAnim = 1;
        
        if (!key_jump2 && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
        {
            vsp /= 10;
            jumpstop = 1;
        }
        
        if (ladderbuffer > 0)
            ladderbuffer--;
        
        if (scr_solid(x, y - 1) && jumpstop == 0 && jumpAnim == 1)
        {
            vsp = grav;
            jumpstop = 1;
        }
        
        if (move != 0 && sprite_index != spr_player_swingding)
            xscale = move;
    }
    
    if (key_jump)
        input_buffer_jump = 0;
    
    if ((grounded && input_buffer_jump < 8 && !key_down && !key_attack && vsp > 0) && sprite_index != spr_player_swingding)
    {
        scr_soundeffect(sfx_jump);
        sprite_index = spr_player_haulingjump;
        instance_create(x, y, obj_highjumpcloud2);
        
        if (heavy == 0)
            vsp = -11;
        else
            vsp = -6;
        
        image_index = 0;
    }
    
    if (grounded && move != 0 && sprite_index == spr_player_haulingidle)
        sprite_index = spr_player_haulingwalk;
    else if (grounded && move == 0 && sprite_index == spr_player_haulingwalk)
        sprite_index = spr_player_haulingidle;
    
    if (sprite_index == spr_player_haulingstart && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_haulingidle;
    
    if ((sprite_index == spr_player_haulingjump && floor(image_index) == (image_number - 1)) || (!grounded && (sprite_index == spr_player_haulingwalk || sprite_index == spr_player_haulingidle)))
        sprite_index = spr_player_haulingfall;
    
    if (grounded && vsp > 0 && (sprite_index == spr_player_haulingfall || sprite_index == spr_player_haulingjump))
    {
        sprite_index = spr_player_haulingland;
        movespeed = 2;
    }
    
    if (sprite_index == spr_player_haulingland && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_haulingidle;
    
    if (move != 0 && move != lastmove && swingdingbuffer < 300)
    {
        lastmove = move;
        swingdingbuffer += 50;
    }
    
    if (swingdingbuffer > 0)
        swingdingbuffer -= 1;
    
    if (sprite_index == spr_player_swingding && swingdingbuffer < 150)
        state = 0;
    
    if (swingdingbuffer > 300 && sprite_index != spr_player_swingding)
    {
        sprite_index = spr_player_swingding;
        instance_create(x, y, obj_swingdinghitbox);
        flash = 1;
    }
    
    if (key_attack2 || key_slap2)
    {
        if (move != 0)
            move = xscale;
        
        state = 2;
        
        if (sprite_index == spr_player_swingding)
            sprite_index = spr_player_swingdingend;
        else if (!key_up)
            sprite_index = choose(spr_player_finishingblow1, spr_player_finishingblow2, spr_player_finishingblow3, spr_player_finishingblow4, spr_player_finishingblow5);
        else if (key_up)
            sprite_index = spr_player_uppercutfinishingblow;
        
        image_index = 0;
        hsp = 0;
        movespeed = 0;
    }
    
    if (key_down && !grounded)
    {
        sprite_index = spr_piledriver;
        vsp = -6;
        state = 42;
        image_index = 0;
        image_speed = 0.35;
    }
    
    if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
        instance_create(x, y + 43, obj_cloudeffect);
    
    if (key_down && grounded)
    {
        state = 65;
        landAnim = 0;
        crouchAnim = 1;
        image_index = 0;
        idle = 0;
    }
    
    if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0)
        steppy = 1;
    
    if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
        steppy = 0;
    
    if (sprite_index != spr_player_swingding)
        image_speed = 0.35;
    else
        image_speed = swingdingbuffer / 600;
}