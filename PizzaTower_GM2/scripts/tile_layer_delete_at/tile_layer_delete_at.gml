function tile_layer_delete_at(__depth, _x, _y) {
    var __tile_el = tile_layer_find(__depth, __x, __y);
    
    if (__tile_el != -1)
        layer_tile_destroy(__tile_el);
}