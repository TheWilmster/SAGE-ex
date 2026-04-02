countdown -= 0.5;

if (place_meeting(x + 1, y, obj_bombblock) || place_meeting(x - 1, y, obj_bombblock) || place_meeting(x, y - 1, obj_bombblock) || place_meeting(x, y + 1, obj_bombblock))
    instance_create(x, y, obj_bombexplosion);

if (scr_solid(x + 1, y) || scr_solid(x - 1, y))
    drop = 1;

if (place_meeting(x, y + 1, obj_solid))
    hsp = 0;

if (vsp < 12)
    vsp += grav;

if (countdown < 50)
    sprite_index = spr_bomblit;

if (countdown == 0)
    instance_destroy();

if (scr_solid(x + floor(hsp), y))
{
    x = floor(x);
    
    while (!scr_solid(x + sign(hsp), y))
        x += sign(hsp);
    
    hsp = 0;
}

x += hsp;

if (scr_solid(x, y + floor(vsp)))
{
    y = floor(y);
    
    while (!scr_solid(x, y + sign(vsp)))
        y += sign(vsp);
    
    vsp = 0;
}

y += floor(vsp);
