if (fadealpha > 1 && fadein == 0)
{
    if (obj_pause.pause == 1)
    {
        obj_pause.pause = 0;
        instance_activate_all();
        audio_resume_sound(obj_music.pausedmusic);
    }
    else if (obj_pause.pause == 0)
    {
        audio_pause_all();
        obj_pause.pause = 1;
        instance_deactivate_all(true);
        instance_activate_object(obj_pause);
    }
    
    fadein = 1;
}

if (fadein == 0)
    fadealpha += 0.1;
else if (fadein == 1)
    fadealpha -= 0.1;

if (fadein == 1 && fadealpha < 0)
    instance_destroy();
