function scr_sleep() {
    var time = current_time;
    var ms = argument[0];
    
    do
    {
    }
    until ((current_time - time) >= round(ms));
    
    return current_time - time;
}