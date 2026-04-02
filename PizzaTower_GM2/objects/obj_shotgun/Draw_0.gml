if (grounded && !place_meeting(x, y, obj_solid))
    draw_sprite(spr_grabicon, -1, x + 20, y - 30);

draw_self();
