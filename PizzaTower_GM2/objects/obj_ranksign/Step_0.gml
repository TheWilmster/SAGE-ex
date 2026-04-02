ini_open("saveData.ini");
global.entrancerank = ini_read_string("Ranks", "entrance", "none");
global.medievalrank = ini_read_string("Ranks", "medieval", "none");
global.ruinrank = ini_read_string("Ranks", "ruin", "none");
global.dungeonrank = ini_read_string("Ranks", "dungeon", "none");
global.snickchallengerank = ini_read_string("Ranks", "snickchallenge", "none");
ini_close();

if (levelsign == "entrance")
{
    if (global.entrancerank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.entrancerank == "s")
        image_index = 0;
    
    if (global.entrancerank == "a")
        image_index = 1;
    
    if (global.entrancerank == "b")
        image_index = 2;
    
    if (global.entrancerank == "c")
        image_index = 3;
    
    if (global.entrancerank == "d")
        image_index = 4;
}

if (levelsign == "medieval")
{
    if (global.medievalrank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.medievalrank == "s")
        image_index = 0;
    
    if (global.medievalrank == "a")
        image_index = 1;
    
    if (global.medievalrank == "b")
        image_index = 2;
    
    if (global.medievalrank == "c")
        image_index = 3;
    
    if (global.medievalrank == "d")
        image_index = 4;
}

if (levelsign == "ruin")
{
    if (global.ruinrank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.ruinrank == "s")
        image_index = 0;
    
    if (global.ruinrank == "a")
        image_index = 1;
    
    if (global.ruinrank == "b")
        image_index = 2;
    
    if (global.ruinrank == "c")
        image_index = 3;
    
    if (global.ruinrank == "d")
        image_index = 4;
}

if (levelsign == "dungeon")
{
    if (global.dungeonrank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.dungeonrank == "s")
        image_index = 0;
    
    if (global.dungeonrank == "a")
        image_index = 1;
    
    if (global.dungeonrank == "b")
        image_index = 2;
    
    if (global.dungeonrank == "c")
        image_index = 3;
    
    if (global.dungeonrank == "d")
        image_index = 4;
}

if (levelsign == "snickchallenge")
{
    if (global.snickchallengerank == "none")
        visible = false;
    else
        visible = true;
    
    if (global.snickchallengerank == "s")
        image_index = 0;
    
    if (global.snickchallengerank == "a")
        image_index = 1;
    
    if (global.snickchallengerank == "b")
        image_index = 2;
    
    if (global.snickchallengerank == "c")
        image_index = 3;
    
    if (global.snickchallengerank == "d")
        image_index = 4;
}

with (obj_startgate)
{
    if (level == "snickchallenge")
    {
        if (global.medievalrank == "none" || global.ruinrank == "none" || global.dungeonrank == "none")
            instance_destroy();
    }
}
