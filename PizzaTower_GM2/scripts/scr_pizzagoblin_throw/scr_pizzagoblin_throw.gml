function scr_pizzagoblin_throw() {
    if (!variable_global_exists("throw_frame"))
    {
        global.throw_frame = 0;
        global.throw_frame[78] = 2;
        global.throw_frame[75] = 6;
        global.throw_frame[85] = 2;
        global.throw_frame[86] = 2;
        global.throw_frame[87] = 2;
        global.throw_frame[76] = 2;
        global.throw_frame[77] = 8;
        global.throw_frame[79] = 6;
        global.throw_frame[80] = 1;
        global.throw_sprite = 0;
        global.throw_sprite[78] = 149;
        global.throw_sprite[75] = 220;
        global.throw_sprite[85] = 250;
        global.throw_sprite[86] = 242;
        global.throw_sprite[87] = 273;
        global.throw_sprite[76] = 221;
        global.throw_sprite[77] = 288;
        global.throw_sprite[79] = 298;
        global.throw_sprite[80] = 229;
        global.reset_timer = 0;
        global.reset_timer[78] = 200;
        global.reset_timer[75] = 200;
        global.reset_timer[85] = 100;
        global.reset_timer[86] = 100;
        global.reset_timer[87] = 100;
        global.reset_timer[76] = 200;
        global.reset_timer[77] = 200;
        global.reset_timer[79] = 100;
        global.reset_timer[80] = 100;
    }
    
    hsp = 0;
    
    if (place_meeting(x, y + 1, obj_railh))
        hsp = -5;
    else if (place_meeting(x, y + 1, obj_railh2))
        hsp = 5;
    
    if (floor(image_index) == (image_number - 1))
        state = 100;
    
    if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
    {
        bombreset = global.reset_timer[object_index];
        sprite_index = global.throw_sprite[object_index];
        scr_soundeffect(8);
        
        switch (object_index)
        {
            case obj_pizzagoblin:
                with (instance_create(x, y, obj_pizzagoblinbomb))
                {
                    hsp = other.image_xscale * 10;
                    vsp = -8;
                }
                
                break;
            
            case obj_cheeserobot:
                with (instance_create(x, y, obj_cheeseblob))
                {
                    sprite_index = spr_cheeserobot_goop;
                    image_xscale = other.image_xscale;
                    hsp = other.image_xscale * 8;
                    vsp = 0;
                    grav = 0;
                }
                
                break;
            
            case obj_spitcheese:
                with (instance_create(x + (image_xscale * 6), y - 6, obj_spitcheesespike))
                {
                    image_xscale = other.image_xscale;
                    hsp = other.image_xscale * 5;
                    vsp = -6;
                }
                
                break;
            
            case obj_trash:
            case obj_invtrash:
                with (instance_create(x + (image_xscale * 6), y - 6, obj_cheeseball))
                {
                    image_xscale = other.image_xscale;
                    hsp = other.image_xscale * 5;
                    vsp = -4;
                }
                
                break;
            
            case obj_robot:
                with (instance_create(x, y, obj_robotknife))
                {
                    image_xscale = other.image_xscale;
                    hsp = other.image_xscale * 5;
                }
                
                break;
            
            case obj_kentukykenny:
                with (instance_create(x, y, obj_kentukykenny_projectile))
                    image_xscale = other.image_xscale;
                
                break;
            
            case obj_pizzard:
                with (instance_create(x, y, obj_pizzard_bolt))
                    image_xscale = other.image_xscale;
                
                break;
            
            case obj_pepgoblin:
                with (instance_create(x, y, obj_pepgoblin_kickhitbox))
                {
                    baddieID = other.id;
                    image_xscale = other.image_xscale;
                }
                
                break;
        }
    }
    
    if (!grounded && hsp < 0)
        hsp += 0.1;
    else if (!grounded && hsp > 0)
        hsp -= 0.1;
}