if (sprite_index == spr_noisedynamiteexplode && floor(image_index) == (image_number - 1))
    instance_destroy();

if (global.panic == 0)
    visible = false;
else
    visible = true;
