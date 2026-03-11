if (!audio_is_playing(mu_pizzatime) && global.panic == true && obj_pause.pause == false && obj_camera.ded == false)
{
    audio_stop_all();
    scr_sound(mu_pizzatime);
    pausedmusic = mu_pizzatime;
}

if (!audio_is_playing(mu_snickchallenge) && global.snickchallenge == true && obj_pause.pause == false && global.minutes >= 2 && obj_camera.ded == false)
{
    audio_stop_all();
    scr_sound(mu_snickchallenge);
    pausedmusic = mu_snickchallenge;
}
else if (!audio_is_playing(mu_snickchallengeend) && global.snickchallenge == true && obj_pause.pause == false && global.minutes < 2 && obj_camera.ded == false)
{
    audio_stop_all();
    scr_sound(mu_snickchallengeend);
    pausedmusic = mu_snickchallenge;
}

if (room != hub_room1)
    fadeoff = audio_sound_get_track_position(global.music);
else
    fadeoff = 0;
