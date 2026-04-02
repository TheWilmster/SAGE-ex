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

if (state == 104 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1;
    
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

if (state != 104)
    birdcreated = 0;

if (hp <= 0)
    instance_destroy();

if (cigar == 1)
{
    landspr = spr_sausageman_land;
    idlespr = spr_sausageman_idle;
    fallspr = spr_sausageman_fall;
    hitceillingspr = 132;
    stunfalltransspr = 130;
    hitwallspr = 124;
    stunfallspr = spr_sausageman_stunfall;
    rollingspr = 118;
    walkspr = spr_sausageman_walk;
    turnspr = spr_sausageman_turn;
    flyingspr = 134;
    hitspr = 136;
    stunlandspr = 122;
    stunspr = spr_sausageman_stun;
    recoveryspr = spr_sausageman_recovery;
    stompedspr = 126;
    grabbedspr = spr_sausageman_grabbed;
}

if (cigar == 0)
{
    landspr = spr_sausagemannocigar_land;
    idlespr = spr_sausagemannocigar_idle;
    fallspr = spr_sausagemannocigar_fall;
    hitceillingspr = 131;
    stunfalltransspr = 129;
    hitwallspr = 123;
    stunfallspr = spr_sausagemannocigar_stunfall;
    rollingspr = 117;
    walkspr = spr_sausagemannocigar_walk;
    turnspr = spr_sausagemannocigar_turn;
    flyingspr = 133;
    hitspr = 135;
    stunlandspr = 121;
    stunspr = spr_sausagemannocigar_stun;
    recoveryspr = spr_sausagemannocigar_recovery;
    stompedspr = 125;
    grabbedspr = spr_sausagemannocigar_grabbed;
}

if (cigar == 1 && cigarcreate == 0 && (state == 92 || state == 100 || state == 96 || state == 102))
{
    cigarcreate = 1;
    
    with (instance_create(x, y, obj_sausagemancigar))
        ID = other.id;
}

if (state != 107)
    depth = 0;

if (state != 104)
    thrown = 0;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;
