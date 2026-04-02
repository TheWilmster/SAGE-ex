xDist = obj_player.x - obj_hookshot.x;
yDist = (obj_player.y + 10) - obj_hookshot.y;
chainWidth = sprite_get_width(spr_chain);
chainLength = abs(sqrt(sqr(xDist) + sqr(yDist)));
chainAngle = degtorad(point_direction(obj_player.x, obj_player.y + 10, obj_hookshot.x, obj_hookshot.y));

for (var i = 0; i < chainLength; i += chainWidth)
    draw_sprite_ext(spr_chain, 0, obj_player.x + (cos(chainAngle) * i) + (cos(chainAngle) * (chainWidth / 2)), ((obj_player.y + 10) - (sin(chainAngle) * i)) + (sin(chainAngle) * (chainWidth / 2)), 1, 1, radtodeg(chainAngle), c_white, 1);

draw_self();
