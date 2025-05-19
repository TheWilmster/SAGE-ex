function scr_player_mach3() {
    if (character == "P")
    {
        if (windingAnim < 2000)
            windingAnim++;
    }
    
    if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
        hsp = xscale * movespeed;
    else if (place_meeting(x, y + 1, obj_railh))
        hsp = (xscale * movespeed) - 5;
    else if (place_meeting(x, y + 1, obj_railh2))
        hsp = (xscale * movespeed) + 5;
    
    mach2 = 100;
    momemtum = 1;
    move = key_right + key_left;
    move2 = key_right2 + key_left2;
    
    if (movespeed < 24 && move == xscale)
    {
        movespeed += 0.1;
        
        if (!instance_exists(obj_crazyruneffect))
            instance_create(x, y, obj_crazyruneffect);
    }
    else if (movespeed > 12 && move != xscale)
    {
        movespeed -= 0.1;
    }
    
    crouchslideAnim = 1;
    
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
    {
        vsp /= 10;
        jumpstop = 1;
    }
    
    if (grounded && vsp > 0)
        jumpstop = 0;
    
    if (input_buffer_jump < 8 && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1))
    {
        scr_soundeffect(sfx_jump);
        image_index = 0;
        sprite_index = spr_mach3jump;
        vsp = -11;
    }
    
    if (sprite_index == spr_player_mach3jump && floor(image_index) == (image_number - 1))
        sprite_index = spr_mach4;
    
    if (floor(image_index) == (image_number - 1) && (sprite_index == spr_player_rollgetup || sprite_index == spr_mach3hit))
        sprite_index = spr_mach4;
    
    if (sprite_index == spr_mach2jump && grounded && vsp > 0)
        sprite_index = spr_mach4;
    
    if (movespeed > 20 && sprite_index != spr_crazyrun)
    {
        flash = 1;
        sprite_index = spr_crazyrun;
    }
    else if (movespeed <= 20 && sprite_index == spr_crazyrun)
    {
        sprite_index = spr_mach4;
    }
    
    if (sprite_index == spr_player_crazyrun && !instance_exists(obj_crazyrunothereffect))
        instance_create(x, y, obj_crazyrunothereffect);
    
    if (sprite_index == spr_mach4)
        image_speed = 0.4;
    
    if (sprite_index == spr_crazyrun)
        image_speed = 0.75;
    
    if (sprite_index == spr_player_rollgetup || sprite_index == spr_mach3hit)
        image_speed = 0.4;
    
    if (key_jump)
        input_buffer_jump = 0;
    
    if (key_up)
    {
        sprite_index = spr_superjumpprep;
        state = 64;
        hsp = 0;
        image_index = 0;
    }
    
    if ((!key_attack && grounded && character == "P") || (character == "S" && (move == 0 || move != xscale) && grounded))
    {
        sprite_index = spr_machslidestart;
        scr_soundeffect(sfx_break);
        state = 70;
        image_index = 0;
    }
    
    if (move == -xscale && grounded && character == "P")
    {
        scr_soundeffect(sfx_machslideboost);
        sprite_index = spr_player_machslideboost3;
        state = 70;
        image_index = 0;
    }
    
    if (key_down && !place_meeting(x, y, obj_dashpad))
    {
        instance_create(x, y, obj_jumpdust);
        flash = 0;
        state = 36;
        vsp = 10;
    }
    
    if ((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope)))
    {
        wallspeed = 10;
        state = 16;
    }
    
    if ((scr_solid(x + 1, y) && xscale == 1) && !scr_slope() && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + sign(hsp), y, obj_metalblock) && !place_meeting(x + sign(hsp), y, obj_destructibles) && grounded)
    {
        sprite_index = spr_hitwall;
        scr_soundeffect(sfx_groundpound);
        scr_soundeffect(sfx_bumpwall);
        
        with (obj_camera)
        {
            shake_mag = 20;
            shake_mag_acc = 40 / room_speed;
        }
        
        hsp = 0;
        image_speed = 0.35;
        
        with (obj_baddie)
        {
            if (point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), __view_get(0, 0) + __view_get(2, 0), __view_get(1, 0) + __view_get(3, 0)))
            {
                stun = 1;
                alarm[0] = 200;
                ministun = 0;
                vsp = -5;
                hsp = 0;
            }
        }
        
        flash = 0;
        state = 71;
        hsp = -2.5;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        instance_create(x + 10, y + 10, obj_bumpeffect);
    }
    
    if ((scr_solid(x - 1, y) && xscale == -1) && !scr_slope() && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + sign(hsp), y, obj_metalblock) && !place_meeting(x + sign(hsp), y, obj_destructibles) && grounded)
    {
        sprite_index = spr_hitwall;
        scr_soundeffect(sfx_groundpound);
        scr_soundeffect(sfx_bumpwall);
        
        with (obj_camera)
        {
            shake_mag = 20;
            shake_mag_acc = 40 / room_speed;
        }
        
        hsp = 0;
        image_speed = 0.35;
        flash = 0;
        state = 71;
        hsp = 2.5;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        instance_create(x - 10, y + 10, obj_bumpeffect);
    }
    
    if (!instance_exists(obj_chargeeffect))
        instance_create(x, y, obj_chargeeffect);
    
    if (!instance_exists(obj_superdashcloud) && grounded)
        instance_create(x, y, obj_superdashcloud);
    
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