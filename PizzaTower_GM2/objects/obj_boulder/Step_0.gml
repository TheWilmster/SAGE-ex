if ((obj_player.x > (x - 100) && obj_player.x < (x + 100)) && global.panic == 1)
{
    if (activated == 0)
    {
        grav = 0.5;
        activated = 1;
        image_speed = 0.35;
    }
}

if (place_meeting(x, y, obj_player) && activated == 1 && hitwall == 0 && obj_player.state != 30)
{
    with (obj_player)
    {
        state = 30;
        sprite_index = spr_player_squished;
        image_index = 0;
    }
}

if (activated == 1 && vsp > 0 && place_meeting(x, y + 1, obj_solid))
    hsp = image_xscale * 8;

if (place_meeting(x + hsp, y, obj_solid) && activated == 1 && !place_meeting(x + hsp, y, obj_slope) && hitwall == 0 && place_meeting(x, y + 1, obj_solid))
{
    hitwall = 1;
    hsp = 0;
    vsp = -5;
}

if (hitwall == 0)
    scr_collide();

if (hitwall == 1)
{
    if (vsp < 12)
        vsp += grav;
    
    x += hsp;
    y += floor(vsp);
}
