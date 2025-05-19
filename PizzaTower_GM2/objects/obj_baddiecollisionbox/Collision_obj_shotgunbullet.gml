if (instance_exists(baddieID) && baddieID.hp <= 1)
{
    instance_destroy();
    instance_destroy(baddieID);
}
else if (instance_exists(baddieID))
{
    baddieID.hp -= 1;
    scr_soundeffect(sfx_hitenemy);
    scr_soundeffect(sfx_machpunch);
    global.hit += 1;
    global.combotime = 60;
    instance_create(baddieID.x, baddieID.y, obj_slapstar);
    instance_create(baddieID.x, baddieID.y, obj_baddiegibs);
    baddieID.flash = 1;
    baddieID.state = 104;
    
    if (baddieID.stunned < 100)
        baddieID.stunned = 100;
    
    instance_create(x, y, obj_bumpeffect);
    instance_create(baddieID.x, baddieID.y, obj_bangeffect);
    baddieID.vsp = -4;
    baddieID.hsp = obj_player1.xscale * 5;
}
