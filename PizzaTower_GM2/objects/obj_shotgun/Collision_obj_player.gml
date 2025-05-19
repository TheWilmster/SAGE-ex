if (obj_player.shotgunAnim == 0 && obj_player.backupweapon == 0 && obj_player.state == 21)
{
    obj_player.shotgunAnim = 1;
    obj_player.state = 37;
    obj_player.image_index = 0;
    obj_player.sprite_index = spr_shotgun_pullout;
    global.gotshotgun = 1;
    scr_soundeffect(sfx_collectgiantpizza4);
    instance_destroy();
}
else if (obj_player.shotgunAnim == 1 && obj_player.backupweapon == 0 && obj_player.state == 21)
{
    obj_player.backupweapon = 1;
    instance_destroy();
}
