if (room == rank_room || room == timesuproom)
    visible = false;

if (obj_player.state == 52)
    visible = false;

if (sprite_index == spr_toppincheese_intro && floor(image_index) == (image_number - 1))
    sprite_index = spr_pizzakincheese;

if (global.cheesefollow == 1 && sprite_index != spr_toppincheese_intro)
{
    image_alpha = obj_player.image_alpha;
    
    if (obj_player.hsp != 0)
        sprite_index = spr_pizzakincheese_run;
    else
        sprite_index = spr_pizzakincheese;
    
    depth = -6;
    
    if (global.shroomfollow == 1)
    {
        ds_queue_enqueue(followQueue, obj_pizzakinshroom.x + (image_xscale * 4));
        ds_queue_enqueue(followQueue, obj_pizzakinshroom.y - 2);
    }
    else
    {
        ds_queue_enqueue(followQueue, obj_player.x);
        ds_queue_enqueue(followQueue, obj_player.y);
    }
    
    LAG_STEPS = 10;
    
    if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
    {
        x = ds_queue_dequeue(followQueue) - (image_xscale * 4);
        y = ds_queue_dequeue(followQueue) + 2;
    }
    
    image_xscale = obj_player.xscale;
}

if (global.playerhealth == 1 && global.cheesefollow == 1)
    sprite_index = spr_pizzakincheese_panic;
