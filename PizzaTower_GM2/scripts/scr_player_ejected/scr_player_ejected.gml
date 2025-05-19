function scr_player_ejected() {
    if (y > (room_height + 100) && !instance_exists(obj_fadeout))
    {
        landAnim = 0;
        instance_create(x, y, obj_fadeout);
        targetRoom = lastroom;
        player_x = lastroom_x;
        player_y = lastroom_y;
        state = 0;
    }
    
    sprite_index = spr_player_deathend;
    
    if (vsp < 12)
        vsp += grav;
    
    x += hsp;
    y += floor(vsp);
    hurted = 0;
    cutscene = 1;
    inv_frames = 0;
    alarm[8] = -1;
    alarm[7] = -1;
}