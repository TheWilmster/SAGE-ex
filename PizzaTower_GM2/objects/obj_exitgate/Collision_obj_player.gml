with (obj_player)
{
    if (grounded && (x > (other.x - 160) && x < (other.x + 160)) && key_up && (state == 0 || state == 68 || state == 69 || state == 89) && (global.panic == 1 || global.snickchallenge == 1))
    {
        targetDoor = "none";
        obj_camera.alarm[2] = -1;
        
        if (global.collect >= global.srank)
        {
            global.rank = "s";
            
            if (global.snickchallenge == 1)
                global.SAGEsnicksrank = 1;
        }
        else if (global.collect > global.arank)
        {
            global.rank = "a";
        }
        else if (global.collect > global.brank)
        {
            global.rank = "b";
        }
        else if (global.collect > global.crank)
        {
            global.rank = "c";
        }
        else
        {
            global.rank = "d";
        }
        
        if (global.rank == "s")
            scr_soundeffect(sfx_collecttoppin6);
        
        if (global.rank == "a")
            scr_soundeffect(sfx_collecttoppin7);
        
        if (global.rank == "b")
            scr_soundeffect(sfx_collecttoppin9);
        
        if (global.rank == "c")
            scr_soundeffect(sfx_collecttoppin9);
        
        if (global.rank == "d")
            scr_soundeffect(sfx_enemyprojectile0);
        
        audio_stop_sound(mu_pizzatime);
        audio_stop_sound(mu_snickchallenge);
        audio_stop_sound(mu_snickchallengeend);
        ini_open("saveData.ini");
        var roomname = room_get_name(room);
        
        if (string_letters(roomname) == "entrance")
        {
            ini_open("saveData.ini");
            
            if (global.entrancehighscore < global.collect)
                ini_write_string("Highscore", "entrance", global.collect);
            
            if (global.entrancehighscore < global.collect)
                ini_write_string("Highscore", "entrance", global.collect);
            
            if (global.entrancetoppin1 != 1)
                ini_write_string("Toppin", "entrance1", global.shroomfollow);
            
            if (global.entrancetoppin2 != 1)
                ini_write_string("Toppin", "entrance2", global.cheesefollow);
            
            if (global.entrancetoppin3 != 1)
                ini_write_string("Toppin", "entrance3", global.tomatofollow);
            
            if (global.entrancetoppin4 != 1)
                ini_write_string("Toppin", "entrance4", global.sausagefollow);
            
            if (global.entrancetoppin5 != 1)
                ini_write_string("Toppin", "entrance5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "entrance", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "entrance", "none"))
                ini_write_string("Ranks", "entrance", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none"))
                ini_write_string("Ranks", "entrance", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none") && "b" != ini_read_string("Ranks", "entrance", "none"))
                ini_write_string("Ranks", "entrance", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none") && "b" != ini_read_string("Ranks", "entrance", "none") && "c" != ini_read_string("Ranks", "entrance", "none"))
                ini_write_string("Ranks", "entrance", global.rank);
        }
        
        if (string_letters(roomname) == "medieval")
        {
            ini_open("saveData.ini");
            
            if (global.SAGEknighttaken == 0)
            {
                global.SAGEknight = 1;
                global.SAGEknight = ini_write_string("SAGE2019", "knight", 1);
            }
            
            if (global.secretfound > global.medievalsecret)
                ini_write_string("Secret", "medieval", global.secretfound);
            
            if (global.medievaltreasure == 0)
                ini_write_string("Treasure", "medieval", global.treasure);
            
            if (global.medievalhighscore < global.collect)
                ini_write_string("Highscore", "medieval", global.collect);
            
            if (global.medievalhighscore < global.collect)
                ini_write_string("Highscore", "medieval", global.collect);
            
            if (global.medievaltoppin1 != 1)
                ini_write_string("Toppin", "medieval1", global.shroomfollow);
            
            if (global.medievaltoppin2 != 1)
                ini_write_string("Toppin", "medieval2", global.cheesefollow);
            
            if (global.medievaltoppin3 != 1)
                ini_write_string("Toppin", "medieval3", global.tomatofollow);
            
            if (global.medievaltoppin4 != 1)
                ini_write_string("Toppin", "medieval4", global.sausagefollow);
            
            if (global.medievaltoppin5 != 1)
                ini_write_string("Toppin", "medieval5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "medieval", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "medieval", "none"))
                ini_write_string("Ranks", "medieval", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none"))
                ini_write_string("Ranks", "medieval", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none") && "b" != ini_read_string("Ranks", "medieval", "none"))
                ini_write_string("Ranks", "medieval", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none") && "b" != ini_read_string("Ranks", "medieval", "none") && "c" != ini_read_string("Ranks", "medieval", "none"))
                ini_write_string("Ranks", "medieval", global.rank);
        }
        
        if (string_letters(roomname) == "ruin")
        {
            ini_open("saveData.ini");
            
            if (global.secretfound > global.ruinsecret)
                ini_write_string("Secret", "ruin", global.secretfound);
            
            if (global.ruintreasure == 0)
                ini_write_string("Treasure", "ruin", global.treasure);
            
            if (global.ruinhighscore < global.collect)
                ini_write_string("Highscore", "ruin", global.collect);
            
            if (global.ruinhighscore < global.collect)
                ini_write_string("Highscore", "ruin", global.collect);
            
            if (global.ruintoppin1 != 1)
                ini_write_string("Toppin", "ruin1", global.shroomfollow);
            
            if (global.ruintoppin2 != 1)
                ini_write_string("Toppin", "ruin2", global.cheesefollow);
            
            if (global.ruintoppin3 != 1)
                ini_write_string("Toppin", "ruin3", global.tomatofollow);
            
            if (global.ruintoppin4 != 1)
                ini_write_string("Toppin", "ruin4", global.sausagefollow);
            
            if (global.ruintoppin5 != 1)
                ini_write_string("Toppin", "ruin5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "ruin", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "ruin", "none"))
                ini_write_string("Ranks", "ruin", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "ruin", "none") && "a" != ini_read_string("Ranks", "ruin", "none"))
                ini_write_string("Ranks", "ruin", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "ruin", "none") && "a" != ini_read_string("Ranks", "ruin", "none") && "b" != ini_read_string("Ranks", "ruin", "none"))
                ini_write_string("Ranks", "ruin", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "ruin", "none") && "a" != ini_read_string("Ranks", "ruin", "none") && "b" != ini_read_string("Ranks", "ruin", "none") && "c" != ini_read_string("Ranks", "ruin", "none"))
                ini_write_string("Ranks", "ruin", global.rank);
        }
        
        if (string_letters(roomname) == "dungeon")
        {
            ini_open("saveData.ini");
            
            if (obj_player.backupweapon == 1)
            {
                ini_write_string("SAGE2019", "dungeonbackup", 1);
                global.SAGEdungeonbackup = 1;
            }
            
            if (global.secretfound > global.dungeonsecret)
                ini_write_string("Secret", "dungeon", global.secretfound);
            
            if (global.dungeontreasure == 0)
                ini_write_string("Treasure", "dungeon", global.treasure);
            
            if (global.dungeonhighscore < global.collect)
                ini_write_string("Highscore", "dungeon", global.collect);
            
            if (global.dungeonhighscore < global.collect)
                ini_write_string("Highscore", "dungeon", global.collect);
            
            if (global.dungeontoppin1 != 1)
                ini_write_string("Toppin", "dungeon1", global.shroomfollow);
            
            if (global.dungeontoppin2 != 1)
                ini_write_string("Toppin", "dungeon2", global.cheesefollow);
            
            if (global.dungeontoppin3 != 1)
                ini_write_string("Toppin", "dungeon3", global.tomatofollow);
            
            if (global.dungeontoppin4 != 1)
                ini_write_string("Toppin", "dungeon4", global.sausagefollow);
            
            if (global.dungeontoppin5 != 1)
                ini_write_string("Toppin", "dungeon5", global.pineapplefollow);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "dungeon", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "dungeon", "none"))
                ini_write_string("Ranks", "dungeon", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "dungeon", "none") && "a" != ini_read_string("Ranks", "dungeon", "none"))
                ini_write_string("Ranks", "dungeon", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "dungeon", "none") && "a" != ini_read_string("Ranks", "dungeon", "none") && "b" != ini_read_string("Ranks", "dungeon", "none"))
                ini_write_string("Ranks", "dungeon", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "dungeon", "none") && "a" != ini_read_string("Ranks", "dungeon", "none") && "b" != ini_read_string("Ranks", "dungeon", "none") && "c" != ini_read_string("Ranks", "dungeon", "none"))
                ini_write_string("Ranks", "dungeon", global.rank);
        }
        
        if (string_letters(roomname) == "snickchallengeend")
        {
            ini_open("saveData.ini");
            
            if (global.SAGEshotgunsnicknumber >= 6)
            {
                global.SAGEshotgunsnick = 1;
                ini_write_string("SAGE2019", "shotgunsnick", 1);
            }
            
            if (global.snickchallengehighscore < global.collect)
                ini_write_string("Highscore", "snickchallenge", global.collect);
            
            if (global.snickchallengehighscore < global.collect)
                ini_write_string("Highscore", "snickchallenge", global.collect);
            
            if (global.rank == "s")
                ini_write_string("Ranks", "snickchallenge", global.rank);
            
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "snickchallenge", "none"))
                ini_write_string("Ranks", "snickchallenge", global.rank);
            
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "snickchallenge", "none") && "a" != ini_read_string("Ranks", "snickchallenge", "none"))
                ini_write_string("Ranks", "snickchallenge", global.rank);
            
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "snickchallenge", "none") && "a" != ini_read_string("Ranks", "snickchallenge", "none") && "b" != ini_read_string("Ranks", "snickchallenge", "none"))
                ini_write_string("Ranks", "snickchallenge", global.rank);
            
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "snickchallenge", "none") && "a" != ini_read_string("Ranks", "snickchallenge", "none") && "b" != ini_read_string("Ranks", "snickchallenge", "none") && "c" != ini_read_string("Ranks", "snickchallenge", "none"))
                ini_write_string("Ranks", "snickchallenge", global.rank);
            
            ini_close();
        }
        
        ini_close();
        
        if (!instance_exists(obj_endlevelfade))
            instance_create(x, y, obj_endlevelfade);
        
        obj_player1.state = 77;
        obj_player1.sprite_index = spr_player_lookdoor;
        obj_endlevelfade.alarm[0] = 235;
        image_index = 0;
        global.panic = 0;
        global.snickchallenge = 0;
    }
}
