image_speed = 0;
obj_player.visible = true;
obj_camera.visible = true;
obj_player.state = 60;

if (instance_exists(obj_pizzakinshroom))
    obj_pizzakinshroom.visible = true;

if (instance_exists(obj_pizzakincheese))
    obj_pizzakincheese.visible = true;

if (instance_exists(obj_pizzakintomato))
    obj_pizzakintomato.visible = true;

if (instance_exists(obj_pizzakinsausage))
    obj_pizzakinsausage.visible = true;

if (instance_exists(obj_pizzakinpineapple))
    obj_pizzakinpineapple.visible = true;

if (global.progress == "entrance")
    obj_player1.targetRoom = medieval_1;

if (global.progress == "medieval")
    obj_player1.targetRoom = ruin_1;

if (global.progress == "ruin")
    obj_player1.targetRoom = dungeon_1;

if (global.progress == "dungeon")
    obj_player1.targetRoom = hub_room1;

if (!instance_exists(obj_fadeout))
    instance_create(x, y, obj_fadeout);
