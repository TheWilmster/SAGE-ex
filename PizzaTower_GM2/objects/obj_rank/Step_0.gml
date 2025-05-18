if (floor(image_index) == (image_number - 1))
    image_speed = 0;

if (obj_player.character == "P")
{
    if (global.rank == "s")
        sprite_index = spr_rankS;
    
    if (global.rank == "a")
        sprite_index = spr_rankA;
    
    if (global.rank == "b")
        sprite_index = spr_rankB;
    
    if (global.rank == "c")
        sprite_index = spr_rankC;
    
    if (global.rank == "d")
        sprite_index = spr_rankD;
}
else
{
    if (global.rank == "s")
        sprite_index = spr_rankNS;
    
    if (global.rank == "a")
        sprite_index = spr_rankNA;
    
    if (global.rank == "b")
        sprite_index = spr_rankNB;
    
    if (global.rank == "c")
        sprite_index = spr_rankNC;
    
    if (global.rank == "d")
        sprite_index = spr_rankND;
}
