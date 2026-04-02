if (state != 107)
{
    with (obj_player)
    {
        if (y < other.y && attacking == 0 && state == 57 && vsp > 0)
        {
            scr_sound(sound_stomp);
            
            if (vsp > 0)
            {
                other.hp = 0;
                other.stunned = 200;
                
                if (x != other.x)
                    other.image_xscale = -sign(other.x - x);
                
                image_index = 0;
                
                if (key_jump2)
                {
                    other.vsp = -5;
                    other.hsp = -other.image_xscale * 3;
                    instance_create(x, y + 50, obj_stompeffect);
                    other.state = 104;
                    stompAnim = 1;
                    other.image_index = 0;
                    vsp = -14;
                    sprite_index = spr_player_stompprep;
                }
                else
                {
                    other.vsp = -5;
                    other.hsp = -other.image_xscale * 3;
                    instance_create(x, y + 50, obj_stompeffect);
                    other.state = 104;
                    stompAnim = 1;
                    other.image_index = 0;
                    vsp = -9;
                    sprite_index = spr_player_stompprep;
                }
            }
        }
        
        if (state == 68)
        {
            scr_sound(sound_tackleenemy);
            instance_create(x, y, obj_bumpeffect);
            other.stunned = 40;
            
            if (x != other.x)
                other.image_xscale = -sign(other.x - x);
            
            other.vsp = -5;
            other.hsp = -other.image_xscale * 3;
            hsp = -xscale * 4;
            vsp = -4;
            machpunchAnim = 1;
            
            if (x != other.x)
                other.image_xscale = -sign(other.x - x);
            
            other.state = 104;
            image_index = 0;
            state = 56;
        }
        
        if (state == 69 && other.grounded == 1)
        {
            scr_sound(sound_tackleenemy);
            other.hp = 0;
            instance_create(x, y, obj_bumpeffect);
            other.vsp = -10;
            other.hsp = xscale;
            other.image_index = 0;
            other.stunned = 200;
            other.state = 104;
            machpunchAnim = 1;
            
            if (!scr_solid(x, y + 1) && state != 73)
                vsp = -10;
        }
        
        if (attacking == 1 && state != 69)
        {
            if (state == 89)
                other.shot = 1;
            
            image_index = 0;
            instance_destroy(other.id);
            machpunchAnim = 1;
            
            if (!scr_solid(x, y + 1) && state != 73)
                vsp = -10;
        }
        
        if (attacking == 0 && (state != 56 && state != 72) && !(y < other.y) && grabbing == 0 && other.state != 104)
        {
            if (x != other.x)
            {
                other.image_xscale = -sign(other.x - x);
                xscale = -sign(x - other.x);
            }
            
            hsp = -xscale * 4;
            vsp = -4;
            other.image_xscale = -xscale;
            other.hsp = -other.image_xscale * 4;
            other.vsp = -4;
            
            if (other.state == 100 || other.state == 96)
                other.state = 92;
            
            image_index = 0;
            state = 71;
            
            if (other.state == 102)
                other.state = 92;
        }
    }
}
