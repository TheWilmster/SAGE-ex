function scr_enemy_grabbed() {
    image_xscale = -obj_player1.xscale;
    stunned = 200;
    obj_player1.baddiegrabbedID = id;
    
    if (obj_player1.state == 27 || obj_player1.state == 45 || obj_player1.state == 40 || obj_player1.state == 41 || obj_player1.state == 9)
    {
        x = obj_player1.x;
        
        if (obj_player1.sprite_index != spr_player_haulingstart)
            y = obj_player1.y - 40;
        else if (floor(obj_player1.image_index) == 0)
            y = obj_player1.y;
        else if (floor(obj_player1.image_index) == 1)
            y = obj_player1.y - 10;
        else if (floor(obj_player1.image_index) == 2)
            y = obj_player1.y - 20;
        else if (floor(obj_player1.image_index) == 3)
            y = obj_player1.y - 30;
        
        image_xscale = -obj_player1.xscale;
    }
    
    with (obj_player1)
    {
        suplexhavetomash = other.hp - 1;
        scr_getinput();
        move = key_left2 + key_right2;
        
        if (key_slap && sprite_index == spr_grab)
        {
            global.hit += 1;
            
            if (other.object_index == obj_pizzaball)
                global.golfhit += 1;
            
            global.combotime = 60;
            image_index = 0;
            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4);
            other.hp -= 1;
            instance_create(other.x, other.y, obj_slapstar);
            instance_create(other.x, other.y, obj_baddiegibs);
            other.flash = 1;
            
            with (obj_camera)
            {
                shake_mag = 3;
                shake_mag_acc = 3 / room_speed;
            }
        }
        
        if (!(state == 45 || state == 2 || state == 27 || state == 40 || state == 41 || state == 9 || state == 46 || state == 42 || state == 47 || state == 48 || state == 49))
        {
            other.x = x;
            other.y = y;
            other.state = 104;
            other.image_index = 0;
        }
    }
    
    hsp = 0;
    
    if (obj_player1.state == 46)
    {
        alarm[3] = 3;
        global.hit += 1;
        
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1;
        
        hp -= 1;
        instance_create(x + (obj_player1.xscale * 30), y, obj_bumpeffect);
        alarm[1] = 5;
        thrown = 1;
        x = obj_player1.x;
        vsp = 0;
        y = obj_player1.y;
        state = 104;
        hsp = -image_xscale * 25;
        grav = 0;
        global.combotime = 60;
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        flash = 1;
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
    }
    
    if (obj_player1.state == 2 && obj_player1.image_index < 5)
    {
        x = obj_player1.x + (obj_player1.xscale * 60);
        y = obj_player1.y;
    }
    
    if (obj_player1.state == 47)
    {
        alarm[3] = 3;
        global.hit += 1;
        
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1;
        
        hp -= 1;
        instance_create(x + (-obj_player1.xscale * 50), y, obj_bumpeffect);
        alarm[1] = 5;
        thrown = 1;
        x = obj_player1.x;
        y = obj_player1.y;
        state = 104;
        image_xscale *= -1;
        hsp = -image_xscale * 20;
        vsp = -7;
        global.combotime = 60;
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        flash = 1;
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
    }
    
    if (obj_player1.state == 49)
    {
        alarm[3] = 3;
        global.hit += 1;
        
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1;
        
        hp -= 1;
        instance_create(x, y + 20, obj_bumpeffect);
        alarm[1] = 5;
        thrown = 1;
        x = obj_player1.x;
        y = obj_player1.y;
        state = 104;
        
        if (obj_player1.sprite_index == spr_player_shoulder)
            vsp = 15;
        
        if (obj_player1.sprite_index == spr_player_diagonaldownthrow)
        {
            hsp = -image_xscale * 10;
            vsp = 15;
        }
        
        if (obj_player1.sprite_index == spr_player_diagonalupthrow)
        {
            hsp = -image_xscale * 10;
            vsp = -15;
        }
        
        global.combotime = 60;
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        flash = 1;
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
    }
    
    if (place_meeting(x, y, obj_swordhitbox))
    {
        hp -= 1;
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        instance_create(x, y, obj_baddiegibs);
        instance_create(x, y, obj_baddiegibs);
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
        
        alarm[3] = 3;
        global.hit += 1;
        
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1;
        
        global.combotime = 60;
        alarm[1] = 5;
        thrown = 1;
        state = 104;
        
        with (obj_player)
        {
            move = key_right + key_left;
            
            if (sprite_index == spr_player_uppercutfinishingblow)
            {
                other.hsp = 0;
                other.vsp = -25;
            }
            else
            {
                other.hsp = -other.image_xscale * 25;
                other.vsp = -6;
            }
        }
    }
    
    if (obj_player1.state == 40)
    {
        global.hit += 1;
        
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1;
        
        alarm[1] = 5;
        thrown = 1;
        x = obj_player1.x;
        y = obj_player1.y;
        state = 104;
        hsp = -image_xscale * 8;
        vsp = -6;
    }
    
    if (obj_player1.state == 48)
    {
        alarm[3] = 3;
        global.hit += 1;
        
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1;
        
        hp -= 1;
        instance_create(x + (-obj_player1.xscale * 15), y - 50, obj_bumpeffect);
        alarm[1] = 5;
        thrown = 1;
        x = obj_player1.x;
        y = obj_player1.y;
        hsp = -image_xscale * 2;
        state = 104;
        vsp = -20;
        global.combotime = 60;
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        flash = 1;
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
    }
    
    if (obj_player1.state == 9)
    {
        x = obj_player1.x + (obj_player1.xscale * 15);
        y = obj_player1.y;
    }
    
    if ((obj_player1.state == 42 && obj_player1.sprite_index == spr_player_piledriver) || (obj_player1.state == 45 && obj_player1.sprite_index == spr_player_swingding))
    {
        if (obj_player1.character == "P")
        {
            if (floor(obj_player1.image_index) == 0)
            {
                depth = 0;
                x = obj_player1.x + (obj_player1.xscale * 10);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 1)
            {
                depth = 0;
                x = obj_player1.x + (obj_player1.xscale * 5);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 2)
            {
                depth = 0;
                x = obj_player1.x;
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 3)
            {
                depth = 0;
                x = obj_player1.x + (obj_player1.xscale * -5);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 4)
            {
                depth = 0;
                x = obj_player1.x + (obj_player1.xscale * -10);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 5)
            {
                depth = -8;
                x = obj_player1.x + (obj_player1.xscale * -5);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 6)
            {
                depth = -8;
                x = obj_player1.x;
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 7)
            {
                depth = -8;
                x = obj_player1.x + (obj_player1.xscale * 5);
                y = obj_player1.y;
            }
        }
        else
        {
            depth = -7;
            x = obj_player.x;
            y = obj_player.y - 40;
        }
    }
    
    if (obj_player1.sprite_index == spr_player_piledriverland && floor(obj_player1.image_index) == (obj_player1.image_number - 1))
    {
        with (obj_player)
        {
            state = 57;
            vsp = -8;
            sprite_index = spr_player_machfreefall;
        }
        
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        flash = 1;
        global.combotime = 60;
        global.hit += 1;
        hp -= 5;
        alarm[1] = 5;
        thrown = 1;
        x = obj_player1.x;
        y = obj_player1.y;
        state = 104;
        hsp = -image_xscale * 10;
        vsp = -10;
    }
    
    if (obj_player1.state == 45 && obj_player1.sprite_index == spr_player_swingding)
    {
        if (obj_player1.character == "P")
        {
            if (floor(obj_player1.image_index) == 0)
            {
                depth = -8;
                x = obj_player1.x + (obj_player1.xscale * 25);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 1)
            {
                depth = -8;
                x = obj_player1.x;
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 2)
            {
                depth = -8;
                x = obj_player1.x + (obj_player1.xscale * -25);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 3)
            {
                depth = 0;
                x = obj_player1.x + (obj_player1.xscale * -50);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 4)
            {
                depth = 0;
                x = obj_player1.x + (obj_player1.xscale * -25);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 5)
            {
                depth = 0;
                x = obj_player1.x;
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 6)
            {
                depth = 0;
                x = obj_player1.x + (obj_player1.xscale * 25);
                y = obj_player1.y;
            }
            
            if (floor(obj_player1.image_index) == 7)
            {
                depth = 0;
                x = obj_player1.x + (obj_player1.xscale * 50);
                y = obj_player1.y;
            }
        }
        else
        {
            depth = -7;
            x = obj_player.x;
            y = obj_player.y - 40;
        }
    }
    
    sprite_index = grabbedspr;
    image_speed = 0.35;
}