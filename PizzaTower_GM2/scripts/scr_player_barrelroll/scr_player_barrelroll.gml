function scr_player_barrelroll() {
    mask_index = spr_crouchmask;
    hsp = image_xscale * movespeed;
    movespeed = 10;
    mach2 = 35;
    
    if (vsp < 12)
        vsp += grav;
    
    if (input_buffer_jump < 5 && grounded)
        vsp = -5;
    
    if (key_jump)
        input_buffer_jump = 0;
    
    if (scr_solid(x + 1, y) && image_xscale == 1)
    {
        barrel = 0;
        mask_index = spr_player_mask;
        state = 71;
        hsp = -2;
        vsp = -2;
        mach2 = 0;
        image_index = 0;
        instance_create(x + 10, y + 10, obj_bumpeffect);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
    }
    
    if (scr_solid(x - 1, y) && image_xscale == -1)
    {
        barrel = 0;
        mask_index = spr_player_mask;
        state = 71;
        hsp = 2;
        vsp = -2;
        mach2 = 0;
        image_index = 0;
        instance_create(x - 10, y + 10, obj_bumpeffect);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
        instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris);
    }
    
    instance_create(x, y, obj_mach2effect);
    sprite_index = spr_player_barrelroll;
    image_speed = 0.45;
}