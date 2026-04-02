with (obj_player)
{
    if (key_up && ladderbuffer == 0 && (state == 0 || state == 69 || state == 89 || state == 68 || state == 29 || state == 57 || state == 31) && state != 72 && state != 70 && state != 73 && state != 76)
    {
        mach2 = 0;
        state = 58;
        x = other.x + 16;
        y = floor(y);
        
        if ((y % 2) == 1)
            y -= 1;
    }
}
