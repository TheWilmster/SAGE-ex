if (cantcollect == 0)
{
    global.seconds += 60;
    
    with (instance_create(x, y, obj_plusseconds))
        sprite_index = spr_plus60;
    
    if (global.collectsound > 4)
    {
        scr_sound(sfx_collect);
        global.collectsound = 0;
    }
    
    instance_destroy();
}
