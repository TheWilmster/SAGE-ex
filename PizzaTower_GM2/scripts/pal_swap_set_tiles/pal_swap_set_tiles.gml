function pal_swap_set_tiles(_pal_sprite, _pal_index, _min, _max, _is_surface) {
    var _low = _min + 1;
    var _high = _max - 1;
    
    if (_low < _high)
    {
        _low = _max - 1;
        _high = _min + 1;
    }
    
    var _start_exists = 0;
    
    with (obj_tile_swapper_start)
    {
        if (depth == _low)
        {
            _start_exists = 1;
            active = 1;
            pal_sprite = _pal_sprite;
            pal_index = _pal_index;
            pal_is_surface = _is_surface;
        }
    }
    
    if (!_start_exists)
    {
        with (instance_create(0, 0, obj_tile_swapper_start))
        {
            active = 1;
            depth = _low;
            pal_sprite = _pal_sprite;
            pal_index = _pal_index;
            pal_is_surface = _is_surface;
        }
    }
    
    var _end_exists = 0;
    
    with (obj_tile_swapper_end)
    {
        if (depth == _high)
        {
            _end_exists = 1;
            active = 1;
        }
    }
    
    if (!_end_exists)
    {
        with (instance_create(0, 0, obj_tile_swapper_end))
        {
            active = 1;
            depth = _high;
        }
    }
}