function pal_swap_get_pal_color(_pal, _column, _row) {
    var _palettes = ds_map_find_value(global.Pal_Map, _pal);
    var _current_pal = ds_list_find_value(_palettes, _column);
    return ds_list_find_value(_current_pal, _row);
}