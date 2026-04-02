function pal_swap_init_system(_shader, _use_ds_map = false) {
    global.Pal_Shader = _shader;
    global.Pal_Texel_Size = shader_get_uniform(_shader, "texel_size");
    global.Pal_UVs = shader_get_uniform(_shader, "palette_UVs");
    global.Pal_Index = shader_get_uniform(_shader, "palette_index");
    global.Pal_Texture = shader_get_sampler_index(_shader, "palette_texture");
    
    if (_use_ds_map)
        global.Pal_Map = ds_map_create();
}