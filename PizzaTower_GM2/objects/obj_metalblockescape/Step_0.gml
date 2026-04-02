if (place_meeting(x, y + 1, obj_player) || place_meeting(x, y - 1, obj_player) || place_meeting(x - 1, y, obj_player) || place_meeting(x + 1, y, obj_player))
{
    if ((place_meeting(x + 1, y, obj_player) || place_meeting(x - 1, y, obj_player)) && (obj_player.state == 89 || obj_player.state == 17))
        instance_destroy();
    
    if (place_meeting(x, y - 1, obj_player) && (obj_player.state == 73 && obj_player.freefallsmash >= 10))
        instance_destroy();
    
    if (place_meeting(x, y - 1, obj_player) && (obj_player.state == 23 || obj_player.state == 8))
    {
        instance_destroy();
        tile_layer_delete_at(1, x, y);
    }
}
