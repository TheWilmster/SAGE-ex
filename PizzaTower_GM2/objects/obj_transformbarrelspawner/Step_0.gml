if (!place_meeting(x, y, obj_transformbarrel) && !instance_exists(obj_transformbarrel) && !point_in_rectangle(x, y, __view_get(0, 0) - 50, __view_get(1, 0), __view_get(0, 0) + __view_get(2, 0) + 50, __view_get(1, 0) + __view_get(3, 0)) && obj_player.barrel == 0 && !instance_exists(obj_barrelfloat))
    instance_create(x, y, obj_transformbarrel);
