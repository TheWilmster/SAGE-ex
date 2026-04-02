if (levelselect == 1)
{
    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_text(x, y, level[b]);
    draw_text(x, y + 40, "PRESS UP AND DOWN TO\n SELECT THE LEVEL");
}

draw_self();
