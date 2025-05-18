scr_getinput();

switch (state)
{
    case 0:
        scr_player_normal();
        break;
    
    case 2:
        scr_player_finishingblow();
        break;
    
    case 1:
        scr_player_tumble();
        break;
    
    case 7:
        scr_player_titlescreen();
        break;
    
    case 3:
        scr_player_ejected();
        break;
    
    case 6:
        scr_player_firemouth();
        break;
    
    case 5:
        scr_player_fireass();
        break;
    
    case 4:
        scr_player_transitioncutscene();
        break;
    
    case 8:
        scr_playerN_hookshot();
        break;
    
    case 11:
        scr_player_slap();
        break;
    
    case 9:
        scr_player_tacklecharge();
        break;
    
    case 12:
        scr_player_cheesepep();
        break;
    
    case 10:
        scr_player_cheeseball();
        break;
    
    case 13:
        scr_player_cheesepepstick();
        break;
    
    case 14:
        scr_player_boxxedpep();
        break;
    
    case 15:
        scr_player_pistolaim();
        break;
    
    case 16:
        scr_player_climbwall();
        break;
    
    case 17:
        scr_player_knightpepslopes();
        break;
    
    case 18:
        scr_player_portal();
        break;
    
    case 19:
        scr_player_secondjump();
        break;
    
    case 20:
        scr_player_chainsawbump();
        break;
    
    case 21:
        scr_player_handstandjump();
        break;
    
    case 22:
        scr_player_gottreasure();
        break;
    
    case 23:
        scr_player_knightpep();
        break;
    
    case 24:
        scr_player_knightpepattack();
        break;
    
    case 25:
        scr_player_meteorpep();
        break;
    
    case 26:
        scr_player_bombpep();
        break;
    
    case 27:
        scr_player_grabbing();
        break;
    
    case 28:
        scr_player_chainsawpogo();
        break;
    
    case 29:
        scr_player_shotgunjump();
        break;
    
    case 30:
        scr_player_stunned();
        break;
    
    case 31:
        scr_player_highjump();
        break;
    
    case 32:
        scr_player_chainsaw();
        break;
    
    case 33:
        scr_player_facestomp();
        break;
    
    case 35:
        scr_player_timesup();
        break;
    
    case 36:
        scr_player_machroll();
        break;
    
    case 38:
        scr_player_pistol();
        break;
    
    case 37:
        scr_player_shotgun();
        break;
    
    case 39:
        scr_player_machfreefall();
        break;
    
    case 40:
        scr_player_throw();
        break;
    
    case 42:
        scr_player_superslam();
        break;
    
    case 41:
        scr_player_slam();
        break;
    
    case 43:
        scr_player_skateboard();
        break;
    
    case 44:
        scr_player_grind();
        break;
    
    case 45:
        scr_player_grab();
        break;
    
    case 46:
        scr_player_punch();
        break;
    
    case 47:
        scr_player_backkick();
        break;
    
    case 48:
        scr_player_uppunch();
        break;
    
    case 49:
        scr_player_shoulder();
        break;
    
    case 50:
        scr_player_backbreaker();
        break;
    
    case 51:
        scr_player_bossdefeat();
        break;
    
    case 53:
        scr_player_bossintro();
        break;
    
    case 61:
        scr_player_smirk();
        break;
    
    case 52:
        scr_player_pizzathrow();
        break;
    
    case 54:
        scr_player_gameover();
        break;
    
    case 91:
        scr_player_Sjumpland();
        break;
    
    case 90:
        scr_player_freefallprep();
        break;
    
    case 88:
        scr_player_runonball();
        break;
    
    case 87:
        scr_player_boulder();
        break;
    
    case 55:
        scr_player_keyget();
        break;
    
    case 56:
        scr_player_tackle();
        break;
    
    case 59:
        scr_player_slipnslide();
        break;
    
    case 58:
        scr_player_ladder();
        break;
    
    case 57:
        scr_player_jump();
        break;
    
    case 63:
        scr_player_victory();
        break;
    
    case 60:
        scr_player_comingoutdoor();
        break;
    
    case 62:
        scr_player_Sjump();
        break;
    
    case 64:
        scr_player_Sjumpprep();
        break;
    
    case 65:
        scr_player_crouch();
        break;
    
    case 66:
        scr_player_crouchjump();
        break;
    
    case 67:
        scr_player_crouchslide();
        break;
    
    case 68:
        scr_player_mach1();
        break;
    
    case 69:
        scr_player_mach2();
        break;
    
    case 89:
        scr_player_mach3();
        break;
    
    case 70:
        scr_player_machslide();
        break;
    
    case 71:
        scr_player_bump();
        break;
    
    case 72:
        scr_player_hurt();
        break;
    
    case 73:
        scr_player_freefall();
        break;
    
    case 76:
        scr_player_freefallland();
        break;
    
    case 74:
        scr_player_hang();
        break;
    
    case 77:
        scr_player_door();
        break;
    
    case 83:
        scr_player_barrelnormal();
        break;
    
    case 82:
        scr_player_barrelfall();
        break;
    
    case 81:
        scr_player_barrelmach1();
        break;
    
    case 80:
        scr_player_barrelmach2();
        break;
    
    case 79:
        scr_player_barrelfloat();
        break;
    
    case 78:
        scr_player_barrelcrouch();
        break;
    
    case 84:
        scr_player_barrelslipnslide();
        break;
    
    case 85:
        scr_player_barrelroll();
        break;
    
    case 86:
        scr_player_current();
        break;
}

