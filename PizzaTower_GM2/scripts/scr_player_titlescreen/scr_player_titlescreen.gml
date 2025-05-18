function scr_player_titlescreen() {
    targetDoor = "A";
    
    if (sprite_index == spr_pepcooter && !instance_exists(obj_superdashcloud))
        instance_create(x - 100, y, obj_superdashcloud);
    
    image_speed = 0.35;
}