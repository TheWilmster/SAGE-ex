draw_rectangle_color(0, 0, 960, 540, c_black, c_black, c_black, c_black, 0);
font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(c_white);

if (optionselected == 0)
    draw_text_colour(480, 100, "FULLSCREEN", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(480, 100, "FULLSCREEN", c_white, c_white, c_white, c_white, 0.5);

if (optionsaved_fullscreen == 0)
    draw_text_colour(380, 150, "ON", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(380, 150, "ON", c_white, c_white, c_white, c_white, 0.5);

if (optionsaved_fullscreen == 1)
    draw_text_colour(580, 150, "OFF", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(580, 150, "OFF", c_white, c_white, c_white, c_white, 0.5);

if (optionselected == 1)
    draw_text_colour(480, 250, "RESOLUTION", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(480, 250, "RESOLUTION", c_white, c_white, c_white, c_white, 0.5);

if (optionsaved_resolution == 0)
    draw_text_colour(300, 300, "480X270", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(300, 300, "480X270", c_white, c_white, c_white, c_white, 0.5);

if (optionsaved_resolution == 1)
    draw_text_colour(480, 300, "960X540", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(480, 300, "960X540", c_white, c_white, c_white, c_white, 0.5);

if (optionsaved_resolution == 2)
    draw_text_colour(680, 300, "1980X1080", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(680, 300, "1980X1080", c_white, c_white, c_white, c_white, 0.5);

if (optionselected == 2)
    draw_text_colour(480, 400, "KEY CONFIG", c_white, c_white, c_white, c_white, 1);
else
    draw_text_colour(480, 400, "KEY CONFIG", c_white, c_white, c_white, c_white, 0.5);
