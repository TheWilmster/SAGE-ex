grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 1;
state = 92;
stunned = 0;
alarm[0] = 150;
roaming = 1;
collectdrop = 5;
flying = 0;
straightthrow = 0;
cigar = 0;
cigarcreate = 0;
stomped = 0;
shot = 0;
thrown = 0;
reset = 0;
hp = 2;
hitboxcreate = 0;
grounded = 1;

with (instance_create(x, y, obj_highjumpcloud1))
    sprite_index = spr_baddiespawn;

idlespr = spr_noisey_walk;
stunfallspr = spr_noisey_stun;
walkspr = spr_noisey_walk;
grabbedspr = spr_noisey_stun;
image_xscale = -1;
flash = 0;
slapped = 0;
birdcreated = 0;
boundbox = 0;
