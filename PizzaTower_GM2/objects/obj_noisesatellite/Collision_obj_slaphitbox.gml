if (state == 104 && hp == 0 && stunned > 40 && slapped == 0)
{
    slapped = 1;
    instance_create(x + (obj_player.xscale * 40), y, obj_punchdust);
    state = 107;
    obj_player.state = 45;
    instance_destroy(other.id);
}

if (hp == 0 && !(state == 104 && stunned > 40) && state != 107 && slapped == 0)
{
    scr_sound(sound_slaphit);
    instance_create(x, y, obj_spikehurteffect);
    other.image_xscale = image_xscale;
    slapped = 1;
    flash = 1;
    instance_create(x, y, obj_bumpeffect);
    stunned = 200;
    
    if (other.x != x)
        image_xscale = -sign(x - other.x);
    
    vsp = -5;
    hsp = -image_xscale * 3;
    state = 104;
}
else if (state != 107 && slapped == 0)
{
    scr_sound(sound_slaphit);
    
    if (hp > 0)
        hp -= 1;
    
    if (slapped == 0)
        instance_create(x, y, obj_slapstar);
    
    with (instance_create(x, y, obj_spikehurteffect))
        other.image_xscale = image_xscale;
    
    slapped = 1;
    state = 104;
    stunned = 40;
    
    if (other.x != x)
        image_xscale = -sign(x - other.x);
    
    vsp = -3;
    hsp = -image_xscale * 2;
}
