switch (state)
{
    case 92:
        scr_enemy_idle();
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
    
    case 107:
        scr_enemy_grabbed();
        break;
}

if (!instance_exists(obj_slaphitbox))
    slapped = 0;

stunned = 100;

if (cigar == 0)
{
    landspr = spr_noisesatellite;
    idlespr = spr_noisesatellite;
    fallspr = spr_noisesatellite;
    hitceillingspr = 32;
    stunfalltransspr = 32;
    hitwallspr = 32;
    stunfallspr = spr_noisesatellitestun;
    rollingspr = 32;
    walkspr = spr_noisesatellite;
    turnspr = spr_noisesatellite;
    flyingspr = 32;
    hitspr = 32;
    stunlandspr = 32;
    stunspr = spr_noisesatellite;
    recoveryspr = spr_noisesatellite;
    stompedspr = 32;
    grabbedspr = spr_noisesatellitestun;
}

if (state != 107)
    depth = 0;

if (state != 104)
    thrown = 0;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;
