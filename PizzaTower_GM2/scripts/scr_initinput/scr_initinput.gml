function scr_initinput() {
    ini_open("saveData.ini");
    global.key_up = ini_read_string("ControlsKeys", "up", 38);
    global.key_right = ini_read_string("ControlsKeys", "right", 39);
    global.key_left = ini_read_string("ControlsKeys", "left", 37);
    global.key_down = ini_read_string("ControlsKeys", "down", 40);
    global.key_jump = ini_read_string("ControlsKeys", "jump", 90);
    global.key_slap = ini_read_string("ControlsKeys", "slap", 88);
    global.key_taunt = ini_read_string("ControlsKeys", "taunt", 67);
    global.key_shoot = ini_read_string("ControlsKeys", "shoot", 67);
    global.key_attack = ini_read_string("ControlsKeys", "attack", 16);
    global.key_start = ini_read_string("ControlsKeys", "start", 27);
    global.key_upC = ini_read_string("ControllerButton", "up", gp_padu);
    global.key_rightC = ini_read_string("ControllerButton", "right", gp_padr);
    global.key_leftC = ini_read_string("ControllerButton", "left", gp_padl);
    global.key_downC = ini_read_string("ControllerButton", "down", gp_padd);
    global.key_jumpC = ini_read_string("ControllerButton", "jump", gp_face1);
    global.key_slapC = ini_read_string("ControllerButton", "slap", gp_face3);
    global.key_tauntC = ini_read_string("ControllerButton", "taunt", gp_face4);
    global.key_shootC = ini_read_string("ControllerButton", "shoot", gp_face2);
    global.key_attackC = ini_read_string("ControllerButton", "attack", gp_shoulderr);
    global.key_startC = ini_read_string("ControllerButton", "start", gp_start);
    ini_close();
}