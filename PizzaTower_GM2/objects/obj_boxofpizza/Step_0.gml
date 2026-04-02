with (obj_player)
{
    if (other.image_yscale == 1)
    {
        if (((key_down && !place_meeting(x, y + 1, obj_destructibles) && place_meeting(x, y + 1, other.id) && ((state == 65 || character == "S") || state == 36)) || ((state == 67 || state == 73 || state == 76) && !place_meeting(x, y + 1, obj_destructibles) && place_meeting(x, y + 1, other.id))) && !instance_exists(obj_fadeout) && state != 77 && state != 60)
        {
            other.depth = -10;
            scr_soundeffect(sfx_box);
            obj_player1.box = 1;
            mach2 = 0;
            obj_camera.chargecamera = 0;
            x = other.x;
            obj_player1.targetDoor = other.targetDoor;
            obj_player1.targetRoom = other.targetRoom;
            
            if (instance_exists(obj_player2))
            {
                obj_player2.targetDoor = other.targetDoor;
                obj_player2.targetRoom = other.targetRoom;
            }
            
            sprite_index = spr_downpizzabox;
            image_index = 0;
            state = 77;
        }
    }
    
    if (other.image_yscale == -1)
    {
        if (((key_up && !place_meeting(x, y - 1, obj_destructibles) && place_meeting(x, y - 1, other.id) && (state == 0 || state == 57 || state == 68 || state == 69 || state == 89 || state == 64)) || ((state == 62 || state == 91) && !place_meeting(x, y - 1, obj_destructibles) && place_meeting(x, y - 1, other.id))) && !instance_exists(obj_fadeout) && state != 77 && state != 60)
        {
            scr_soundeffect(sfx_box);
            other.depth = -10;
            obj_player1.box = 1;
            other.depth = -8;
            mach2 = 0;
            obj_camera.chargecamera = 0;
            x = other.x;
            obj_player1.targetDoor = other.targetDoor;
            obj_player1.targetRoom = other.targetRoom;
            
            if (instance_exists(obj_player2))
            {
                obj_player2.targetDoor = other.targetDoor;
                obj_player2.targetRoom = other.targetRoom;
            }
            
            sprite_index = spr_uppizzabox;
            image_index = 0;
            state = 77;
        }
    }
}

if (place_meeting(x, y + 1, obj_doorA) || place_meeting(x, y - 1, obj_doorA))
    targetDoor = "A";

if (place_meeting(x, y + 1, obj_doorB) || place_meeting(x, y - 1, obj_doorB))
    targetDoor = "B";

if (place_meeting(x, y + 1, obj_doorC) || place_meeting(x, y - 1, obj_doorC))
    targetDoor = "C";

if (place_meeting(x, y + 1, obj_doorD) || place_meeting(x, y - 1, obj_doorD))
    targetDoor = "D";

if (place_meeting(x, y + 1, obj_doorE) || place_meeting(x, y - 1, obj_doorE))
    targetDoor = "E";
