with (instance_create(x, y, obj_smallnumber))
    number = "100";

global.collect += 100;
scr_soundeffect(sfx_collectpizza);
instance_destroy();
