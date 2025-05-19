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
    
    landAnim = 1;
    
    if (ladderbuffer > 0)
        ladderbuffer--;
    
    if (scr_solid(x, y - 1) && jumpstop == 0 && jumpAnim == 1)
    {
        vsp = grav;
        jumpstop = 1;
    }
    
    if (sprite_index == spr_player_shotgunjump2 && floor(image_index) == (image_number - 1))
        state = 57;
    
    if (grounded && input_buffer_jump < 5 && !key_down && vsp > 0)
    {
        stompAnim = 0;
        vsp = -9;
        state = 57;
        jumpAnim = 1;
        jumpstop = 0;
        image_index = 0;
        instance_create(x, y, obj_landcloud);
        freefallstart = 0;
    }
    
    if (key_jump)
        input_buffer_jump = 0;
    
    if (sprite_index == spr_player_shotgunjump1 && floor(image_index) == 3)
        sprite_index = spr_player_shotgunjump2;
    
    if (move != 0)
        xscale = move;
    
    image_speed = 0.35;
}