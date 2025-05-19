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

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (state != 107)
    depth = 0;

if (state != 104)
    thrown = 0;

if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index;
        mask_index = other.sprite_index;
        baddieID = other.id;
        other.boundbox = 1;
    }
}
