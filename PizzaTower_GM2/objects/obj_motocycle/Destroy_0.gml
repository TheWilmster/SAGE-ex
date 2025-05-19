if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create(x, y, obj_bombexplosion);
    
    repeat (6)
    {
        with (instance_create(x, y, obj_debris))
            sprite_index = spr_motcycledebris;
    }
    
    ds_list_add(global.saveroom, id);
}
