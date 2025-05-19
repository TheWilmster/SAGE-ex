function scr_player_backbreaker() {
    mach2 = 0;
    
    if (sprite_index != spr_player_machfreefall)
    {
        hsp = 0;
        movespeed = 0;
    }
    else
    {
        hsp = xscale * movespeed;
    }
    
    landAnim = 0;
    
    if (sprite_index == spr_player_machfreefall && place_meeting(x, y + 1, obj_solid))
    {
        state = 70;
        sprite_index = spr_player_crouchslide;
    }
    
    if (sprite_index == spr_taunt)
    {
        if (global.combo >= 3 && !instance_exists(obj_tauntaftereffectspawner))
        {
            instance_create(x, y, obj_tauntaftereffectspawner);
            
            with (obj_baddie)
            {
                if (point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), __view_get(0, 0) + __view_get(2, 0), __view_get(1, 0) + __view_get(3, 0)))
                    instance_destroy();
            }
            
            with (obj_camera)
            {
                shake_mag = 10;
                shake_mag_acc = 30 / room_speed;
            }
        }
        
        taunttimer--;
        vsp = 0;
    }
    
    if (taunttimer == 0 && sprite_index == spr_taunt)
    {
        movespeed = tauntstoredmovespeed;
        sprite_index = tauntstoredsprite;
        state = tauntstoredstate;
    }
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_eatspaghetti)
        state = 0;
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && place_meeting(x, y, obj_exitgate))
        state = 0;
    
    if (floor(image_index) == (image_number - 1) && (sprite_index == spr_player_levelcomplete || sprite_index == spr_playerN_victory))
        state = 0;
    
    if (key_jump && sprite_index == spr_player_phoneidle)
    {
        global.panic = 1;
        sprite_index = spr_bossintro;
        image_index = 0;
        
        with (instance_create(x, y, obj_debris))
        {
            image_index = 0;
            sprite_index = spr_phonedebris;
        }
    }
    
    image_speed = 0.35;
}