view_visible[1] = true;
view_wport[1] = window_get_width();
view_yport[1] = 540;
view_hport[1] = 540;
view_hport[0] = 540;
view_yport[0] = 0;
camera_set_view_size(view_camera[0], 960, 270);
camera_set_view_size(view_camera[1], 960, 270);

if (room == rank_room || room == timesuproom || room == Realtitlescreen)
    visible = false;
else
    visible = true;

if (room == timesuproom)
    timestop = 1;

if (global.seconds == 0 && global.minutes == 0 && room != timesuproom && !instance_exists(obj_endlevelfade))
{
    obj_player2.state = 35;
    room = timesuproom;
    obj_player2.image_index = 0;
}

if (global.seconds < 0)
{
    global.seconds = 59;
    global.minutes -= 1;
}

if (global.seconds > 59)
{
    global.minutes += 1;
    global.seconds -= 59;
}

if ((global.panic == 1 && global.minutes < 1) || obj_player2.sprite_index == spr_player_timesup)
{
    shake_mag = 2;
    shake_mag_acc = 3 / room_speed;
}
else if (global.panic == 1 && basement == 0)
{
    shake_mag = 2;
    shake_mag_acc = 3 / room_speed;
}

if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc;
    
    if (shake_mag < 0)
        shake_mag = 0;
}

if (instance_exists(obj_player2) && obj_player2.state != 35 && obj_player2.state != 54)
{
    var target = obj_player2;
    
    if (obj_player2.state == 89 || obj_player2.state == 36)
    {
        if (chargecamera > (obj_player2.xscale * 100))
            chargecamera -= 2;
        
        if (chargecamera < (obj_player2.xscale * 100))
            chargecamera += 2;
        
        __view_set(0, 1, (target.x - (__view_get(2, 1) / 2)) + chargecamera);
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2;
        
        if (chargecamera < 0)
            chargecamera += 2;
        
        __view_set(0, 1, (target.x - (__view_get(2, 1) / 2)) + chargecamera);
    }
    
    __view_set(0, 1, clamp(__view_get(0, 1), 0, room_width - __view_get(2, 1)));
    __view_set(1, 1, target.y - (__view_get(3, 1) / 2));
    __view_set(1, 1, clamp(__view_get(1, 1), 0, room_height - __view_get(3, 1)));
    
    if (shake_mag != 0)
    {
        __view_set(0, 1, (target.x - (__view_get(2, 1) / 2)) + chargecamera);
        __view_set(0, 1, clamp(__view_get(0, 1), 0, room_width - __view_get(2, 0)));
        __view_set(1, 1, (target.y - (__view_get(3, 1) / 2)) + irandom_range(-shake_mag, shake_mag));
        __view_set(1, 1, clamp(__view_get(1, 1), 0 + irandom_range(-shake_mag, shake_mag), (room_height - __view_get(3, 1)) + irandom_range(-shake_mag, shake_mag)));
    }
}
