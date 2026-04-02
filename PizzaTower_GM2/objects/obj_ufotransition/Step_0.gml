if (touch == 0)
{
    y += 2;
}
else
{
    obj_player.sprite_index = spr_player_ufotransition;
    obj_player.image_speed = 0.35;
    y -= 2;
    touch = 1;
}

if (touch == 1)
    obj_player.y = y + 30;

if (place_meeting(x, y, obj_player))
    touch = 1;
