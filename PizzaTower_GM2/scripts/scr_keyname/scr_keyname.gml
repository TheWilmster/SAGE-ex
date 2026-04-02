function scr_keyname(key) {
    if (key == 37)
        return "LEFT";
    
    if (key == 39)
        return "RIGHT";
    
    if (key == 38)
        return "UP";
    
    if (key == 40)
        return "DOWN";
    
    if (key == 13)
        return "ENTER";
    
    if (key == 27)
        return "ESCAPE";
    
    if (key == 32)
        return "SPACE";
    
    if (key == 16)
        return "SHIFT";
    
    if (key == 17)
        return "CONTROL";
    
    if (key == 18)
        return "ALT";
    
    if (key == 8)
        return "BACKSPACE";
    
    if (key == 9)
        return "TAB";
    
    if (key == 36)
        return "HOME";
    
    if (key == 35)
        return "END";
    
    if (key == 46)
        return "DELETE";
    
    if (key == 45)
        return "INSERT";
    
    if (key == 33)
        return "PAGE UP";
    
    if (key == 34)
        return "PAGE DOWN";
    
    if (key == 19)
        return "PAUSE";
    
    if (key == 44)
        return "PRINTSCREEN";
    
    if (key == 112)
        return "F1";
    
    if (key == 113)
        return "F2";
    
    if (key == 114)
        return "F3";
    
    if (key == 115)
        return "F4";
    
    if (key == 116)
        return "F5";
    
    if (key == 117)
        return "F6";
    
    if (key == 118)
        return "F7";
    
    if (key == 119)
        return "F8";
    
    if (key == 120)
        return "F9";
    
    if (key == 121)
        return "F10";
    
    if (key == 122)
        return "F11";
    
    if (key == 123)
        return "F12";
    
    if (key == 96)
        return "NUMPAD 0";
    
    if (key == 97)
        return "NUMPAD 1";
    
    if (key == 98)
        return "NUMPAD 2";
    
    if (key == 99)
        return "NUMPAD 3";
    
    if (key == 100)
        return "NUMPAD 4";
    
    if (key == 101)
        return "NUMPAD 5";
    
    if (key == 102)
        return "NUMPAD 6";
    
    if (key == 103)
        return "NUMPAD 7";
    
    if (key == 104)
        return "NUMPAD 8";
    
    if (key == 105)
        return "NUMPAD 9";
    
    if (key == 106)
        return "MULTIPLY";
    
    if (key == 111)
        return "DIVIDE";
    
    if (key == 107)
        return "ADD";
    
    if (key == 109)
        return "SUBSTRACT";
    
    if (key == 110)
        return "DECIMAL";
    
    if (key == -1)
        return "PRESS KEY";
    
    return chr(key);
}