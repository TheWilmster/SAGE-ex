with (instance_create(x, y, obj_smallnumber))
    number = "100";

global.collect += 100;
scr_soundeffect(32);
instance_destroy();
