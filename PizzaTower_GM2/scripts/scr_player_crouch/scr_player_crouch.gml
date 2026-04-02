function scr_player_crouch() {
    move = key_left + key_right;
    
    if (character == "P")
    {
        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
            hsp = move * movespeed;
        else if (place_meeting(x, y + 1, obj_railh))
            hsp = (move * movespeed) - 5;
        else if (place_meeting(x, y + 1, obj_railh2))
            hsp = (move * movespeed) + 5;
    }
    
    movespeed = 4;
    mask_index = spr_crouchmask;
    turning = false;
    
    if (!grounded && !key_jump)
    {
        jumpAnim = false;
        state = 66;
        movespeed = 4;
        crouchAnim = true;
        image_index = 0;
    }
    
    if (key_slap2 && character == "N" && !instance_exists(obj_bomb))
        instance_create(x, y, obj_bomb);
    
    if (grounded && !key_down && !scr_solid(x, y - 16) && !scr_solid(x, y - 32) && !key_jump)
    {
        state = 0;
        movespeed = 0;
        crouchAnim = true;
        jumpAnim = true;
        image_index = 0;
        mask_index = spr_player_mask;
    }
    
    if (crouchAnim == false)
    {
        if (move == 0)
        {
            if (shotgunAnim == false)
                sprite_index = spr_crouch;
            else
                sprite_index = spr_shotgun_duck;
        }
        
        if (move != 0)
        {
            if (shotgunAnim == false)
                sprite_index = spr_crawl;
            else
                sprite_index = spr_shotgun_crawl;
        }
    }
    
    if (crouchAnim == true)
    {
        if (move == false)
        {
            if (shotgunAnim == false)
                sprite_index = spr_couchstart;
            else
                sprite_index = spr_shotgun_goduck;
            
            if (floor(image_index) == (image_number - 1))
                crouchAnim = false;
        }
    }
    
    if (move != 0)
    {
        xscale = move;
        crouchAnim = false;
    }
    
    if (key_jump && grounded && !scr_solid(x, y - 16) && !scr_solid(x, y - 32) && character == "P")
    {
        scr_soundeffect(sfx_jump);
        vsp = -8;
        state = 66;
        movespeed = 4;
        image_index = 0;
        crouchAnim = true;
        jumpAnim = true;
    }
    
    if (scr_slope())
    {
        movespeed = 14;
        
        with (instance_place(x + xscale, y + 1, obj_slope))
            other.xscale = -sign(image_xscale);
        
        state = 1;
        sprite_index = spr_player_tumblestart;
    }
    
    image_speed = 0.45;
}