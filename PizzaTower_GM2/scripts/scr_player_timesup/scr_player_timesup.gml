function scr_player_timesup() {
    xscale = 1;
    inv_frames = 0;
    sprite_index = spr_Timesup;
    alarm[7] = -1;
    alarm[8] = -1;
    alarm[5] = -1;
    
    if (place_meeting(x, y, obj_timesup))
    {
        state = 54;
        sprite_index = spr_deathend;
        alarm[10] = 5;
        vsp = -8;
        hsp = -4;
    }
    
    if (room == timesuproom)
    {
        obj_player.x = 480;
        obj_player.y = 270;
    }
    
    if (floor(image_index) == 9)
        image_speed = 0;
}