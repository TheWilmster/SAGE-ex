function scr_player_shotgun() {
    hsp = xscale * movespeed;
    dir = xscale;
    movespeed = 0;
    landAnim = 0;
    momemtum = 1;
    
    if (floor(image_index) == (image_number - 1))
    {
        if (grounded)
        {
            sprite_index = spr_shotgun_idle;
            state = 0;
        }
        else
        {
            sprite_index = spr_shotgun_fall;
            state = 57;
        }
    }
    
    image_speed = 0.4;
    
    if (!instance_exists(obj_slidecloud) && grounded && movespeed > 4)
        instance_create(x, y, obj_slidecloud);
}