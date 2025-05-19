switch (state)
{
    case 92:
        scr_enemy_idle();
        break;
    
    case 94:
        scr_enemy_charge();
        break;
    
    case 96:
        scr_enemy_turn();
        break;
    
    case 100:
        scr_enemy_walk();
        break;
    
    case 102:
        scr_enemy_land();
        break;
    
    case 103:
        scr_enemy_hit();
        break;
    
    case 104:
        scr_enemy_stun();
        break;
    
    case 95:
        scr_pizzagoblin_throw();
        break;
    
    case 107:
        scr_enemy_grabbed();
        break;
}

if (state == 104 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1;
    
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

if (state != 104)
    birdcreated = 0;

idlespr = spr_cheeserobot_idle;
stunfallspr = spr_cheeserobot_stun;
walkspr = spr_cheeserobot_walk;
stunspr = spr_cheeserobot_stun;
grabbedspr = spr_cheeserobot_stun;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (hp <= 0)
    instance_destroy();

if (state != 107)
    depth = 0;

if (state != 104)
    thrown = 0;

if (bombreset > 0)
    bombreset--;

if (x != obj_player.x && state != 95 && bombreset == 0)
{
    if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 20) && y >= (obj_player.y - 20)))
    {
        if (state == 100 || state == 92)
        {
            scr_sound(sound_enemythrow);
            image_index = 0;
            image_xscale = -sign(x - obj_player.x);
            state = 95;
        }
    }
}
