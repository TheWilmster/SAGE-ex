if (global.panic == 1)
{
    switch (state)
    {
        case 92:
            scr_fakepeppino_idle();
            break;
        
        case 100:
            scr_fakepeppino_walk();
            break;
        
        case 103:
            scr_fakepeppino_hit();
            break;
        
        case 57:
            scr_fakepeppino_jump();
            break;
    }
}

if (place_meeting(x + hsp, y, obj_destructibles))
{
    with (instance_place(x + hsp, y, obj_destructibles))
        instance_destroy();
}

if (global.panic == 1)
    appeartimer--;

if (appeartimer == 0)
{
    x = start_x;
    y = start_y;
}

if ((obj_player.x > (x - 200) && obj_player.x < (x + 200)) && sprite_index == spr_fakepeppino_walk && y == obj_player.y)
{
    state = 103;
    sprite_index = spr_fakepeppino_grabdash;
    image_index = 0;
    movespeed = 8;
}
