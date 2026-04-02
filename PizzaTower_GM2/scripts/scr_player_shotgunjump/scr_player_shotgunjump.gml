function scr_player_shotgunjump() {
    move = key_left + key_right;
    hsp = move * movespeed;
    
    if ((scr_solid(x + 1, y) && xscale == 1) || (scr_solid(x - 1, y) && xscale == -1))
        movespeed = 0;
    
    if (move == 0)
        movespeed = 0;
    
    if (move != 0 && movespeed < 6)
        movespeed += 0.5;
    
    if (dir != xscale)
    {
        dir = xscale;
        movespeed = 0;
    }
    
    landAnim = true;
    
    if (ladderbuffer > 0)
        ladderbuffer--;
    
    if (scr_solid(x, y - 1) && jumpstop == false && jumpAnim == true)
    {
        vsp = grav;
        jumpstop = true;
    }
    
    if (sprite_index == spr_player_shotgunjump2 && floor(image_index) == (image_number - 1))
        state = 57;
    
    if (grounded && input_buffer_jump < 5 && !key_down && vsp > 0)
    {
        stompAnim = false;
        vsp = -9;
        state = 57;
        jumpAnim = true;
        jumpstop = false;
        image_index = 0;
        instance_create(x, y, obj_landcloud);
        freefallstart = false;
    }
    
    if (key_jump)
        input_buffer_jump = 0;
    
    if (sprite_index == spr_player_shotgunjump1 && floor(image_index) == 3)
        sprite_index = spr_player_shotgunjump2;
    
    if (move != 0)
        xscale = move;
    
    image_speed = 0.35;
}