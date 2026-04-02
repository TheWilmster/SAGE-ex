with (other.id)
{
    if (state != 6 && hurted == 0)
    {
        hsp = 0;
        movespeed = 0;
        state = 6;
        hurted = 1;
        image_index = 0;
        sprite_index = spr_player_firemouthintro;
        state = 6;
        bombpeptimer = 3;
        instance_destroy(other.id);
    }
}
