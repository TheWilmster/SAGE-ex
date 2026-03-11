function scr_player_ladder() {
    jumpAnim = true;
    dashAnim = true;
    landAnim = false;
    moveAnim = true;
    stopAnim = true;
    crouchslideAnim = true;
    crouchAnim = false;
    machhitAnim = false;
    turning = false;
    jumpstop = false;
    movespeed = 0;
    hsp = 0;
    
    if (key_up)
    {
        sprite_index = spr_laddermove;
        vsp = -2;
        image_speed = 0.35;
    }
    else if (key_down)
    {
        sprite_index = spr_ladderdown;
        vsp = 6;
        image_speed = -0.35;
    }
    else
    {
        sprite_index = spr_Ladder;
        vsp = 0;
    }
    
    mach2 = 0;
    jumpAnim = true;
    dashAnim = true;
    landAnim = false;
    moveAnim = true;
    stopAnim = true;
    crouchslideAnim = true;
    crouchAnim = true;
    machhitAnim = false;
    
    if (!place_meeting(x, y, obj_ladder))
    {
        landAnim = false;
        jumpAnim = false;
        state = 0;
        image_index = 0;
        vsp = 0;
    }
    
    if (key_jump)
    {
        sprite_index = spr_jump;
        ladderbuffer = 20;
        jumpAnim = true;
        state = 57;
        vsp = -9;
        image_index = 0;
    }
    
    if (key_down && grounded && !place_meeting(x, y, obj_platform))
    {
        state = 0;
        image_index = 0;
    }
}