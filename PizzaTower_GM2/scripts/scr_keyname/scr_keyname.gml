function scr_keyname() {
    if (argument[0] == 37)
        return "LEFT";
    
    if (argument[0] == 39)
        return "RIGHT";
    
    if (argument[0] == 38)
        return "UP";
    
    if (argument[0] == 40)
        return "DOWN";
    
    if (argument[0] == 13)
        return "ENTER";
    
    if (argument[0] == 27)
        return "ESCAPE";
    
    if (argument[0] == 32)
        return "SPACE";
    
    if (argument[0] == 16)
        return "SHIFT";
    
    if (argument[0] == 17)
        return "CONTROL";
    
    if (argument[0] == 18)
        return "ALT";
    
    if (argument[0] == 8)
        return "BACKSPACE";
    
    if (argument[0] == 9)
        return "TAB";
    
    if (argument[0] == 36)
        return "HOME";
    
    if (argument[0] == 35)
        return "END";
    
    if (argument[0] == 46)
        return "DELETE";
    
    if (argument[0] == 45)
        return "INSERT";
    
    if (argument[0] == 33)
        return "PAGE UP";
    
    if (argument[0] == 34)
        return "PAGE DOWN";
    
    if (argument[0] == 19)
        return "PAUSE";
    
    if (argument[0] == 44)
        return "PRINTSCREEN";
    
    if (argument[0] == 112)
        return "F1";
    
    if (argument[0] == 113)
        return "F2";
    
    if (argument[0] == 114)
        return "F3";
    
    if (argument[0] == 115)
        return "F4";
    
    if (argument[0] == 116)
        return "F5";
    
    if (argument[0] == 117)
        return "F6";
    
    if (argument[0] == 118)
        return "F7";
    
    if (argument[0] == 119)
        return "F8";
    
    if (argument[0] == 120)
        return "F9";
    
    if (argument[0] == 121)
        return "F10";
    
    if (argument[0] == 122)
        return "F11";
    
    if (argument[0] == 123)
        return "F12";
    
    if (argument[0] == 96)
        return "NUMPAD 0";
    
    if (argument[0] == 97)
        return "NUMPAD 1";
    
    if (argument[0] == 98)
        return "NUMPAD 2";
    
    if (argument[0] == 99)
        return "NUMPAD 3";
    
    if (argument[0] == 100)
        return "NUMPAD 4";
    
    if (argument[0] == 101)
        return "NUMPAD 5";
    
    if (argument[0] == 102)
        return "NUMPAD 6";
    
    if (argument[0] == 103)
        return "NUMPAD 7";
    
    if (argument[0] == 104)
        return "NUMPAD 8";
    
    if (argument[0] == 105)
        return "NUMPAD 9";
    
    if (argument[0] == 106)
        return "MULTIPLY";
    
    if (argument[0] == 111)
        return "DIVIDE";
    
    if (argument[0] == 107)
        return "ADD";
    
    if (argument[0] == 109)
        return "SUBSTRACT";
    
    if (argument[0] == 110)
        return "DECIMAL";
    
    if (argument[0] == -1)
        return "PRESS KEY";
    
    return chr(argument[0]);
}