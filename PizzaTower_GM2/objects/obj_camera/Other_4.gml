x = obj_player1.x;
y = obj_player1.y;

with (obj_camera)
{
    shake_mag = 0;
    shake_mag_acc = 0;
}

if ((global.panic == 1 || global.snickchallenge == 1) && global.panicbg)
    scr_panicbg_init();

application_surface_draw_enable(true);
global.wave = global.maxwave - (((global.minutes * 60) + global.seconds) * 60);
