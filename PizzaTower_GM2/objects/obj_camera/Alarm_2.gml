if (global.seconds == 0 && global.minutes == 0)
    alarm[2] = 3;

if (global.collect > 0)
    instance_create(obj_player.x, obj_player.y, obj_pizzaloss);

if (global.collect > 0)
    global.collect -= 5;

if (global.snickchallenge == 1 && global.collect == 0)
{
    with (obj_player)
    {
        state = 54;
        sprite_index = spr_deathstart;
        image_index = 0;
        audio_stop_all();
        scr_soundeffect(81);
    }
    
    alarm[2] = -1;
}
