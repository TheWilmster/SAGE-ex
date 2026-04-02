function scr_player_facestomp() {
    move = key_left + key_right;
    jumpAnim = false;
    hsp = move * movespeed;
    
    if ((scr_solid(x + 1, y) && xscale == 1) || (scr_solid(x - 1, y) && xscale == -1))
        movespeed = 0;
    
    if (move == 0)
        movespeed = 0;
    
    if (move != 0 && movespeed < 6)
        movespeed += 0.5;
    
    if (xscale == 1 && move == -1)
        movespeed = 0;
    
    if (xscale == -1 && move == 1)
        movespeed = 0;
    
    if (!key_down)
        state = 57;
    
    landAnim = true;
    
    if (vsp > 0)
        superslam++;
    else
        superslam = 0;
    
    if (vsp > 15)
    {
        state = 73;
        superslam = 0;
    }
    
    if (grounded && (!place_meeting(x, y + 1, obj_destructibles) || place_meeting(x, y + 1, obj_metalblock)) && vsp > 0)
    {
        scr_sound(sfx_facestomp);
        state = 76;
        jumpAnim = true;
        jumpstop = false;
        image_index = 0;
        
        if (!place_meeting(x, y, obj_water2))
            instance_create(x, y, obj_landcloud);
        
        freefallstart = false;
        audio_sound_gain(sfx_land, 0.7, 0);
        
        if (!audio_is_playing(sfx_land))
            audio_play_sound(sfx_land, 1, false);
    }
    
    if (facestompAnim == false)
    {
        sprite_index = spr_player_facestomp;
    }
    else if (facestompAnim == true)
    {
        sprite_index = spr_player_facestomphit;
        
        if (floor(image_index) == 5)
            facestompAnim = false;
    }
    
    if (move != 0)
        xscale = move;
    
    image_speed = 0.35;
    
    if (grounded && input_buffer_jump < 8 && vsp > 0)
    {
        sprite_index = spr_player_hanstandjump;
        stompAnim = false;
        hsp = 0;
        state = 21;
        jumpAnim = true;
        jumpstop = false;
        image_index = 0;
        
        if (!place_meeting(x, y, obj_water2))
            instance_create(x, y, obj_landcloud);
        
        freefallstart = false;
    }
    
    if (key_jump)
        input_buffer_jump = 0;
}