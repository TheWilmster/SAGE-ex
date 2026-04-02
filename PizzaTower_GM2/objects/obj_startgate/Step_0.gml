targetDoor = "A";

if (place_meeting(x, y, obj_player1))
{
    image_speed = 0.35;
}
else
{
    image_speed = 0;
    image_index = 0;
}

ini_open("saveData.ini");
global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0);
global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0);
global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0);

if (global.SAGEsrank == 0)
{
    if (global.medievalrank == "s" && global.ruinrank == "s" && global.dungeonrank == "s")
        ini_write_string("SAGE2019", "srank", 1);
}

global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0);

if (global.SAGEsnicksrank == 0)
{
    if (global.snickchallengerank == "s")
        ini_write_string("SAGE2019", "snicksrank", 1);
}

global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0);
global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0);

if (global.medievalsecret == 6 && global.ruinsecret == 6 && global.dungeonsecret == 6 && global.SAGEsecret == 0)
    ini_write_string("SAGE2019", "secret", 1);

global.SAGEknight = ini_read_string("SAGE2019", "knight", 0);
global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0);

if (global.medievaltoppin1 == 1 && global.medievaltoppin2 == 1 && global.medievaltoppin3 == 1 && global.medievaltoppin4 == 1 && global.medievaltoppin5 == 1 && global.ruintoppin1 == 1 && global.ruintoppin2 == 1 && global.ruintoppin3 == 1 && global.ruintoppin4 == 1 && global.ruintoppin5 == 1 && global.dungeontoppin1 == 1 && global.dungeontoppin2 == 1 && global.dungeontoppin3 == 1 && global.dungeontoppin4 == 1 && global.dungeontoppin5 == 1 && global.SAGEtoppin == 0)
    ini_write_string("SAGE2019", "toppin", 1);

global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0);

if (global.medievaltreasure == 1 && global.ruintreasure == 1 && global.dungeontreasure == 1 && global.SAGEtreasure == 0)
    ini_write_string("SAGE2019", "treasure", 1);

ini_close();

if (level == "medieval")
{
    if (distance_to_object(obj_player) < 50)
    {
        with (obj_tv)
        {
            message = "PIZZASCAPE";
            showtext = 1;
            alarm[0] = 2;
        }
    }
}

if (level == "ruin")
{
    if (distance_to_object(obj_player) < 50)
    {
        with (obj_tv)
        {
            message = "THE ANCIENT CHEESE";
            showtext = 1;
            alarm[0] = 2;
        }
    }
}

if (level == "dungeon")
{
    if (distance_to_object(obj_player) < 50)
    {
        with (obj_tv)
        {
            message = "BLOODSAUCE DUNGEON";
            showtext = 1;
            alarm[0] = 2;
        }
    }
}

if (level == "snickchallenge")
{
    if (distance_to_object(obj_player) < 50)
    {
        with (obj_tv)
        {
            message = "SNICK CHALLENGE";
            showtext = 1;
            alarm[0] = 2;
        }
    }
}
