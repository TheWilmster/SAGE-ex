if (audio_is_playing(sfx_collecttopping))
    audio_stop_sound(sfx_collecttopping);

scr_soundeffect(5);
global.collect += 10;

with (instance_create(x + 16, y, obj_smallnumber))
    number = "10";

instance_destroy();
