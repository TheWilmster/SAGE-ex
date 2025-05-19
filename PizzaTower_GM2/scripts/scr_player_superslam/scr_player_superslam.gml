function scr_player_superslam() {
    if (sprite_index == spr_piledriver)
    {
        move = key_left + key_right;
        hsp = move * movespeed;
    }
    else
    {
        move = 0;
        hsp = 0;
    }
    
    if (grounded && !place_meeting(x, y + 1, obj_destructibles) && sprite_index == spr_player_piledriver && vsp > 0)
    {
        scr_soundeffect(sfx_groundpound);
        sprite_index = spr_player_piledriverland;
        jumpAnim = 1;
        image_index = 0;
        
        with (obj_camera)
        {
            shake_mag = 20;
            shake_mag_acc = 40 / room_speed;
        }
        
        hsp = 0;
        bounce = 0;
        
        with (instance_create(x, y + 35, obj_bangeffect))
            xscale = obj_player.xscale;
        
        instance_create(x, y, obj_landcloud);
        freefallstart = 0;
        
        with (obj_baddie)
        {
            if (grounded && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), __view_get(0, 0) + __view_get(2, 0), __view_get(1, 0) + __view_get(3, 0)))
            {
                image_index = 0;
                vsp = -7;
                hsp = 0;
            }
        }
    }
    
    jumpAnim = 1;
    dashAnim = 1;
    landAnim = 0;
    machslideAnim = 1;
    moveAnim = 1;
    stopAnim = 1;
    crouchslideAnim = 1;
    crouchAnim = 1;
    
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
    
    if (character == "N" && move != 0)
        xscale = move;
    
    image_speed = 0.35;
}