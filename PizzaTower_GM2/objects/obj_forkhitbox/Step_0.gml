if (!instance_exists(ID))
    instance_destroy();

if (instance_exists(ID))
{
    x = ID.x;
    y = ID.y;
    image_xscale = ID.image_xscale;
    image_index = ID.image_index;
    
    with (ID)
    {
        if (object_index == obj_forknight || object_index == obj_indiancheese || object_index == obj_noisey)
        {
            if (state != 100)
            {
                hitboxcreate = 0;
                instance_destroy(other.id);
            }
        }
        
        if (object_index == obj_boulder)
        {
            if (hitwall == 0)
                instance_destroy(other.id);
        }
        
        if (object_index == obj_snickexe)
        {
            if (obj_player1.instakillmove == 1 || obj_player1.state == 21)
            {
                instance_destroy(other.id);
                hitboxcreate = 0;
            }
        }
        
        if (object_index == obj_noisecrusher)
        {
            if (state != 93)
            {
                hitboxcreate = 0;
                instance_destroy(other.id);
            }
        }
        
        if (object_index == obj_peasanto || object_index == obj_fencer || object_index == obj_ninja || object_index == obj_pizzice || object_index == obj_ancho)
        {
            if (state != 94)
            {
                hitboxcreate = 0;
                instance_destroy(other.id);
            }
        }
    }
}
