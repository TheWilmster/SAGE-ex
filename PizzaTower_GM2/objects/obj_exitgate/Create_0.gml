image_speed = 0;
hurtpoints = 0;
timepoints = 0;
escapetimepoints = 0;
treasurepoints = 0;
lastbesttimeminutes = 99;
lastbesthurt = 99;
lastbesttimeseconds = 99;
image_index = 1;
depth = 2;
endgate = 0;
roomname = room_get_name(room);
global.progress = string_letters(roomname);

if (obj_player.character == "S")
    instance_destroy();
