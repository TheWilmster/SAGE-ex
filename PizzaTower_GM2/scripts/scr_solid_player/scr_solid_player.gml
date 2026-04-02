function scr_solid_player(_x, _y) {
    var old_x = x;
    var old_y = y;
    x = _x;
    y = _y;
    
    if (place_meeting(x, y, obj_solid))
    {
        x = old_x;
        y = old_y;
        return true;
    }
    
    if (y > old_y && (bbox_bottom % 16) == 0 && !place_meeting(x, old_y, obj_platform) && place_meeting(x, y, obj_platform))
    {
        if (state != 58)
        {
            x = old_x;
            y = old_y;
            return true;
        }
    }
    
    if (y > old_y && (bbox_bottom % 16) == 0 && !place_meeting(x, old_y, obj_grindrail) && place_meeting(x, y, obj_grindrail))
    {
        if (state == 69 || state == 44)
        {
            x = old_x;
            y = old_y;
            return true;
        }
    }
    
    var slope = instance_place(x, y, obj_slope);
    
    if (slope)
    {
        with (slope)
        {
            var object_side = 0;
            var slope_start = 0;
            var slope_end = 0;
            
            if (image_xscale > 0)
            {
                object_side = other.bbox_right;
                slope_start = bbox_bottom;
                slope_end = bbox_top;
            }
            else
            {
                object_side = other.bbox_left;
                slope_start = bbox_top;
                slope_end = bbox_bottom;
            }
            
            var m = (sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left);
            slope = slope_start - round(m * (object_side - bbox_left));
            
            if (other.bbox_bottom >= slope)
            {
                other.x = old_x;
                other.y = old_y;
                return true;
            }
        }
    }
    
    x = old_x;
    y = old_y;
    return false;
}