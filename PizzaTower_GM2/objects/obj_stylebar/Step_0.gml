if (global.style > 55 && global.stylethreshold < 4)
{
    global.stylethreshold += 1;
    global.style = global.style - 55;
}

if (global.style < 0 && global.stylethreshold != 0)
{
    global.stylethreshold -= 1;
    global.style = global.style + 55;
}

if (global.style >= 0 && global.combotime == 0)
    global.style -= 0.25;

if (global.style < 0 && global.stylethreshold == 0)
    global.style = 0;

if (global.stylethreshold == 4 && global.style > 55)
    global.style = 55;

alpha = obj_tv.alpha;
