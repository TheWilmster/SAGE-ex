function scr_sound() {
    var snd = argument[irandom(argument_count - 1)];
    global.music = audio_play_sound(snd, 10, true);
    audio_sound_gain(global.music, 0.6, 1);
}