function scr_player_jump() {
    if (momemtum == 0)
        hsp = move * movespeed;
    else
        hsp = xscale * movespeed;
    
    if (dir != xscale)
    {
        dir = xscale;
        movespeed = 2;
        facehurt = 0;
    }
    
    if (move != xscale)
        movespeed = 2;
    
    move = key_left + key_right;
    
    if (movespeed == 0)
        momemtum = 0;
    
    if (scr_solid(x + hsp, y))
    {
        movespeed = 0;
        mach2 = 0;
    }
    
    if (move != 0 && movespeed < 6)
        movespeed += 0.5;
    
    if (movespeed > 6)
        movespeed -= 0.1;
    
    if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1))
        movespeed = 0;
    
    if (dir != xscale)
        dir = xscale;
    
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
    
    if ((grounded && input_buffer_jump < 8 && !key_down && !key_attack && vsp > 0) && !(sprite_index == spr_player_facestomp || sprite_index == spr_player_freefall))
    {
        scr_soundeffect(0);
        sprite_index = spr_jump;
        
        if (shotgunAnim == 1)
            sprite_index = spr_shotgun_jump;
        
        instance_create(x, y, obj_highjumpcloud2);
        stompAnim = 0;
        vsp = -11;
        state = 57;
        jumpAnim = 1;
        jumpstop = 0;
        image_index = 0;
        movespeed = 2;
        freefallstart = 0;
    }
    
    if ((grounded && vsp > 0) && !key_attack)
    {
        scr_soundeffect(29);
        
        if (key_attack)
            landAnim = 0;
        
        input_buffer_secondjump = 0;
        state = 0;
        jumpAnim = 1;
        jumpstop = 0;
        image_index = 0;
        freefallstart = 0;
        movespeed = 2;
    }
    
    if (key_jump)
        input_buffer_jump = 0;
    
    if (character == "P")
    {
        if (vsp > 5)
            fallinganimation++;
        
        if (fallinganimation >= 40 && fallinganimation < 80)
            sprite_index = spr_player_facestomp;
        
        if (fallinganimation >= 80)
            sprite_index = spr_player_freefall;
    }
    
    if (stompAnim == 0)
    {
        if (jumpAnim == 1)
        {
            if (floor(image_index) == (image_number - 1))
                jumpAnim = 0;
        }
        
        if (jumpAnim == 0)
        {
            if (sprite_index == spr_airdash1)
                sprite_index = spr_airdash2;
            
            if (sprite_index == spr_shotgun_jump)
                sprite_index = spr_shotgun_fall;
            
            if (sprite_index == spr_jump)
                sprite_index = spr_fall;
            
            if (sprite_index == spr_player_Sjumpstart)
                sprite_index = spr_player_Sjump;
            
            if (sprite_index == spr_player_shotgunjump1)
                sprite_index = spr_player_shotgunjump2;
            
            if (sprite_index == spr_shotgun_shootair)
                sprite_index = spr_shotgun_fall;
        }
    }
    
    if (stompAnim == 1)
    {
        if (sprite_index == spr_stompprep && floor(image_index) == (image_number - 1))
            sprite_index = spr_stomp;
    }
    
    if (key_down)
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
            scr_soundeffect(14);
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
    
    if (move != 0)
        xscale = move;
    
    image_speed = 0.35;
    
    if (grounded && (sprite_index == spr_player_facestomp || sprite_index == spr_player_freefall))
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
        
        scr_soundeffect(15);
        image_index = 0;
        sprite_index = spr_player_bodyslamland;
        state = 76;
    }
    
    if (character == "N" && key_jump && sprite_index != spr_playerN_glide)
    {
        jumpstop = 0;
        sprite_index = spr_playerN_glide;
        vsp = -11;
    }
    
    if (key_slap2 && character == "N" && !instance_exists(obj_bomb))
    {
        with (instance_create(x, y, obj_bomb))
        {
            vsp = -5;
            hsp = other.xscale * 5;
        }
    }
    
    if (key_slap2 && character == "P" && suplexmove == 0 && !(shotgunAnim == 1 && key_up))
    {
        suplexmove = 1;
        scr_soundeffect(33);
        state = 21;
        image_index = 0;
        sprite_index = spr_player_suplexgrabjumpstart;
        vsp = -4;
        movespeed = 6;
    }
    
    if (key_slap2 && character == "P" && (shotgunAnim == 1 && key_up))
    {
        scr_soundeffect(14);
        state = 37;
        
        with (instance_create(x, y, obj_pistoleffect))
            image_xscale = other.image_xscale;
        
        image_index = 0;
        sprite_index = spr_player_shotgun;
        instance_create(x + (image_xscale * 20), y + 20, obj_shotgunbullet);
        
        with (instance_create(x + (image_xscale * 20), y + 20, obj_shotgunbullet))
            spdh = 4;
        
        with (instance_create(x + (image_xscale * 20), y + 20, obj_shotgunbullet))
            spdh = -4;
    }
    
    if (!key_attack || move != xscale)
        mach2 = 0;
    
    if (key_attack && grounded && fallinganimation < 40)
    {
        movespeed = 6;
        sprite_index = spr_mach1;
        jumpAnim = 1;
        state = 68;
        image_index = 0;
    }
    
    if (key_taunt2)
    {
        scr_soundeffect(60);
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