if (obj_player.character == "S")
    instance_destroy();

if (x != obj_player1.x)
    image_xscale = -sign(x - obj_player1.x);

if (global.medievalrank != "none" && global.ruinrank != "none" && global.dungeonrank != "none" && global.snickchallengerank == "none")
    sprite_index = spr_snick_exe;

if (place_meeting(x, y, obj_player))
{
    with (obj_player)
    {
        if (key_up2)
            other.dialogue += 1;
    }
    
    with (obj_tv)
    {
        if (global.medievalrank == "none" && global.ruinrank == "none" && global.dungeonrank == "none")
        {
            if (other.dialogue == 0)
                message = "";
            
            if (other.dialogue == 1)
                message = "THANKS FOR BRINGING THE PIZZA PEPPINO";
            
            if (other.dialogue == 2)
                message = "SADLY IM THE ONLY WHO CAME...";
            
            if (other.dialogue == 3)
                message = "YOU CAN STILL TRY OUT THE GAMES";
            
            if (other.dialogue == 4)
                message = "BUT BEFORE STARTING,";
            
            if (other.dialogue == 5)
                message = "I SUGGEST GOING DOWN TO THE LEFT";
            
            if (other.dialogue == 6)
                message = "TO LEARN SOME IMPORTANT MOVES";
            
            if (other.dialogue == 7)
                message = " ";
            
            showtext = 1;
            alarm[0] = 2;
        }
        else if (obj_cowboyhat.visible == true)
        {
            if (other.dialogue == 0)
                message = "";
            
            if (other.dialogue == 1)
                message = "YOU DID IT!";
            
            if (other.dialogue == 2)
                message = "YES, YOU THE PLAYER!";
            
            if (other.dialogue == 3)
                message = "YOU DID ALL OF THIS DEMO CONTENT";
            
            if (other.dialogue == 4)
                message = "THERES NOTHING LEFT TO DO!";
            
            if (other.dialogue == 5)
                message = "GET YOURSELF A PIZZA OR SOMETHING";
            
            if (other.dialogue == 6)
                message = "GO PLAY THE REAL OTHER SAGE GAMES";
            
            if (other.dialogue == 7)
                message = "OH AND YOU CAN GO HOME PEPPINO";
            
            if (other.dialogue == 8)
                message = "BRING THE HAT";
            
            if (other.dialogue == 9)
                message = "";
            
            showtext = 1;
            alarm[0] = 2;
        }
        else if (global.medievalrank != "none" && global.ruinrank != "none" && global.dungeonrank != "none" && global.snickchallengerank != "none")
        {
            if (other.dialogue == 0)
                message = "";
            
            if (other.dialogue == 1)
                message = "WELL CONGRATS YOU BEAT MY CHALLENGE";
            
            if (other.dialogue == 2)
                message = "YOU CAN PLAY AS ME NOW";
            
            if (other.dialogue == 3)
                message = "GO TO THE COWBOY TASK ROOM";
            
            if (other.dialogue == 4)
                message = "AND JUMP UNDER MY BLOCK";
            
            if (other.dialogue == 5)
                message = "";
            
            if (other.dialogue == 6)
                message = "";
            
            showtext = 1;
            alarm[0] = 2;
        }
        else if (global.medievalrank != "none" && global.ruinrank != "none" && global.dungeonrank != "none")
        {
            if (other.dialogue == 0)
                message = "";
            
            if (other.dialogue == 1)
                message = "YOU SHOULDNT HAVE PLAYED THE GAMES";
            
            if (other.dialogue == 2)
                message = "YOU WILL SUFFER THE CONSEQUENCES...";
            
            if (other.dialogue == 3)
                message = "ACCEPT MY CHALLENGE IF YOU DARE";
            
            if (other.dialogue == 4)
                message = "";
            
            showtext = 1;
            alarm[0] = 2;
        }
        else if (global.medievalrank == "s" || global.ruinrank == "s" || global.dungeonrank == "s")
        {
            if (other.dialogue == 0)
                message = "";
            
            if (other.dialogue == 1)
                message = "WOW YOU GOT S RANK";
            
            if (other.dialogue == 2)
                message = "KEEP IT UP!";
            
            if (other.dialogue == 3)
                message = " ";
            
            showtext = 1;
            alarm[0] = 2;
        }
        else if (global.medievalrank == "d" || global.ruinrank == "d" || global.dungeonrank == "d")
        {
            if (other.dialogue == 0)
                message = "";
            
            if (other.dialogue == 1)
                message = "WOW YOURE PRETTY BAD AT THESE GAMES";
            
            if (other.dialogue == 2)
                message = "ITS OK THEY ARENT THAT GREAT EITHER";
            
            if (other.dialogue == 3)
                message = "";
            
            showtext = 1;
            alarm[0] = 2;
        }
        else if (global.medievalrank != "none" || global.ruinrank != "none" || global.dungeonrank != "none")
        {
            if (other.dialogue == 0)
                message = "";
            
            if (other.dialogue == 1)
                message = "TRY BEATING ALL OF THE LEVELS!";
            
            if (other.dialogue == 2)
                message = "KEEP IT UP!";
            
            if (other.dialogue == 3)
                message = " ";
            
            showtext = 1;
            alarm[0] = 2;
        }
    }
}
else
{
    dialogue = 0;
}
