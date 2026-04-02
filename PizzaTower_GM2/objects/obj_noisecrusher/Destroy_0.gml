instance_create(x, y, obj_bombexplosion);
scr_sleep(200);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_baddiegibs);
instance_create(x, y, obj_baddiegibs);
instance_create(x, y, obj_baddiegibs);

with (obj_camera)
{
    shake_mag = 3;
    shake_mag_acc = 3 / room_speed;
}

instance_create(x, y + 30, obj_bangeffect);

with (obj_camera)
{
    shake_mag = 5;
    shake_mag_acc = 20 / room_speed;
}

with (instance_create(x, y, obj_sausageman_dead))
    sprite_index = spr_noisecrusher_dead;

with (instance_create(x, y, obj_sausageman_dead))
    sprite_index = spr_noise_dead;

hsp = 0;
vsp = 0;
