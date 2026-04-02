function scr_player_comingoutdoor() {
    mach2 = 0;
    jumpAnim = true;
    dashAnim = true;
    landAnim = false;
    moveAnim = true;
    stopAnim = true;
    crouchslideAnim = true;
    crouchAnim = true;
    machhitAnim = false;
    hsp = 0;
    
    if (floor(image_index) == (image_number - 1))
    {
        start_running = true;
        movespeed = 0;
        state = 0;
        image_alpha = 1;
    }
    
    sprite_index = spr_walkfront;
    image_speed = 0.35;
}