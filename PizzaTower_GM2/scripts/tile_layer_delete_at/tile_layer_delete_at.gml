function tile_layer_delete_at() {
    var __depth = argument[0];
    var __x = argument[1];
    var __y = argument[2];
    var __tile_el = tile_layer_find(__depth, __x, __y);
    
    if (__tile_el != -1)
        layer_tile_destroy(__tile_el);
}