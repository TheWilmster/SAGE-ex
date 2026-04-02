with (instance_create(x, y, obj_sausageman_dead))
    sprite_index = spr_noise_dead;

instance_create(x, y, obj_bangeffect);
instance_create(x, y, obj_bangeffect);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_baddiegibs);
instance_create(x, y, obj_baddiegibs);
instance_create(x, y, obj_baddiegibs);
scr_sound(sound_combo1);
scr_sleep(50);

with (obj_camera)
{
    shake_mag = 5;
    shake_mag_acc = 20 / room_speed;
}

instance_create(x, y, obj_bangeffect);
instance_destroy();
