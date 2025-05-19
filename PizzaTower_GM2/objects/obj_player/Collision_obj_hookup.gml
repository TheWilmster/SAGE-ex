if ((state == 57 || state == 62 || state == 69 || obj_player.state == 89) && other.drop == 0)
{
    mach2 = 0;
    state = 74;
    image_xscale = 1;
    other.hooked = 1;
    other.vspeed = -5;
    
    if (other.hspeed == 10)
        sprite_index = spr_player_hangslide;
    
    if (other.hspeed == 0)
        sprite_index = spr_player_hang;
}
