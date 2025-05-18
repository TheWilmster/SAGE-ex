if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
    global.secretfound += 1;
    
    with (obj_tv)
    {
        message = "YOU HAVE FOUND " + string(global.secretfound) + " SECRET OUT OF 6";
        showtext = 1;
        alarm[0] = 150;
    }
    
    scr_soundeffect(9);
    ds_list_add(global.saveroom, id);
}
