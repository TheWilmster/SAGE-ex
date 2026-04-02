if (object_index != obj_pizzaball)
{
    with (other.id)
    {
        if (instance_exists(baddieID) && baddieID != other.id)
        {
            if (baddieID.state == 104 && baddieID.thrown == 1)
            {
                instance_destroy();
                instance_destroy(baddieID);
                instance_destroy(other.id);
                instance_destroy(other.baddieID);
            }
        }
    }
}
