function pal_swap_draw_palette(palette, column, x, y) {
    draw_sprite_part(palette, 0, column, 0, 1, sprite_get_height(palette), x, y);
}