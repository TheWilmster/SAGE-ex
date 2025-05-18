function scr_enemy_idle() {
    if (vsp > 1 && (grounded || (grounded && !place_meeting(x, y, obj_platform))))
    {
        instance_create(x, y, obj_landcloud);
        image_index = 0;
    }
    
    if (vsp >= 0 && sprite_index == scaredspr && grounded)
        state = 100;
    
    if (object_index == obj_ancho && sprite_index == scaredspr && floor(image_index) == (image_number - 1))
        state = 100;
    
    if (object_index == obj_forknight && sprite_index == spr_forknight_turn && floor(image_index) == (image_number - 1))
        state = 100;
    
    if ((grounded || (grounded && !place_meeting(x, y, obj_platform))) && vsp > 0)
        hsp = 0;
    
    if (!(grounded || (grounded && !place_meeting(x, y, obj_platform))) && hsp < 0)
        hsp += 0.1;
    else if (!(grounded || (grounded && !place_meeting(x, y, obj_platform))) && hsp > 0)
        hsp -= 0.1;
    
    image_speed = 0.35;
}