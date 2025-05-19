if (!instance_exists(obj_keyconfig))
{
    if (obj_player.key_up2 && optionselected > 0)
    {
        optionselected -= 1;
        scr_soundeffect(sfx_step);
    }
    
    if (obj_player.key_down2 && optionselected < 2)
    {
        optionselected += 1;
        scr_soundeffect(sfx_step);
    }
}

if (optionselected == 0)
{
    if (obj_player.key_right2 && optionsaved_fullscreen == 0)
        optionsaved_fullscreen = 1;
    
    if (-obj_player.key_left2 && optionsaved_fullscreen == 1)
        optionsaved_fullscreen = 0;
    
    if (obj_player.key_jump && optionsaved_fullscreen == 0)
    {
        window_set_fullscreen(true);
        ini_open("saveData.ini");
        global.option_fullscreen = ini_write_real("Option", "fullscreen", 0);
        ini_close();
    }
    
    if (obj_player.key_jump && optionsaved_fullscreen == 1)
    {
        window_set_fullscreen(false);
        ini_open("saveData.ini");
        global.option_fullscreen = ini_write_real("Option", "fullscreen", 1);
        ini_close();
    }
}

if (optionselected == 1)
{
    if (obj_player.key_right2 && optionsaved_resolution < 2)
        optionsaved_resolution += 1;
    
    if (-obj_player.key_left2 && optionsaved_resolution > 0)
        optionsaved_resolution -= 1;
    
    if (obj_player.key_jump && optionsaved_resolution == 0)
    {
        ini_open("saveData.ini");
        global.option_resolution = ini_write_real("Option", "resolution", 0);
        ini_close();
        window_set_size(480, 270);
    }
    
    if (obj_player.key_jump && optionsaved_resolution == 1)
    {
        window_set_size(960, 540);
        ini_open("saveData.ini");
        global.option_resolution = ini_write_real("Option", "resolution", 1);
        ini_close();
    }
    
    if (obj_player.key_jump && optionsaved_resolution == 2)
    {
        window_set_size(1980, 1080);
        ini_open("saveData.ini");
        global.option_resolution = ini_write_real("Option", "resolution", 2);
        ini_close();
    }
}

if (optionselected == 2)
{
    if (!instance_exists(obj_keyconfig))
    {
        if (obj_player.key_jump)
        {
            visible = false;
            instance_create(x, y, obj_keyconfig);
        }
    }
}

if ((obj_player.key_slap2 || obj_player.key_start) && !instance_exists(obj_keyconfig))
{
    scr_soundeffect(sfx_enemyprojectile);
    obj_mainmenuselect.selected = 0;
    instance_destroy();
}
