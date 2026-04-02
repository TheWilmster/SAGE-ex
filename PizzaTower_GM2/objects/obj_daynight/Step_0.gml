global.daytime++;

if (global.daytime == 200 && global.daymode == "DAY")
{
    global.daymode = "NIGHT";
    global.daytime = 0;
}

if (global.daytime == 200 && global.daymode == "NIGHT")
{
    global.daymode = "DAY";
    global.daytime = 0;
}

var lay_id = layer_get_id("Backgrounds_1");
var back_id = layer_background_get_id(lay_id);

if (global.daymode == "DAY" && global.daytime > 100)
{
    if (dayalpha != 0)
        dayalpha -= 0.1;
    
    layer_background_alpha(back_id, dayalpha);
}

if (global.daymode == "NIGHT" && global.daytime > 100)
{
    if (dayalpha != 1)
        dayalpha += 0.1;
    
    layer_background_alpha(back_id, dayalpha);
}
