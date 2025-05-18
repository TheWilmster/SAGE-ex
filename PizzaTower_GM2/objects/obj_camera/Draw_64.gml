pal_swap_set(368, obj_player.paletteselect, 0);

if (obj_player.backupweapon == 1)
    draw_sprite_ext(spr_shotgunbackup, -1, 50, 100, 1, 1, 1, c_white, alpha);

if (obj_player.state != 54)
{
    if (obj_player.character == "P")
    {
        if (obj_player.sprite_index == spr_knightpep_thunder)
            draw_sprite_ext(spr_pepinoHUDthunder, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.sprite_index != spr_knightpep_start && (obj_player.state == 23 || obj_player.state == 17))
            draw_sprite_ext(spr_pepinoHUDknight, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.sprite_index == spr_bombpep_end)
            draw_sprite_ext(spr_pepinoHUDbombend, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (instance_exists(obj_itspizzatime) || obj_player.sprite_index == spr_bombpep_intro || obj_player.sprite_index == spr_bombpep_runabouttoexplode || obj_player.sprite_index == spr_bombpep_run || obj_player.sprite_index == spr_player_fireass)
            draw_sprite_ext(spr_pepinoHUDscream, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.state == 91 || (obj_player.state == 76 && shake_mag > 0))
            draw_sprite_ext(spr_pepinoHUDstun, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.sprite_index == spr_player_victory || obj_player.state == 55 || obj_player.state == 61 || obj_player.state == 22 || (obj_player.state == 53 && obj_player.sprite_index == spr_player_levelcomplete))
            draw_sprite_ext(spr_pepinoHUDhappy, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.sprite_index == spr_player_machroll || obj_player.sprite_index == spr_player_tumble)
            draw_sprite_ext(spr_pepinoHUDrolling, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (global.combo >= 3)
            draw_sprite_ext(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.state == 68 || obj_player.state == 32 || obj_player.state == 90 || obj_player.state == 73 || obj_player.state == 56 || obj_player.state == 62 || obj_player.state == 41 || obj_player.state == 64 || obj_player.state == 45 || obj_player.state == 46 || obj_player.state == 50 || obj_player.state == 47 || obj_player.state == 48 || obj_player.state == 49)
            draw_sprite_ext(spr_pepinoHUDmach1, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.state == 69 || obj_player.sprite_index == spr_player_dive || obj_player.sprite_index == spr_player_machslideboost || obj_player.state == 16 || obj_player.state == 21 || obj_player.state == 42)
            draw_sprite_ext(spr_pepinoHUDmach2, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.state == 89 && obj_player.sprite_index == spr_player_crazyrun)
            draw_sprite_ext(spr_pepinoHUDmach4, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.state == 89 || obj_player.sprite_index == spr_player_machslideboost3)
            draw_sprite_ext(spr_pepinoHUDmach3, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.state == 72 || obj_player.sprite_index == spr_bombpep_end || obj_player.sprite_index == spr_player_fireassend || obj_player.state == 35 || obj_player.state == 26 || (obj_player.state == 53 && obj_player.sprite_index == spr_player_bossintro) || (obj_player.state == 53 && obj_player.sprite_index == spr_player_idle))
            draw_sprite_ext(spr_pepinoHUDhurt, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.angry == 1)
            draw_sprite_ext(spr_pepinoHUD3hp, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.sprite_index == spr_player_hurtidle || obj_player.sprite_index == spr_player_hurtwalk)
            draw_sprite_ext(spr_pepinoHUD1hp, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (global.panic == 1 || global.snickchallenge == 1)
            draw_sprite_ext(spr_pepinoHUDpanic, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (obj_player.sprite_index == spr_shotgun_pullout)
            draw_sprite_ext(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else
            draw_sprite_ext(spr_pepinoHUD, -1, 125, 100, 1, 1, 1, c_white, alpha);
    }
    
    if (obj_player.character == "S")
        draw_sprite_ext(spr_snickHUD, -1, 125, 60, 1, 1, 1, c_white, alpha);
    
    if (obj_player.character == "N")
    {
        if (!(obj_player.state == 68 || obj_player.state == 22 || obj_player.state == 53 || (obj_player.state == 53 && obj_player.sprite_index == spr_player_bossintro) || (obj_player.state == 53 && obj_player.sprite_index == spr_player_idle) || obj_player.state == 26 || obj_player.state == 36 || obj_player.state == 35 || obj_player.state == 32 || obj_player.state == 37 || obj_player.state == 41 || obj_player.state == 91 || obj_player.state == 45 || obj_player.state == 46 || obj_player.state == 50 || obj_player.state == 47 || obj_player.state == 48 || obj_player.state == 49 || obj_player.state == 56 || (obj_player.state == 53 && obj_player.sprite_index == spr_player_levelcomplete) || (obj_player.state == 76 && shake_mag > 0) || obj_player.state == 90 || obj_player.state == 73 || obj_player.state == 62 || obj_player.state == 64 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 61 || obj_player.state == 72 || obj_player.state == 55 || obj_player.sprite_index == spr_player_victory || obj_player.state == 46))
        {
            if (global.playerhealth == 1)
                draw_sprite_ext(spr_noiseHUD_lowhealth, -1, 125, 100, 1, 1, 1, c_white, alpha);
            else
                draw_sprite_ext(spr_noiseHUD_idle, -1, 125, 100, 1, 1, 1, c_white, alpha);
        }
        else if (obj_player.state == 91 || (obj_player.state == 76 && shake_mag > 0))
        {
            draw_sprite_ext(spr_pepinoHUDstun, -1, 125, 100, 1, 1, 1, c_white, alpha);
        }
        else if (obj_player.sprite_index == spr_player_victory || obj_player.state == 55 || obj_player.state == 61 || obj_player.state == 22 || (obj_player.state == 53 && obj_player.sprite_index == spr_player_levelcomplete))
        {
            draw_sprite_ext(spr_noiseHUD_happy, -1, 125, 100, 1, 1, 1, c_white, alpha);
        }
        else if (obj_player.state == 68 || obj_player.state == 37 || obj_player.state == 32 || obj_player.state == 90 || obj_player.state == 73 || obj_player.state == 56 || obj_player.state == 62 || obj_player.state == 41 || obj_player.state == 64 || obj_player.state == 45 || obj_player.state == 46 || obj_player.state == 50 || obj_player.state == 47 || obj_player.state == 48 || obj_player.state == 49)
        {
            draw_sprite_ext(spr_noiseHUD_mach1, -1, 125, 100, 1, 1, 1, c_white, alpha);
        }
        else if (obj_player.state == 69)
        {
            draw_sprite_ext(spr_noiseHUD_mach2, -1, 125, 100, 1, 1, 1, c_white, alpha);
        }
        else if (obj_player.state == 89 || obj_player.state == 36)
        {
            draw_sprite_ext(spr_pepinoHUDmach3, -1, 125, 100, 1, 1, 1, c_white, alpha);
        }
        else if (obj_player.state == 72 || obj_player.state == 35 || obj_player.state == 26 || (obj_player.state == 53 && obj_player.sprite_index == spr_player_bossintro) || (obj_player.state == 53 && obj_player.sprite_index == spr_player_idle))
        {
            draw_sprite_ext(spr_noiseHUD_hurt, -1, 125, 100, 1, 1, 1, c_white, alpha);
        }
    }
    
    shader_reset();
    
    if (obj_player.movespeed < 2.4 || !(obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 0, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 2.4 && obj_player.movespeed < 4.8 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 1, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 4.8 && obj_player.movespeed < 7.2 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 2, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 7.2 && obj_player.movespeed < 9.6 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 3, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 9.6 && obj_player.movespeed < 12 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 4, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 12 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbarmax, -1, 125, 140, 1, 1, 1, c_white, alpha);
    
    if (obj_player.y < 200 && obj_player.x < 200)
        alpha = 0.5;
    else
        alpha = 1;
    
    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    
    if (global.panic == 1 || global.snickchallenge == 1)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red);
            else
                draw_set_color(c_white);
            
            draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, string_hash_to_newline(string(global.minutes) + ":0" + string(global.seconds)));
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red);
            else
                draw_set_color(c_white);
            
            draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, string_hash_to_newline(string(global.minutes) + ":" + string(global.seconds)));
        }
    }
    
    if (global.key_inv == 1)
        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha);
    
    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha);
}

draw_set_blend_mode(bm_normal);
