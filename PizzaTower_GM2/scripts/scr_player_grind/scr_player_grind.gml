function scr_player_grind() {
    vsp = 0;
    machhitAnim = 0;
    crouchslideAnim = 1;
    hsp = xscale * movespeed;
    
    if (!grinding)
        state = 69;
    
    if (key_jump)
    {
        vsp = -6;
        state = 69;
        grinding = 0;
    }
    
    sprite_index = spr_player_grind;
    image_speed = 0.35;
    
    if (!instance_exists(obj_grindeffect))
        instance_create(x, y, obj_grindeffect);
}