if (grounded || scr_solid(x + 1, y) || scr_solid(x - 1, y))
{
    instance_create(x, y + 20, obj_slimedebris);
    instance_create(x, y + 20, obj_slimedebris);
    instance_create(x, y + 20, obj_slimedebris);
    instance_create(x, y + 20, obj_slimedebris);
    instance_create(x, y + 20, obj_slimedebris);
    instance_create(x, y + 20, obj_slimedebris);
    instance_create(x, y + 20, obj_slimedebris);
    instance_create(x, y + 20, obj_slimedebris);
    
    if (!audio_is_playing(sound_suplex1))
        scr_sound(sound_suplex1);
    
    instance_destroy();
}

scr_collide();
