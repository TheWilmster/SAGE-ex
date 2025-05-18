function scr_enemy_stun() {
    if (object_index == obj_ninja)
        attack = 1;
    
    stunned--;
    sprite_index = stunfallspr;
    image_speed = 0.35;
    
    if ((grounded || (grounded && !place_meeting(x, y, obj_platform))) && vsp > 0)
    {
        if (thrown == 1 && hp <= 0)
            instance_destroy();
        
        thrown = 0;
        grav = 0.5;
        hsp = 0;
    }
    
    if (place_meeting(x, y + 1, obj_railh))
        hsp = -5;
    else if (place_meeting(x, y + 1, obj_railh2))
        hsp = 5;
    
    if (place_meeting(x - image_xscale, y, obj_solid) && !place_meeting(x - image_xscale, y, obj_destructibles))
    {
        with (instance_create(x, y, obj_bulletimpact))
            image_xscale = -other.image_xscale;
        
        if (thrown == 1)
            instance_destroy();
        
        thrown = 0;
        grav = 0.5;
        image_xscale *= -1;
        hsp = -image_xscale * 4;
    }
    
    if (floor(image_index) == (image_number - 1) && stunned < 0)
    {
        if (object_index != obj_ancho && object_index != obj_pizzaboy)
            vsp = -4;
        else
            vsp = 0;
        
        image_index = 0;
        sprite_index = walkspr;
        state = 100;
        movespeed = 1;
    }
}