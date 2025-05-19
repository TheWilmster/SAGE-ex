if (instance_exists(ID))
{
    x = ID.x;
    
    if (ID.object_index == obj_bigcheese || ID.object_index == obj_noisecrusher)
        y = ID.y - 60;
    else
        y = ID.y - 40;
    
    if (ID.state != 104 || ID.stunned < 100)
    {
        ID.birdcreated = 0;
        instance_destroy();
    }
}
