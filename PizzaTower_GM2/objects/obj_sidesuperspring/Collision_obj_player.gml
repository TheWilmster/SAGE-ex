with (obj_player)
{
    other.image_speed = 0.35;
    
    if (xscale != other.image_xscale)
        xscale = other.image_xscale;
    
    if (movespeed < 10)
        movespeed = 10;
}
