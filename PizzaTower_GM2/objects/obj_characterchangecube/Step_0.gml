if (place_meeting(x, y + 1, obj_player) && activated == 0)
{
    with (obj_player1)
    {
        if (character == "P" && other.activated == 0)
        {
            y += 50;
            other.image_index = 1;
            character = "S";
            other.activated = 1;
            vsp = 1;
            other.alarm[0] = 50;
            scr_characterspr();
            taunttimer = 20;
            tauntstoredmovespeed = 0;
            tauntstoredsprite = spr_fall;
            tauntstoredstate = 57;
            scr_soundeffect(sfx_taunt);
            state = 50;
            image_index = random_range(0, sprite_get_number(spr_taunt) - 1);
            sprite_index = spr_taunt;
            instance_create(x, y, obj_taunteffect);
        }
        
        if (character == "S" && other.activated == 0)
        {
            y += 50;
            other.image_index = 0;
            character = "P";
            other.activated = 1;
            vsp = 1;
            other.alarm[0] = 50;
            scr_characterspr();
            taunttimer = 20;
            tauntstoredmovespeed = 0;
            tauntstoredsprite = spr_fall;
            tauntstoredstate = 57;
            scr_soundeffect(sfx_taunt);
            state = 50;
            image_index = random_range(0, sprite_get_number(spr_taunt) - 1);
            sprite_index = spr_taunt;
            instance_create(x, y, obj_taunteffect);
        }
    }
}
