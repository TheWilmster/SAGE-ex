if (!instance_exists(baddieid))
    refresh--;

if (refresh <= 0)
{
    image_speed = 0.35;
    
    if (floor(image_index) == 5)
    {
        with (instance_create(x, y - 35, content))
        {
            vsp = -5;
            other.baddieid = id;
            important = 1;
        }
        
        refresh = 100;
    }
}
