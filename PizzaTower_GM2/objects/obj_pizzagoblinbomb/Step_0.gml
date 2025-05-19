countdown -= 0.5;

if (place_meeting(x + 1, y, obj_bombblock) || place_meeting(x - 1, y, obj_bombblock) || place_meeting(x, y - 1, obj_bombblock) || place_meeting(x, y + 1, obj_bombblock))
    instance_create(x, y, obj_bombexplosion);

if (scr_solid(x + 1, y) || scr_solid(x - 1, y))
    drop = 1;

if (scr_solid(x, y + 1))
    hsp = 0;

if (vsp < 12)
    vsp += grav;

if (countdown < 50)
    sprite_index = spr_bomblit;

if (countdown == 0)
    instance_create(x, y, obj_bombexplosion);

scr_collide();
