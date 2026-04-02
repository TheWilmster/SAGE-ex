with (other.id)
{
    if (state != 3 && other.dead == 0)
    {
        instance_create(x, y, obj_bangeffect);
        
        repeat (6)
            instance_create(x, y, obj_slapstar);
        
        state = 3;
        vsp = -10;
    }
}
