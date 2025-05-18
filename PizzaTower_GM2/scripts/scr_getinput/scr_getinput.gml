function scr_getinput() {
    gamepad_set_axis_deadzone(0, 0.4);
    key_up = keyboard_check(global.key_up) || gamepad_button_check(0, global.key_upC) || gamepad_axis_value(0, gp_axislv) < 0;
    key_up2 = keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(0, global.key_upC) || (gamepad_axis_value(0, gp_axislv) < -0.5 && stickpressed == 0);
    key_right = keyboard_check(global.key_right) || gamepad_button_check(0, global.key_rightC) || gamepad_axis_value(0, gp_axislh) > 0;
    key_right2 = keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(0, global.key_rightC) || (gamepad_axis_value(0, gp_axislh) > 0.5 && stickpressed == 0);
    key_left = -(keyboard_check(global.key_left) || gamepad_button_check(0, global.key_leftC) || gamepad_axis_value(0, gp_axislh) < 0);
    key_left2 = -(keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(0, global.key_leftC) || (gamepad_axis_value(0, gp_axislh) < -0.5 && stickpressed == 0));
    key_down = keyboard_check(global.key_down) || gamepad_button_check(0, global.key_downC) || gamepad_axis_value(0, gp_axislv) > 0;
    key_down2 = keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(0, global.key_downC) || (gamepad_axis_value(0, gp_axislv) > 0.5 && stickpressed == 0);
    key_jump = keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(0, global.key_jumpC);
    key_jump2 = keyboard_check(global.key_jump) || gamepad_button_check(0, global.key_jumpC);
    key_slap = keyboard_check(global.key_slap) || gamepad_button_check(0, global.key_slapC);
    key_slap2 = keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(0, global.key_slapC);
    key_taunt = keyboard_check(global.key_taunt) || gamepad_button_check(0, global.key_tauntC);
    key_taunt2 = keyboard_check_pressed(global.key_taunt) || gamepad_button_check_pressed(0, global.key_tauntC);
    key_attack = keyboard_check(global.key_attack) || gamepad_button_check(0, global.key_attackC) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_shoulderrb);
    key_attack2 = keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(0, global.key_attackC) || gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_shoulderrb);
    key_shoot = keyboard_check(global.key_shoot) || gamepad_button_check(0, global.key_shootC);
    key_shoot2 = keyboard_check_pressed(global.key_shoot) || gamepad_button_check_pressed(0, global.key_shootC);
    key_start = keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(0, global.key_startC);
    key_escape = keyboard_check_pressed(vk_escape) || gamepad_button_check(0, gp_select);
    
    if ((gamepad_axis_value(0, gp_axislh) > 0.5 || gamepad_axis_value(0, gp_axislh) < -0.5) || (gamepad_axis_value(0, gp_axislv) > 0.5 || gamepad_axis_value(0, gp_axislv) < -0.5))
        stickpressed = 1;
    else
        stickpressed = 0;
    
    if (keyboard_check_pressed(vk_f1))
    {
        ini_open("saveData.ini");
        global.key_up = ini_write_string("ControlsKeys", "up", 38);
        global.key_right = ini_write_string("ControlsKeys", "right", 39);
        global.key_left = ini_write_string("ControlsKeys", "left", 37);
        global.key_down = ini_write_string("ControlsKeys", "down", 40);
        global.key_jump = ini_write_string("ControlsKeys", "jump", 90);
        global.key_slap = ini_write_string("ControlsKeys", "slap", 88);
        global.key_taunt = ini_write_string("ControlsKeys", "taunt", 67);
        global.key_shoot = ini_write_string("ControlsKeys", "shoot", 67);
        global.key_attack = ini_write_string("ControlsKeys", "attack", 16);
        global.key_start = ini_write_string("ControlsKeys", "start", 27);
        global.key_upC = ini_write_string("ControllerButton", "up", 32781);
        global.key_rightC = ini_write_string("ControllerButton", "right", 32784);
        global.key_leftC = ini_write_string("ControllerButton", "left", 32783);
        global.key_downC = ini_write_string("ControllerButton", "down", 32782);
        global.key_jumpC = ini_write_string("ControllerButton", "jump", 32769);
        global.key_slapC = ini_write_string("ControllerButton", "slap", 32771);
        global.key_tauntC = ini_write_string("ControllerButton", "taunt", 32772);
        global.key_shootC = ini_write_string("ControllerButton", "shoot", 32770);
        global.key_attackC = ini_write_string("ControllerButton", "attack", 32774);
        global.key_startC = ini_write_string("ControllerButton", "start", 32778);
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
        global.key_upC = ini_read_string("ControllerButton", "up", 32781);
        global.key_rightC = ini_read_string("ControllerButton", "right", 32784);
        global.key_leftC = ini_read_string("ControllerButton", "left", 32783);
        global.key_downC = ini_read_string("ControllerButton", "down", 32782);
        global.key_jumpC = ini_read_string("ControllerButton", "jump", 32769);
        global.key_slapC = ini_read_string("ControllerButton", "slap", 32771);
        global.key_tauntC = ini_read_string("ControllerButton", "taunt", 32772);
        global.key_shootC = ini_read_string("ControllerButton", "shoot", 32770);
        global.key_attackC = ini_read_string("ControllerButton", "attack", 32774);
        global.key_startC = ini_read_string("ControllerButton", "start", 32778);
        ini_close();
        
        with (obj_tv)
        {
            message = "CONTROLS RESET";
            showtext = 1;
            alarm[0] = 150;
        }
    }
}