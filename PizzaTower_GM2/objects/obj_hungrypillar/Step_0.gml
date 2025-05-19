with (obj_player)
{
    if (place_meeting(x + hsp, y, other.id) && state == 21 && other.hp != 0)
    {
        instance_create(other.x, other.y, obj_bangeffect);
        instance_create(other.x, other.y, obj_slapstar);
        instance_create(other.x, other.y, obj_baddiegibs);
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
        
        scr_soundeffect(sfx_hitenemy);
        other.sprite_index = spr_hungrypillar_angry;
        other.hp -= 1;
        movespeed = 3;
        image_index = 0;
        state = 56;
        sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4, spr_player_suplexmash5, spr_player_suplexmash6, spr_player_suplexmash7);
    }
    
    if (place_meeting(x + hsp, y, other.id) && state == 21 && other.hp <= 0)
    {
        state = 2;
        sprite_index = choose(spr_player_finishingblow1, spr_player_finishingblow2, spr_player_finishingblow3, spr_player_finishingblow4, spr_player_finishingblow5);
        image_index = 0;
        hsp = 0;
        movespeed = 0;
    }
    
    if (place_meeting(x + hsp, y, other.id) && instakillmove == 1)
        instance_destroy(other.id);
}

if (place_meeting(x, y, obj_swordhitbox))
    instance_destroy();
