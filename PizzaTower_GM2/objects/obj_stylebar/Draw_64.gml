draw_text(100, 200, string(global.style));

if (global.stylethreshold == 4)
{
    draw_sprite_ext(spr_stylepizza, 4, 832, 74, image_xscale, image_yscale, 0, c_white, alpha);
    draw_sprite_part_ext(spr_stylepizzadown, 4, 0, 0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown) - global.style, 750, -14, image_xscale, image_yscale, c_white, alpha);
}

if (global.stylethreshold == 3)
{
    draw_sprite_ext(spr_stylepizza, 3, 832, 74, image_xscale, image_yscale, 0, c_white, alpha);
    draw_sprite_part_ext(spr_stylepizzadown, 3, 0, 0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown) - global.style, 750, -14, image_xscale, image_yscale, c_white, alpha);
}

if (global.stylethreshold == 2)
{
    draw_sprite_ext(spr_stylepizza, 2, 832, 74, image_xscale, image_yscale, 0, c_white, alpha);
    draw_sprite_part_ext(spr_stylepizzadown, 2, 0, 0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown) - global.style, 750, -14, image_xscale, image_yscale, c_white, alpha);
}

if (global.stylethreshold == 1)
{
    draw_sprite_ext(spr_stylepizza, 1, 832, 74, image_xscale, image_yscale, 0, c_white, alpha);
    draw_sprite_part_ext(spr_stylepizzadown, 1, 0, 0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown) - global.style, 750, -14, image_xscale, image_yscale, c_white, alpha);
}

if (global.stylethreshold == 0)
{
    draw_sprite_ext(spr_stylepizza, 0, 832, 74, image_xscale, image_yscale, 0, c_white, alpha);
    draw_sprite_part_ext(spr_stylepizzadown, 0, 0, 0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown) - global.style, 750, -14, image_xscale, image_yscale, c_white, alpha);
}
