if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_bigdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_bigdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_bigdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_bigdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_bigdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_bigdebris;
    
    with (instance_create(x + 32, y + 32, obj_debris))
        sprite_index = spr_bigdebris;
    
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1);
        audio_stop_sound(sfx_breakblock2);
    }
    
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
    ds_list_add(global.saveroom, id);
    var lay_id = layer_get_id("Tiles_1");
    var map_id = layer_tilemap_get_id(lay_id);
    var data = tilemap_get_at_pixel(map_id, x, y);
    var data2 = tilemap_get_at_pixel(map_id, x + 33, y);
    var data3 = tilemap_get_at_pixel(map_id, x, y + 33);
    var data4 = tilemap_get_at_pixel(map_id, x + 33, y + 33);
    data = tile_set_empty(data);
    data2 = tile_set_empty(data2);
    data3 = tile_set_empty(data3);
    data4 = tile_set_empty(data4);
    tilemap_set_at_pixel(map_id, data, x, y);
    tilemap_set_at_pixel(map_id, data2, x + 33, y);
    tilemap_set_at_pixel(map_id, data3, x, y + 33);
    tilemap_set_at_pixel(map_id, data4, x + 33, y + 33);
}
