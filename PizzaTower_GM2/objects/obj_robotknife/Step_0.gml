repeat (abs(vsp))
{
    if (!place_meeting(x, y + sign(vsp), obj_null))
    {
        y += sign(vsp);
    }
    else
    {
        vsp = 0;
        break;
    }
}

repeat (abs(hsp))
{
    if (place_meeting(x + sign(hsp), y, obj_null) && place_meeting(x + sign(hsp), y - 1, obj_null) && !place_meeting(x + sign(hsp), y - 2, obj_null))
        y -= 2;
    else if (place_meeting(x + sign(hsp), y, obj_null) && !place_meeting(x + sign(hsp), y - 1, obj_null))
        y--;
    
    if (!place_meeting(x + sign(hsp), y, obj_null))
    {
        x += sign(hsp);
    }
    else
    {
        hsp = 0;
        break;
    }
}

if (vsp < 20)
    vsp += grav;
