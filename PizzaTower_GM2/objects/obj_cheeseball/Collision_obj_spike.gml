if (obj_player.state == 10)
{
    with (obj_player)
    {
        scr_sound(sound_losetransformation);
        obj_player.grav = 0.5;
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_destroy(other.id);
        
        if (x != other.x)
            obj_player.hsp = sign(x - other.x) * 5;
        else
            obj_player.hsp = 5;
        
        vsp = -3;
        obj_player.visible = true;
        image_index = 0;
        obj_player.image_index = 0;
        obj_player.flash = 1;
        state = 71;
    }
}
else
{
    instance_create(x, y, obj_slimedebris);
    instance_create(x, y, obj_slimedebris);
    instance_create(x, y, obj_slimedebris);
    instance_create(x, y, obj_slimedebris);
    instance_create(x, y, obj_slimedebris);
    instance_create(x, y, obj_slimedebris);
    instance_create(x, y, obj_slimedebris);
    instance_create(x, y, obj_slimedebris);
    instance_destroy();
}
