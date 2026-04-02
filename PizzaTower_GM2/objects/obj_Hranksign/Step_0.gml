ini_open("saveData.ini");
global.HAT_rank = ini_read_string("Ranks", "Hrank", "none");
ini_close();

if (global.HAT_rank == "none")
    visible = false;
else
    visible = true;

if (global.HAT_rank == "s")
    image_index = 0;

if (global.HAT_rank == "a")
    image_index = 1;

if (global.HAT_rank == "b")
    image_index = 2;

if (global.HAT_rank == "c")
    image_index = 3;

if (global.HAT_rank == "d")
    image_index = 4;
