if (room == Titlescreen && obj_player.state == 7)
{
    obj_player.sprite_index = spr_player_machfreefall;
    obj_player.state = 50;
    obj_player.movespeed = 20;
    obj_player.vsp = 5;
    obj_player.xscale = 1;
    obj_player.player_x = 50;
    obj_player.player_y = 50;
}
