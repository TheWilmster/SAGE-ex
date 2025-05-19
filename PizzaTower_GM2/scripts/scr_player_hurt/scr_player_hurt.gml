function scr_player_hurt() {
    if (sprite_index == spr_hurtjump)
        hsp = xscale * movespeed;
    
    if (sprite_index == spr_hurt)
        hsp = -xscale * movespeed;
    
    if (movespeed > 0)
        movespeed -= 0.1;
    
    freefallsmash = 0;
    combo = 0;
    mach2 = 0;
    bounce = 0;
    jumpAnim = 1;
    dashAnim = 1;
    
    if (grounded)
        landAnim = 0;
    else
        landAnim = 1;
    
    jumpstop = 0;
    moveAnim = 1;
    stopAnim = 1;
    crouchslideAnim = 1;
    crouchAnim = 0;
    machhitAnim = 0;
    hurted = 1;
    turning = 0;
    
    if (instance_exists(obj_hook))
        obj_hook.hooked = 0;
    
    alarm[5] = 2;
    alarm[7] = 60;
    
    if (grounded)
        vsp = -4;
    
    if (scr_solid(x + hsp, y))
        xscale *= -1;
    
    image_speed = 0.35;
}