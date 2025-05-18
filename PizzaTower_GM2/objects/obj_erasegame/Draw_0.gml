draw_rectangle_color(0, 0, 960, 540, c_black, c_black, c_black, c_black, 0);
font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(480, 200, "ARE YOU SURE?");

if (optionselected == 0)
    draw_text_colour(400, 300, "NO", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(400, 300, "NO", c_white, c_white, c_white, c_white, 0.5);

if (optionselected == 1)
    draw_text_colour(560, 300, "YES", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(560, 300, "YES", c_white, c_white, c_white, c_white, 0.5);
