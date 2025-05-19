function scr_player_barrelcrouch() {
    mask_index = spr_player_mask;
    hsp = 0;
    
    if (vsp < 12)
        vsp += grav;
    
    if (grounded && !key_down && image_speed == 0)
    {
        state = 83;
        movespeed = 2;
        image_index = 0;
    }
    
    sprite_index = spr_player_barrelcrouch;
    
    if (floor(image_index) == 5)
        image_speed = 0;
    else
        image_speed = 0.35;
}