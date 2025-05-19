function scr_player_chainsaw() {
    landAnim = 0;
    hsp = xscale * movespeed;
    
    if (movespeed > 0)
        movespeed -= 0.2;
    
    if (floor(image_index) == (image_number - 1) && 412)
        sprite_index = spr_player_chainsawend;
    
    if ((sprite_index == spr_player_chainsawend || sprite_index == spr_player_chainsawend) && !key_shoot)
    {
        image_index = 0;
        state = 0;
    }
    
    if (scr_solid(x + xscale, y))
    {
        image_index = 0;
        instance_create(x + (xscale * 10), y + 10, obj_bumpeffect);
        hsp = -xscale * 5;
        vsp = -3;
        state = 20;
    }
    
    image_speed = 0.5;
}