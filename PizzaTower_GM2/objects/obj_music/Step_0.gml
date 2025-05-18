if (!audio_is_playing(mu_pizzatime) && global.panic == 1 && obj_pause.pause == 0 && obj_camera.ded == 0)
{
    audio_stop_all();
    scr_sound(69);
    pausedmusic = 69;
}

if (!audio_is_playing(mu_snickchallenge) && global.snickchallenge == 1 && obj_pause.pause == 0 && global.minutes >= 2 && obj_camera.ded == 0)
{
    audio_stop_all();
    scr_sound(88);
    pausedmusic = 88;
}
else if (!audio_is_playing(mu_snickchallengeend) && global.snickchallenge == 1 && obj_pause.pause == 0 && global.minutes < 2 && obj_camera.ded == 0)
{
    audio_stop_all();
    scr_sound(89);
    pausedmusic = 88;
}

if (room != hub_room1)
    fadeoff = audio_sound_get_track_position(global.music);
else
    fadeoff = 0;
