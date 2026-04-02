function scr_playersounds() {
    if (state == 68 && !audio_is_playing(sfx_mach1) && grounded)
        scr_soundeffect(sfx_mach1);
    else if (state != 68 || !grounded || move == -xscale)
        audio_stop_sound(sfx_mach1);
    
    if ((sprite_index == spr_mach || state == 16) && !audio_is_playing(sfx_mach2))
        scr_soundeffect(sfx_mach2);
    else if (sprite_index != spr_mach && state != 16)
        audio_stop_sound(sfx_mach2);
    
    if ((state == 89 || sprite_index == spr_player_machslideboost3) && sprite_index != spr_crazyrun && !audio_is_playing(sfx_mach3))
        scr_soundeffect(sfx_mach3);
    else if ((state != 89 && sprite_index != spr_player_machslideboost3) || sprite_index == spr_crazyrun)
        audio_stop_sound(sfx_mach3);
    
    if (state == 17 && !audio_is_playing(sfx_knightslide))
        scr_soundeffect(sfx_knightslide);
    else if (state != 17 && audio_is_playing(sfx_knightslide))
        audio_stop_sound(sfx_knightslide);
    
    if ((sprite_index == spr_bombpeprun || sprite_index == spr_bombpeprunabouttoexplode) && !audio_is_playing(sfx_bombpep1))
        scr_soundeffect(sfx_bombpep1);
    else if (sprite_index != spr_bombpeprun && sprite_index != spr_bombpeprunabouttoexplode && audio_is_playing(sfx_bombpep1))
        audio_stop_sound(sfx_bombpep1);
    
    if (sprite_index == spr_crazyrun && !audio_is_playing(sfx_mach4))
        scr_soundeffect(sfx_mach4);
    else if (sprite_index != spr_crazyrun)
        audio_stop_sound(sfx_mach4);
    
    if (state != 64 && audio_is_playing(sfx_superjumpprep))
        audio_stop_sound(sfx_superjumpprep);
    
    if (state != 64 && audio_is_playing(sfx_superjumphold))
        audio_stop_sound(sfx_superjumphold);
    
    if (sprite_index == spr_player_tumblestart && !audio_is_playing(sfx_tumble1) && floor(image_index) < 11)
        scr_soundeffect(sfx_tumble1);
    
    if (sprite_index == spr_player_tumblestart && floor(image_index) == 11 && !audio_is_playing(sfx_tumble2))
    {
        scr_soundeffect(sfx_tumble2);
        audio_stop_sound(sfx_tumble1);
    }
    
    if ((sprite_index == spr_player_tumble || sprite_index == spr_machroll) && !audio_is_playing(sfx_tumble3))
        scr_soundeffect(sfx_tumble3);
    
    if (state != 1 && sprite_index != spr_machroll)
    {
        audio_stop_sound(sfx_tumble1);
        audio_stop_sound(sfx_tumble2);
        audio_stop_sound(sfx_tumble3);
    }
    
    if (audio_is_playing(sfx_suplexdash) && state != 21)
        audio_stop_sound(sfx_suplexdash);
}