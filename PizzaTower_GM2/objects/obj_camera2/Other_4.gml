x = obj_player2.x;
y = obj_player2.y;

with (obj_camera2)
{
    shake_mag = 0;
    shake_mag_acc = 0;
}

if (global.panic == 1 && global.panicbg)
    scr_panicbg_init();

application_surface_draw_enable(true);
global.wave = global.maxwave - (((global.minutes * 60) + global.seconds) * 60);
