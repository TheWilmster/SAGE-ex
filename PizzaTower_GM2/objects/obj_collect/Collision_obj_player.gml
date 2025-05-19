if (audio_is_playing(sfx_collecttopping))
    audio_stop_sound(sfx_collecttopping);

scr_soundeffect(sfx_collecttopping);
global.collect += 10;

with (instance_create(x + 16, y, obj_smallnumber))
    number = "10";

instance_destroy();
