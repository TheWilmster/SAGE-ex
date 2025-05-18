global.collect += 25;

with (instance_create(x, y, obj_smallnumber))
    number = "25";

if (audio_is_playing(sfx_collecttopping))
    audio_stop_sound(sfx_collecttopping);

scr_soundeffect(5);
instance_destroy();
