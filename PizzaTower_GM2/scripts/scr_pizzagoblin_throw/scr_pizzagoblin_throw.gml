function scr_pizzagoblin_throw() {
    if (!variable_global_exists("throw_frame"))
    {
        global.throw_frame = 0;
        global.throw_frame[obj_pizzagoblin] = 2;
        global.throw_frame[obj_cheeserobot] = 6;
        global.throw_frame[obj_spitcheese] = 2;
        global.throw_frame[obj_trash] = 2;
        global.throw_frame[obj_invtrash] = 2;
        global.throw_frame[obj_robot] = 2;
        global.throw_frame[obj_kentukykenny] = 8;
        global.throw_frame[obj_pizzard] = 6;
        global.throw_frame[obj_pepgoblin] = 1;
        global.throw_sprite = 0;
        global.throw_sprite[obj_pizzagoblin] = spr_pizzagoblin_throwbomb;
        global.throw_sprite[obj_cheeserobot] = spr_cheeserobot_attack;
        global.throw_sprite[obj_spitcheese] = spr_spitcheese_spit;
        global.throw_sprite[obj_trash] = spr_trash_throw;
        global.throw_sprite[obj_invtrash] = spr_invtrash_throw;
        global.throw_sprite[obj_robot] = spr_robot_attack;
        global.throw_sprite[obj_kentukykenny] = spr_kentukykenny_throw;
        global.throw_sprite[obj_pizzard] = spr_pizzard_shoot;
        global.throw_sprite[obj_pepgoblin] = spr_pepgoblin_kick;
        global.reset_timer = 0;
        global.reset_timer[obj_pizzagoblin] = 200;
        global.reset_timer[obj_cheeserobot] = 200;
        global.reset_timer[obj_spitcheese] = 100;
        global.reset_timer[obj_trash] = 100;
        global.reset_timer[obj_invtrash] = 100;
        global.reset_timer[obj_robot] = 200;
        global.reset_timer[obj_kentukykenny] = 200;
        global.reset_timer[obj_pizzard] = 100;
        global.reset_timer[obj_pepgoblin] = 100;
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
        scr_soundeffect(sfx_enemyprojectile);
        
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