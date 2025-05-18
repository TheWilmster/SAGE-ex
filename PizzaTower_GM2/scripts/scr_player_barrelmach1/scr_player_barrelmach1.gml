function scr_player_barrelmach1() {
    hsp = image_xscale * movespeed;
    
    if (movespeed <= 8)
        movespeed += 0.2;
    
    if (vsp < 12)
        vsp += grav;
    
    if (grounded)
    {
        if (mach2 < 35)
            mach2++;
        
        if (mach2 >= 35)
        {
            image_index = 0;
            state = 84;
            flash = 1;
        }
    }
    
    if (!grounded)
    {
        state = 82;
        image_index = 0;
        hsp = 0;
    }
    
    if (!key_attack && grounded)
    {
        state = 83;
        image_index = 0;
        mach2 = 0;
    }
    
    if (scr_solid(x + 1, y) && image_xscale == 1)
    {
        state = 82;
        hsp = -2;
        vsp = -2;
        mach2 = 0;
        image_index = 0;
        instance_create(x + 10, y + 10, obj_bumpeffect);
    }
    
    if (scr_solid(x - 1, y) && image_xscale == -1)
    {
        state = 82;
        hsp = 2;
        vsp = -2;
        mach2 = 0;
        image_index = 0;
        instance_create(x - 10, y + 10, obj_bumpeffect);
    }
    
    sprite_index = spr_player_barrelmach;
    image_speed = 0.35;
    
    if (!instance_exists(obj_dashcloud) && grounded)
        instance_create(x, y, obj_dashcloud);
}