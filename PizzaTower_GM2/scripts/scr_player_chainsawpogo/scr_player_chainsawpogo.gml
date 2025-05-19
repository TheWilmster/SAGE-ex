function scr_player_chainsawpogo() {
    hsp = xscale * movespeed;
    
    if ((scr_solid(x + 1, y) && xscale == 1) || (scr_solid(x - 1, y) && xscale == -1))
        movespeed = 0;
    
    landAnim = 1;
    
    if (ladderbuffer > 0)
        ladderbuffer--;
    
    if (scr_solid(x, y - 1) && jumpstop == 0 && jumpAnim == 1)
    {
        vsp = grav;
        jumpstop = 1;
    }
    
    if ((scr_solid(x + 1, y) && xscale == 1) && !place_meeting(x + sign(hsp), y, obj_slope))
    {
        machhitAnim = 0;
        state = 20;
        hsp = -2.5;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        instance_create(x + 10, y + 10, obj_bumpeffect);
        audio_sound_gain(sfx_bump, 0.7, 0);
        
        if (!audio_is_playing(sfx_bump))
            audio_play_sound(sfx_bump, 1, false);
    }
    else if ((scr_solid(x - 1, y) && xscale == -1) && !place_meeting(x + sign(hsp), y, obj_slope))
    {
        machhitAnim = 0;
        state = 20;
        hsp = 2.5;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        instance_create(x - 10, y + 10, obj_bumpeffect);
        audio_sound_gain(sfx_bump, 0.7, 0);
        
        if (!audio_is_playing(sfx_bump))
            audio_play_sound(sfx_bump, 1, false);
    }
    
    if (!key_down)
    {
        instance_create(x, y, obj_chainsawhitbox);
        sprite_index = spr_player_chainsawair;
        state = 32;
    }
    
    if (sprite_index != spr_player_chainsawpogobounce)
    {
        if (sprite_index == spr_player_chainsawpogo1 && floor(image_index) == 3)
            sprite_index = spr_player_chainsawpogo2;
    }
    else if (floor(image_index) == 4)
    {
        sprite_index = spr_player_chainsawpogo2;
    }
    
    image_speed = 0.35;
    
    if (move != 0)
        xscale = move;
    
    image_speed = 0.35;
}