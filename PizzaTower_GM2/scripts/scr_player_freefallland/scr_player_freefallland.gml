function scr_player_freefallland() {
    mach2 = 0;
    jumpAnim = true;
    dashAnim = true;
    landAnim = false;
    moveAnim = true;
    stopAnim = true;
    crouchslideAnim = true;
    crouchAnim = false;
    machhitAnim = false;
    movespeed = false;
    facehurt = true;
    start_running = true;
    alarm[4] = 14;
    vsp = 0;
    hsp = 0;
    
    if (floor(image_index) == (image_number - 1) && !(superslam > 30))
        state = 0;
    
    if (floor(image_index) == (image_number - 1) && superslam > 30)
    {
        state = 39;
        vsp = -7;
    }
    
    image_speed = 0.35;
}