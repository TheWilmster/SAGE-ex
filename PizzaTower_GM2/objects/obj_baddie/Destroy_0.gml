if (ds_list_find_index(global.baddieroom, id) == -1 && important == 0)
{
    var i = random_range(0, 100);
    
    if (i >= 95)
        scr_soundeffect(sfx_scream1, sfx_scream2, sfx_scream3, sfx_scream4, sfx_scream5, sfx_scream6, sfx_scream7, sfx_scream8, sfx_scream9, sfx_scream10);
    
    scr_soundeffect(sfx_killenemy);
    scr_sleep(50);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    
    with (obj_camera)
    {
        shake_mag = 3;
        shake_mag_acc = 3 / room_speed;
    }
    
    with (instance_create(x, y, obj_sausageman_dead))
        sprite_index = other.spr_dead;
    
    ds_list_add(global.baddieroom, id);
    obj_tv.image_index = random_range(0, 4);
    global.combo += 1;
    
    if (global.snickchallenge == 0)
    {
        if (global.combo == 1)
        {
            global.collect += 10;
            
            with (instance_create(x, y, obj_smallnumber))
                number = "10";
        }
        
        if (global.combo == 2)
        {
            global.collect += 20;
            
            with (instance_create(x, y, obj_smallnumber))
                number = "20";
        }
        
        if (global.combo == 3)
        {
            global.collect += 40;
            
            with (instance_create(x, y, obj_smallnumber))
                number = "40";
        }
        
        if (global.combo >= 4)
        {
            global.collect += 80;
            
            with (instance_create(x, y, obj_smallnumber))
                number = "80";
        }
    }
    
    global.combotime = 60;
}
else if (ds_list_find_index(global.baddieroom, id) == -1 && important == 1)
{
    scr_sleep(50);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    
    with (obj_camera)
    {
        shake_mag = 3;
        shake_mag_acc = 3 / room_speed;
    }
    
    with (instance_create(x, y, obj_sausageman_dead))
        sprite_index = other.spr_dead;
}
