draw_self();
font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(c_white);

if (place_meeting(x, y, obj_player))
{
    if (level == "entrance")
        draw_text(x, y, global.entrancehighscore);
    
    if (level == "medieval")
    {
        draw_text(x, y - 150, global.medievalhighscore);
        draw_text(x, y - 200, string(global.medievalsecret) + " OF 6 SECRET");
    }
    
    if (level == "ruin")
    {
        draw_text(x, y - 150, global.ruinhighscore);
        draw_text(x, y - 200, string(global.ruinsecret) + " OF 6 SECRET");
    }
    
    if (level == "dungeon")
    {
        draw_text(x, y - 150, global.dungeonhighscore);
        draw_text(x, y - 200, string(global.dungeonsecret) + " OF 6 SECRET");
    }
    
    if (level == "snickchallenge")
        draw_text(x, y - 150, global.snickchallengehighscore);
    
    if (level == "entrance")
    {
        if (global.entrancetoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.entrancetoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.entrancetoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.entrancetoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.entrancetoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "medieval")
    {
        if (global.medievaltoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.medievaltoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.medievaltoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.medievaltoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.medievaltoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "ruin")
    {
        if (global.ruintoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.ruintoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.ruintoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.ruintoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.ruintoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
    
    if (level == "dungeon")
    {
        if (global.dungeontoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100);
        else
            draw_sprite(spr_pizzakinshroom_pause, -1, x - 75, y - 100);
        
        if (global.dungeontoppin2 == 1)
            draw_sprite(spr_pizzakincheese, -1, x - 35, y - 100);
        else
            draw_sprite(spr_pizzakincheese_pause, -1, x - 35, y - 100);
        
        if (global.dungeontoppin3 == 1)
            draw_sprite(spr_pizzakintomato, -1, x, y - 100);
        else
            draw_sprite(spr_pizzakintomato_pause, -1, x, y - 100);
        
        if (global.dungeontoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, -1, x + 35, y - 100);
        else
            draw_sprite(spr_pizzakinsausage_pause, -1, x + 35, y - 100);
        
        if (global.dungeontoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, -1, x + 75, y - 100);
        else
            draw_sprite(spr_pizzakinpineapple_pause, -1, x + 75, y - 100);
    }
}
