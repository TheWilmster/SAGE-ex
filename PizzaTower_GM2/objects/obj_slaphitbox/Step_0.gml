image_xscale = obj_player.xscale;
x = obj_player.x;
y = obj_player.y;

if ((obj_player.image_index > 3 || obj_player.state != 11) && obj_player.state != 21 && obj_player.state != 8)
    instance_destroy();
