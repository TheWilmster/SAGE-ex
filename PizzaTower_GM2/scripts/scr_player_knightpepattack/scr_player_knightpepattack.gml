function scr_player_knightpepattack() {
    alarm[5] = 2;
    alarm[7] = 60;
    hurted = 1;
    
    if (instance_exists(obj_swordhitbox))
    {
        if (obj_swordhitbox.bumpeffect == 0)
            hsp = xscale * movespeed;
        else
            hsp = -xscale * movespeed;
    }
    
    if (movespeed >= 0)
        movespeed -= 0.2;
    
    if (floor(image_index) == (image_number - 1))
    {
        image_index = 0;
        sprite_index = spr_knightpep_idle;
        state = 23;
    }
    
    image_speed = 0.35;
}