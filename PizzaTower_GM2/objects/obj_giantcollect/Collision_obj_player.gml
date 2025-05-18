with (instance_create(x, y, obj_smallnumber))
    number = "1000";

global.collect += 1000;
scr_soundeffect(6);
instance_destroy();
