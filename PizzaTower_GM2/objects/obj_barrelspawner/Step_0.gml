if (!place_meeting(x, y, obj_barrel) && !instance_exists(obj_barrel) && !point_in_rectangle(x, y, __view_get(0, 0) - 50, __view_get(1, 0), __view_get(0, 0) + __view_get(2, 0) + 50, __view_get(1, 0) + __view_get(3, 0)) && !instance_exists(obj_barrelfloat))
    instance_create(x, y, obj_barrel);
