function scr_player_crouchslide() {
    if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
        hsp = xscale * movespeed;
    else if (place_meeting(x, y + 1, obj_railh))
        hsp = (xscale * movespeed) - 5;
    else if (place_meeting(x, y + 1, obj_railh2))
        hsp = (xscale * movespeed) + 5;
    
    if (movespeed >= 0)
        movespeed -= 0.2;
    
    mask_index = spr_crouchmask;
    
    if (mach2 >= 35 && !key_down && !scr_solid(x + 27, y - 32) && !scr_solid(x - 27, y - 32) && !scr_solid(x, y - 32) && !scr_solid(x, y - 16) && key_attack && sprite_index != spr_player_shootslide)
    {
        if (character == "P")
            sprite_index = spr_player_machhit;
        
        mach2 = 35;
        state = 69;
        
        if (movespeed < 10)
            movespeed = 10;
    }
    
    if (((hsp == 0 || ((scr_solid(x + 1, y) && xscale == 1) || (scr_solid(x - 1, y) && xscale == -1))) && !place_meeting(x + sign(hsp), y, obj_slope)) || movespeed <= 0)
    {
        state = 65;
        movespeed = 0;
        mach2 = 0;
        crouchslideAnim = 1;
        image_index = 0;
        crouchAnim = 1;
        start_running = 1;
        alarm[4] = 14;
    }
    
    if ((scr_solid(x + 1, y) && xscale == 1) && !place_meeting(x + sign(hsp), y, obj_slope))
    {
        movespeed = 0;
        state = 71;
        hsp = -2.5;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        machslideAnim = 1;
        machhitAnim = 0;
        instance_create(x + 10, y + 10, obj_bumpeffect);
    }
    
    if ((scr_solid(x - 1, y) && xscale == -1) && !place_meeting(x + sign(hsp), y, obj_slope))
    {
        movespeed = 0;
        state = 71;
        hsp = 2.5;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        machslideAnim = 1;
        machhitAnim = 0;
        instance_create(x - 10, y + 10, obj_bumpeffect);
    }
    
    if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
    {
        with (instance_create(x, y, obj_slidecloud))
            image_xscale = other.xscale;
    }
    
    image_speed = 0.35;
}