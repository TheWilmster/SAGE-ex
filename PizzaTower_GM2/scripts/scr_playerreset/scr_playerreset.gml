function scr_playerreset() {
    if (instance_exists(obj_endlevelfade))
        instance_destroy(obj_endlevelfade);
    
    global.timeractive = 0;
    global.wave = 0;
    global.maxwave = 0;
    global.secretfound = 0;
    global.hurtcounter = 0;
    global.snickchallenge = 0;
    
    if (instance_exists(obj_snickexe))
        instance_destroy(obj_snickexe);
    
    with (obj_tv)
    {
        shownranka = false;
        shownrankb = false;
        shownrankc = false;
    }
    
    global.SAGEshotgunsnicknumber = 0;
    obj_music.fadeoff = 0;
    audio_stop_all();
    
    if (instance_exists(obj_timesup))
        instance_destroy(obj_timesup);
    
    global.seconds = 59;
    global.minutes = 1;
    obj_player.state = 0;
    obj_player.visible = true;
    ds_list_clear(global.saveroom);
    ds_list_clear(global.baddieroom);
    
    with (obj_player1)
    {
        alarm[0] = -1;
        alarm[1] = -1;
        alarm[3] = -1;
        alarm[4] = -1;
        alarm[5] = -1;
        alarm[6] = -1;
        alarm[7] = -1;
        alarm[8] = -1;
        alarm[9] = -1;
        alarm[10] = -1;
        grav = 0.5;
        hsp = 0;
        vsp = 0;
        global.playerhealth = 5;
        xscale = 1;
        yscale = 1;
        x = backtohubstartx;
        y = backtohubstarty;
        backupweapon = 0;
        shotgunAnim = 0;
        box = false;
        steppy = false;
        movespeedmax = 5;
        jumpstop = false;
        start_running = true;
        obj_camera.ded = false;
        visible = true;
        global.panic = false;
        turn = false;
        jumpAnim = true;
        dashAnim = true;
        landAnim = false
        machslideAnim = false;
        moveAnim = true;
        stopAnim = true;
        crouchslideAnim = true;
        crouchAnim = true;
        machhitAnim = false;
        stompAnim = false;
        inv_frames = false;
        turning = false;
        hurtbounce = false;
        hurted = false;
        autodash = false;
        mach2 = 0;
        input_buffer_jump = 8;
        input_buffer_secondjump = 8;
        input_buffer_highjump = 8;
        flash = false;
        global.key_inv = false;
        global.shroomfollow = false;
        global.cheesefollow = false;
        global.tomatofollow = false;
        global.sausagefollow = false;
        global.pineapplefollow = false;
        global.keyget = false;
        global.collect = 0;
        global.ammo = 0;
        global.treasure = trie;
        global.combo = 0;
        global.combotime = 0;
        global.pizzacoin = 0;
        global.toppintotal = 1;
        global.hit = 0;
        ini_open("saveData.ini");
        global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0);
        global.SAGEshotgunsnicknumber = 0;
        global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0);
        global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0);
        global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0);
        global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0);
        global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0);
        global.SAGEknight = ini_read_string("SAGE2019", "knight", 0);
        global.SAGEknighttaken = 0;
        global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0);
        global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0);
        ini_close();
        in_water = false;
        key_particles = false
        barrel = false;
        bounce = false;
        a = false;
        idle = false;
        attacking = false
        slamming = false
        superslam = false
        machpunchAnim = false;
        punch = false;
        machfreefall = false;
        shoot = true;
        instakillmove = false;
        windingAnim = false;
        facestompAnim = false;
        ladderbuffer = false;
        chainsaw = 50;
        toomuchalarm1 = false;
        toomuchalarm2 = false;
        dashdust = false;
        throwforce = false;
        hurtsound = false;
        idleanim = false;
        momemtum = false;
        cutscene = false;
        grabbing = false;
        dir = xscale;
        goingdownslope = false;
        goingupslope = false;
        fallinganimation = false;
        bombpeptimer = 100;
        slapbuffer = 0;
        slaphand = true;
        suplexmove = false;
        suplexhavetomash = false;
        timeuntilhpback = 300;
        anger = 0;
        angry = false;
    }
}