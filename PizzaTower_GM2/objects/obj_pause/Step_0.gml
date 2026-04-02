if (!pause && !instance_exists(obj_fadeout))
{
    if (obj_player.key_start && (room != rank_room && room != Realtitlescreen && room != timesuproom))
    {
        selected = 0;
        
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout);
    }
}

if (instance_exists(obj_pausefadeout) && instance_exists(obj_fadeout))
    instance_destroy(obj_pausefadeout);

if (pause == 1)
{
    scr_getinput();
    application_surface_draw_enable(true);
    
    if (key_down2 && selected < 2)
    {
        selected += 1;
        scr_soundeffect(sfx_step);
    }
    
    if (key_up2 && selected > 0)
    {
        selected -= 1;
        scr_soundeffect(sfx_step);
    }
    
    if (key_jump && selected == 1)
    {
        var roomname = room_get_name(room);
        
        if (global.snickchallenge == 0)
        {
            if (string_letters(roomname) == "medieval" || string_letters(roomname) == "medievalsecret")
            {
                instance_activate_all();
                room = medieval_1;
                scr_playerreset();
                pause = 0;
                obj_player1.targetDoor = "A";
            }
            else if (string_letters(roomname) == "ruin" || string_letters(roomname) == "ruinsecret")
            {
                instance_activate_all();
                room = ruin_1;
                scr_playerreset();
                pause = 0;
                obj_player1.targetDoor = "A";
            }
            else if (string_letters(roomname) == "dungeon" || string_letters(roomname) == "dungeonsecret")
            {
                instance_activate_all();
                room = dungeon_1;
                scr_playerreset();
                pause = 0;
                obj_player1.targetDoor = "A";
            }
            else
            {
                scr_soundeffect(sfx_enemyprojectile);
            }
        }
        else if (global.snickchallenge == 1)
        {
            instance_activate_all();
            room = medieval_1;
            scr_playerreset();
            global.collect = 10000;
            global.seconds = 59;
            global.minutes = 9;
            global.wave = 0;
            global.maxwave = ((global.minutes * 60) + global.seconds) * 60;
            
            if (global.panicbg)
                scr_panicbg_init();
            
            obj_player1.targetDoor = "A";
            global.snickchallenge = 1;
            pause = 0;
        }
    }
    
    if (key_jump2 && selected == 2)
    {
        if (room == hub_room1 || room == cowboytask || room == Titlescreen || room == Scootertransition)
        {
            pause = 0;
            instance_activate_all();
            room = Realtitlescreen;
            
            with (obj_player1)
            {
                character = "P";
                scr_characterspr();
            }
            
            scr_playerreset();
            obj_player.state = 7;
            global.cowboyhat = 0;
            obj_player1.targetDoor = "A";
        }
        else
        {
            pause = 0;
            instance_activate_all();
            scr_playerreset();
            obj_player.targetDoor = "A";
            room = hub_room1;
        }
    }
    
    if (key_jump2 && selected == 0)
    {
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout);
    }
}
