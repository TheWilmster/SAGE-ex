function scr_player_bump() {
    movespeed = 0;
    mach2 = 0;
    start_running = 1;
    alarm[4] = 14;
    
    if (grounded && vsp > 0)
        hsp = 0;
    
    if (floor(image_index) == (image_number - 1))
        state = 0;
    
    if (sprite_index != spr_player_catched && sprite_index != spr_player_tumbleend && sprite_index != spr_hitwall)
        sprite_index = spr_bump;
    
    image_speed = 0.35;
}