scr_playersounds();

if (grounded && state != 21)
    suplexmove = 0;

if (state != 73)
    freefallsmash = 0;

if (global.playerhealth <= 0 && state != 54)
{
    image_index = 0;
    sprite_index = spr_deathstart;
    state = 54;
}

if (state == 54 && y > (room_height * 2))
{
    scr_playerreset();
    targetDoor = "none";
    room = hub_room1;
}

if (!instance_exists(baddiegrabbedID) && (state == 45 || state == 42 || state == 9))
    state = 0;

if (!(state == 45 || state == 42 || state == 69))
    baddiegrabbedID = obj_slope;

if (grinding)
    state = 44;

if (character == "P")
{
    if (anger == 0)
        angry = 0;
    
    if (anger > 0)
    {
        angry = 1;
        anger -= 1;
    }
}

if (sprite_index == spr_player_winding && state != 0)
    windingAnim = 0;

if (state != 45)
    swingdingbuffer = 0;

if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create(x + random_range(-5, 5), y + 46, obj_vomit);

if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create(x + random_range(-5, 5), y + 46, obj_vomit))
        sprite_index = spr_vomit2;
}

if (global.playerhealth == 1 && !instance_exists(obj_sweat) && obj_player.state == 0)
    instance_create(x, y, obj_sweat);

if (angry == 1 && !instance_exists(obj_angrycloud) && obj_player.state == 0)
    instance_create(x, y, obj_angrycloud);

if (global.combotime > 0)
    global.combotime -= 0.5;

if (global.combotime == 0 && global.combo != 0)
    global.combo = 0;

if (input_buffer_jump < 8)
    input_buffer_jump++;

if (input_buffer_secondjump < 8)
    input_buffer_secondjump++;

if (input_buffer_highjump < 8)
    input_buffer_highjump++;

if (key_particles == 1)
    instance_create(random_range(x + 25, x - 25), random_range(y + 35, y - 25), obj_keyeffect);

if (inv_frames == 0 && hurted == 0)
    image_alpha = 1;

if (state == 69 || state == 9 || state == 43 || state == 23 || state == 14 || state == 12 || state == 17 || state == 24 || state == 26 || state == 33 || state == 39 || state == 33 || state == 36 || state == 89 || state == 73 || state == 62)
    attacking = 1;
