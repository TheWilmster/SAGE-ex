with (other.id)
{
    if (instance_exists(other.baddieID) && state != 1 && state != 23 && state != 17)
    {
        state = 1;
        xscale = other.baddieID.image_xscale;
        movespeed = 14;
        vsp = 0;
        sprite_index = spr_tumble;
    }
}
