if (drop == 1)
    scr_collide();

if (x > 960 && !instance_exists(obj_fadeout))
{
    with (instance_create(x, y, obj_fadeout))
        obj_player.targetRoom = Titlescreen;
}

if (sprite_index == spr_pepcooter && !instance_exists(obj_superdashcloud))
    instance_create(x - 100, y, obj_superdashcloud);
