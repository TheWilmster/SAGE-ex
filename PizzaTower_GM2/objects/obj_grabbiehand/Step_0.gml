if (floor(image_index) == (image_number - 1) && sprite_index == spr_grabbiehand_hifive)
{
    sprite_index = spr_grabbiehand_idle;
    thumbingup = 0;
    image_xscale = 1;
}

if ((x <= (xstarte + 6) && x >= (xstarte - 6)) && (y <= (ystarte + 6) && y >= (ystarte - 6)) && (obj_player.x > (x - 50) && obj_player.x < (x + 50)) && (obj_player.y > y && obj_player.y < (y + 400)) && thumbingup == 0)
{
    delay--;
    
    if (delay <= 0)
    {
        scr_sound(sound_enemythrow);
        grav = 0.35;
        vsp = 10;
        sprite_index = spr_grabbiehand_fall;
        delay = 5;
    }
}

if (grounded && sprite_index == spr_grabbiehand_fall && grabbing == 0)
{
    grav = 0;
    sprite_index = spr_grabbiehand_idle;
    vsp = -3;
}

if ((y <= (ystarte + 6) && y >= (ystarte - 6)) && vsp == -3 && grabbing == 0)
    vsp = 0;

if (sprite_index == spr_grabbiehand_catch && released == 0 && grabbing == 1)
{
    if (dropspotx > x)
        x += 4;
    
    if (dropspotx < x)
        x -= 4;
    
    if (dropspoty > y)
        y += 4;
    
    if (dropspoty < y)
        y -= 4;
}

if ((x <= (dropspotx + 5) && x >= (dropspotx - 5)) && (y <= (dropspoty + 5) && y >= (dropspoty - 5)) && released == 0 && grabbing == 1)
{
    obj_player.state = 73;
    image_index = 0;
    sprite_index = spr_grabbiehand_release;
    released = 1;
}

if (sprite_index == spr_grabbiehand_release && floor(image_index) == (image_number - 1) && released == 1 && grabbing == 1)
    sprite_index = spr_grabbiehand_idle;

if (sprite_index == spr_grabbiehand_idle && released == 1 && grabbing == 1)
{
    if (xstarte > x)
        x += 4;
    
    if (xstarte < x)
        x -= 4;
    
    if (ystarte > y)
        y += 4;
    
    if (ystarte < y)
        y -= 4;
}

if ((x <= (xstarte + 6) && x >= (xstarte - 6)) && (y <= (ystarte + 6) && y >= (ystarte - 6)) && grabbing == 1 && sprite_index == spr_grabbiehand_idle)
{
    grabbing = 0;
    released = 0;
}

scr_collide();