else
    attacking = 0;

if (state == 40 || state == 46 || state == 47 || state == 49 || state == 48)
    grabbing = 1;
else
    grabbing = 0;

if (state == 89 || state == 69 || state == 16 || state == 73 || state == 1 || state == 5 || state == 6 || state == 8 || state == 43 || state == 34 || state == 62 || state == 36 || state == 39 || state == 9 || (state == 42 && sprite_index == spr_piledriver) || state == 23 || state == 24 || state == 17 || state == 14 || state == 12 || state == 10)
    instakillmove = 1;
else
    instakillmove = 0;

if (flash == 1 && alarm[0] <= 0)
    alarm[0] = 0.15 * room_speed;

if (state != 89 && state != 70)
    autodash = 0;

if ((state != 57 && state != 66 && state != 11) || vsp < 0)
    fallinganimation = 0;

if (state != 76 && state != 0 && state != 70)
    facehurt = 0;

if (state != 0 && state != 70)
    machslideAnim = 0;

if (state != 0)
{
    idle = 0;
    dashdust = 0;
}

if (state != 68 && state != 57 && state != 8 && state != 21 && state != 0 && state != 69 && state != 89 && state != 90 && state != 23 && state != 37 && state != 17)
    momemtum = 0;

if (state != 62 && state != 64)
    a = 0;

if (state != 33)
    facestompAnim = 0;

if (state != 73 && state != 33 && state != 42 && state != 76)
    superslam = 0;

if (state != 69)
    machpunchAnim = 0;

if (state != 57)
    ladderbuffer = 0;

if (state != 57)
    stompAnim = 0;

if ((state == 89 || state == 69 || state == 16 || state == 8 || state == 36 || state == 9 || state == 21 || state == 70) && !instance_exists(obj_mach3effect))
{
    toomuchalarm1 = 6;
    instance_create(x, y, obj_mach3effect);
}

if (toomuchalarm1 > 0)
{
    toomuchalarm1 -= 1;
    
    if (toomuchalarm1 <= 0 && (state == 89 || state == 16 || state == 8 || state == 69 || state == 9 || state == 70 || state == 36 || state == 21 || (state == 32 && mach2 >= 100)))
    {
        instance_create(x, y, obj_mach3effect);
        toomuchalarm1 = 6;
    }
}

if (y < -800)
{
    x = roomstartx;
    y = -500;
    state = 73;
    vsp = 10;
}

if (character == "S")
{
    if (state == 66 || state == 65)
        state = 0;
}

if (character == "P" && !place_meeting(x, y, obj_solid))
{
    if (state != 71 && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != 1 && state != 5 && state != 65 && state != 14 && (state != 38 && sprite_index != spr_player_crouchshoot) && state != 64 && state != 32 && state != 36 && state != 72 && state != 67 && state != 66)
        mask_index = spr_player_mask;
    else
        mask_index = spr_crouchmask;
}
else if (place_meeting(x, y, obj_solid))
{
    mask_index = spr_crouchmask;
}

if (character == "S" && state == 26)
    mask_index = spr_player_mask;
else if (character == "S")
    mask_index = spr_crouchmask;

if (state == 22 || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == 55 || state == 77 || state == 3 || state == 63 || state == 60 || state == 54)
    cutscene = 1;
else
    cutscene = 0;

if ((place_meeting(x, y, obj_door) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && !instance_exists(obj_uparrow) && scr_solid(x, y + 1) && state == 0)
    instance_create(x, y, obj_uparrow);

if (state == 69 && !instance_exists(obj_speedlines))
    instance_create(x, y, obj_speedlines);

scr_collide_destructibles();

if (state != 7 && state != 77 && state != 62 && state != 3 && state != 60 && state != 87 && state != 55 && state != 63 && state != 18 && state != 35 && state != 22 && state != 54)
    scr_collide_player();

if (state == 87)
    scr_collide_player();
