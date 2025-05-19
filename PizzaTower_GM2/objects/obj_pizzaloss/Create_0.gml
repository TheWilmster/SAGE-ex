sprite_index = choose(spr_shroomcollect, spr_cheesecollect, spr_tomatocollect, spr_sausagecollect, spr_pineapplecollect);
grav = 0.5;
hsp = random_range(-10, 10);
vsp = random_range(-5, 0);

if (obj_player.character == "S")
    sprite_index = spr_snickcollectible1;
