function scr_player_tackle() {
    combo = 0;
    mach2 = 0;
    hsp = -xscale * movespeed;
    
    if (movespeed > 0)
        movespeed -= 0.5;
    
    start_running = true;
    jumpAnim = true;
    dashAnim = true;
    landAnim = false;
    moveAnim = true;
    stopAnim = true;
    crouchslideAnim = true;
    crouchAnim = true;
    
    if (floor(image_index) == (image_number - 1))
        state = 0;
    
    image_speed = 0.35;
}