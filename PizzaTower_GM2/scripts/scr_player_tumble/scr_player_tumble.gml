function scr_player_tumble() {
    hsp = xscale * movespeed;
    
    if (sprite_index == spr_tumblestart)
        movespeed = 6;
    else
        movespeed = 14;
    
    if (!scr_slope() && sprite_index == spr_tumblestart && floor(image_index) < 11)
        image_index = 11;
    
    if (sprite_index == spr_tumblestart && floor(image_index) == (image_number - 1))
        sprite_index = spr_tumble;
    
    if (place_meeting(x + xscale, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles))
    {
        scr_soundeffect(38);
        hsp = 0;
        movespeed = 0;
        sprite_index = spr_tumbleend;
        state = 71;
        image_index = 0;
    }
    
    if (key_jump)
        input_buffer_jump = 0;
    
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
    {
        vsp /= 2;
        jumpstop = 1;
    }
    
    if (grounded && vsp > 0)
        jumpstop = 0;
    
    if (input_buffer_jump < 8 && grounded && hsp != 0)
        vsp = -9;
    
    image_speed = 0.35;
}