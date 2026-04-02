function scr_player_Sjumpprep() {
    combo = 0;
    mach2 = 0;
    move = key_left + key_right;
    
    if (sprite_index == spr_superjumpprep)
    {
        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
            hsp = xscale * movespeed;
        else if (place_meeting(x, y + 1, obj_railh))
            hsp = (xscale * movespeed) - 5;
        else if (place_meeting(x, y + 1, obj_railh2))
            hsp = (xscale * movespeed) + 5;
        
        if (movespeed >= 0)
            movespeed -= 0.8;
    }
    
    if (sprite_index == spr_player_superjumppreplight || sprite_index == spr_snick_superjumplight || sprite_index == spr_player_superjumpright || sprite_index == spr_player_superjumpleft)
    {
        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
            hsp = move * 2;
        else if (place_meeting(x, y + 1, obj_railh))
            hsp = (move * 2) - 5;
        else if (place_meeting(x, y + 1, obj_railh2))
            hsp = (move * 2) + 5;
    }
    
    if (character == "S")
    {
        if (floor(image_index) == (image_number - 1) && sprite_index == spr_snick_superjumpprep)
            sprite_index = spr_snick_superjumplight;
        
        if (move != 0)
            xscale = move;
    }
    
    if (character == "P")
    {
        if (sprite_index != spr_player_superjumpprep)
        {
            if (sign(hsp) == 0)
                sprite_index = spr_player_superjumppreplight;
            
            if (sign(hsp) == 1)
            {
                if (xscale == 1)
                    sprite_index = spr_player_superjumpright;
                
                if (xscale == -1)
                    sprite_index = spr_player_superjumpleft;
            }
            
            if (sign(hsp) == -1)
            {
                if (xscale == 1)
                    sprite_index = spr_player_superjumpleft;
                
                if (xscale == -1)
                    sprite_index = spr_player_superjumpright;
            }
        }
    }
    
    start_running = true;
    alarm[4] = 14;
    jumpAnim = true;
    dashAnim = true;
    landAnim = false;
    machslideAnim = true;
    moveAnim = true;
    stopAnim = true;
    crouchslideAnim = true;
    crouchAnim = true;
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_superjumpprep)
        sprite_index = spr_player_superjumppreplight;
    
    if (!key_up && (character == "S" || (sprite_index == spr_player_superjumppreplight || sprite_index == spr_player_superjumpleft || sprite_index == spr_player_superjumpright)) && !scr_solid(x, y - 16) && !scr_solid(x, y - 32))
    {
        scr_soundeffect(sfx_superjumprelease);
        instance_create(x, y, obj_explosioneffect);
        sprite_index = spr_superjump;
        state = 62;
        vsp = -15;
    }
    
    if (!audio_is_playing(sfx_superjumphold))
        scr_soundeffect(sfx_superjumphold);
    
    image_speed = 0.35;
}