with (obj_player)
{
    treasure_x = x;
    treasure_y = y;
    treasure_room = room;
    
    if (grounded)
    {
        ds_list_add(global.saveroom, other.id);
        global.treasure = 1;
        hsp = 0;
        vsp = 0;
        
        if (other.sprite_index == other.spridle)
            other.alarm[0] = 150;
        
        if (other.sprite_index == other.spridle)
        {
            state = 22;
            scr_soundeffect(sfx_secretfound);
        }
        
        other.sprite_index = other.sprgot;
        other.x = obj_player.x;
        other.y = obj_player.y - 35;
        obj_tv.showtext = 1;
        obj_tv.message = "YOU GOT A TOWER SECRET TREASURE!!!";
        obj_tv.alarm[0] = 30;
        ini_close();
    }
}
