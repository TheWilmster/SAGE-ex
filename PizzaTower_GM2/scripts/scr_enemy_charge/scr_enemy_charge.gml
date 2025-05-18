function scr_enemy_charge() {
    if (object_index == obj_peasanto)
    {
        if (grounded || (grounded && !place_meeting(x, y, obj_platform)))
            hsp = image_xscale * (movespeed * 4);
        else
            hsp = 0;
        
        image_speed = 0.35;
        
        if (((scr_solid(x + 1, y) && image_xscale == 1) || (scr_solid(x - 1, y) && image_xscale == -1)) && !place_meeting(x + sign(hsp), y, obj_slope))
            image_xscale *= -1;
        
        if (!(scr_solid(x + 15, y + 31) || scr_solid(x + 15, y + 31)) && image_xscale == 1 && movespeed > 0)
            image_xscale *= -1;
        
        if (!(scr_solid(x - 15, y + 31) || scr_solid(x - 15, y + 31)) && image_xscale == -1 && movespeed > 0)
            image_xscale *= -1;
        
        if (!(grounded || (grounded && !place_meeting(x, y, obj_platform))) && hsp < 0)
            hsp += 0.1;
        else if (!(grounded || (grounded && !place_meeting(x, y, obj_platform))) && hsp > 0)
            hsp -= 0.1;
        
        sprite_index = spr_peasanto_attack;
    }
    
    if (object_index == obj_pizzice)
    {
        hsp = image_xscale * movespeed;
        image_speed = 0.35;
        
        if (((scr_solid(x + 1, y) && image_xscale == 1) || (scr_solid(x - 1, y) && image_xscale == -1)) && !place_meeting(x + sign(hsp), y, obj_slope))
            image_xscale *= -1;
        
        sprite_index = spr_pizzice_walk;
    }
    
    if (object_index == obj_fencer)
    {
        if (grounded || (grounded && !place_meeting(x, y, obj_platform)))
            hsp = image_xscale * movespeed;
        else
            hsp = 0;
        
        if (((scr_solid(x + 1, y) && image_xscale == 1) || (scr_solid(x - 1, y) && image_xscale == -1)) && !place_meeting(x + sign(hsp), y, obj_slope))
            image_xscale *= -1;
    }
    
    if (object_index == obj_ancho)
    {
        hsp = image_xscale * movespeed;
        
        if (place_meeting(x + hsp, y, obj_solid))
        {
            state = 104;
            stunned = 100;
        }
    }
    
    if (object_index == obj_ninja)
    {
        hsp = image_xscale * (movespeed * 2);
        image_speed = 0.35;
        
        if (grounded && vsp > 0)
            state = 100;
        
        if (((scr_solid(x + 1, y) && image_xscale == 1) || (scr_solid(x - 1, y) && image_xscale == -1)) && !place_meeting(x + sign(hsp), y, obj_slope))
            image_xscale *= -1;
        
        if (!(grounded || (grounded && !place_meeting(x, y, obj_platform))) && hsp < 0)
            hsp += 0.1;
        else if (!(grounded || (grounded && !place_meeting(x, y, obj_platform))) && hsp > 0)
            hsp -= 0.1;
        
        sprite_index = spr_ninja_attack;
    }
}