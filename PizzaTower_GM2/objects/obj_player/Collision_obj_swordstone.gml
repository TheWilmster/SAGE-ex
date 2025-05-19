if (grounded && other.sprite_index == spr_swordstone && state == 21 && character == "P")
{
    scr_soundeffect(sfx_knightsword);
    global.SAGEknighttaken = 1;
    momentum = 0;
    movespeed = 0;
    other.image_index = 1;
    image_index = 0;
    image_speed = 0.35;
    sprite_index = spr_knightpep_start;
    state = 23;
    hsp = 0;
}
