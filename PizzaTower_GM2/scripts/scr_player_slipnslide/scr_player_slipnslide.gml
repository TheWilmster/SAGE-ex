function scr_player_slipnslide() {
    mach2 = 0;
    jumpAnim = 1;
    dashAnim = 1;
    landAnim = 0;
    moveAnim = 1;
    stopAnim = 1;
    crouchslideAnim = 1;
    crouchAnim = 0;
    machhitAnim = 0;
    hsp = xscale * movespeed;
    
    if (!place_meeting(x, y + 1, obj_slope))
    {
        if (movespeed >= 0)
            movespeed -= 0.2;
    }
    else
    {
        movespeed += 0.2;
    }
    
    machhitAnim = 0;
    crouchslideAnim = 1;
    
    if (movespeed <= 0 && !scr_slope())
    {
        state = 0;
        movespeed = 0;
        mach2 = 0;
        image_index = 0;
    }
    
    if (scr_solid(x + 1, y) && xscale == 1)
    {
        state = 71;
        hsp = -2;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        instance_create(x + 10, y + 10, obj_bumpeffect);
    }
    
    if (scr_solid(x - 1, y) && xscale == -1)
    {
        state = 71;
        hsp = 2;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        instance_create(x - 10, y + 10, obj_bumpeffect);
    }
    
    sprite_index = spr_slipnslide;
    image_speed = 0.35;
    
    if (!instance_exists(obj_slidecloud) && grounded && movespeed > 1.5)
    {
        with (instance_create(x, y, obj_slidecloud))
            image_xscale = other.xscale;
    }
}