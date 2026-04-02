if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_rockdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_rockdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_rockdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_rockdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_rockdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_rockdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_rockdebris;
    
    ds_list_add(global.saveroom, id);
}

if (place_meeting(x + 1, y, obj_rockblock))
{
    with (instance_place(x + 1, y, obj_rockblock))
        alarm[1] = 8;
}

if (place_meeting(x - 1, y, obj_rockblock))
{
    with (instance_place(x - 1, y, obj_rockblock))
        alarm[1] = 8;
}

if (place_meeting(x, y + 1, obj_rockblock))
{
    with (instance_place(x, y + 1, obj_rockblock))
        alarm[1] = 8;
}

if (place_meeting(x, y - 1, obj_rockblock))
{
    with (instance_place(x, y - 1, obj_rockblock))
        alarm[1] = 8;
}
