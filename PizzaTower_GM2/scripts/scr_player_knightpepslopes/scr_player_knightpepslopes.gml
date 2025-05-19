function scr_player_knightpepslopes() {
    alarm[5] = 2;
    alarm[7] = 60;
    hurted = 1;
    hsp = xscale * movespeed;
    
    if (sprite_index == spr_knightpepdownslope)
        movespeed = 15;
    
    if (!scr_slope())
        sprite_index = spr_knightpepcharge;
    
    if (scr_slope())
        sprite_index = spr_knightpepdownslope;
    
    if (scr_solid(x + sign(hsp), y) && !place_meeting(x + sign(hsp), y, obj_destructibles))
    {
        if (character == "P")
        {
            with (instance_create(x, y, obj_knightdebris))
                image_index = 0;
            
            with (instance_create(x, y, obj_knightdebris))
                image_index = 1;
            
            with (instance_create(x, y, obj_knightdebris))
                image_index = 2;
            
            with (instance_create(x, y, obj_knightdebris))
                image_index = 3;
            
            with (instance_create(x, y, obj_knightdebris))
                image_index = 4;
            
            with (instance_create(x, y, obj_knightdebris))
                image_index = 5;
        }
        else
        {
            repeat (6)
                instance_create(x, y, obj_metaldebris);
        }
        
        if (x != other.x)
            obj_player.hsp = sign(x - other.x) * 5;
        else
            obj_player.hsp = 5;
        
        vsp = -3;
        scr_soundeffect(sfx_bumpwall);
        scr_soundeffect(sfx_loseknight);
        image_index = 0;
        obj_player.image_index = 0;
        obj_player.flash = 1;
        state = 71;
    }
    
    if (movespeed <= 0 && sprite_index == spr_knightpepcharge)
    {
        sprite_index = spr_knightpepidle;
        state = 23;
    }
    
    image_speed = 0.4;
}