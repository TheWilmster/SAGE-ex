function scr_player_hurt() {
    if (sprite_index == spr_hurtjump)
        hsp = xscale * movespeed;
    
    if (sprite_index == spr_hurt)
        hsp = -xscale * movespeed;
    
    if (movespeed > 0)
        movespeed -= 0.1;
    
    freefallsmash = false;
    combo = 0;
    mach2 = 0;
    bounce = false;
    jumpAnim = true;
    dashAnim = true;
    
    if (grounded)
        landAnim = false;
    else
        landAnim = true;
    
    jumpstop = false;
    moveAnim = true;
    stopAnim = true;
    crouchslideAnim = true;
    crouchAnim = false;
    machhitAnim = false;
    hurted = true;
    turning = false;
    
    if (instance_exists(obj_hook))
        obj_hook.hooked = false;
    
    alarm[5] = 2;
    alarm[7] = 60;
    
    if (grounded)
        vsp = -4;
    
    if (scr_solid(x + hsp, y))
        xscale *= -1;
    
    image_speed = 0.35;
}