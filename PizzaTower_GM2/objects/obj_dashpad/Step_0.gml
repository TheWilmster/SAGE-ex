if (global.panic == 1 && turned == 0)
{
    image_xscale *= -1;
    turned = 1;
}

scr_collide();
