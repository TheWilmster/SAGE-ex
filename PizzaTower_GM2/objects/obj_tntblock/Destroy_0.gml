if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create(x + 32, y + 32, obj_bombexplosion);
    
    repeat (6)
        instance_create(x + 32, y + 32, obj_tntblockdebris);
    
    ds_list_add(global.saveroom, id);
}
