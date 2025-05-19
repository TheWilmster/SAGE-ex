pausedmusic = 0;
fadeoff = 0;
var str = "";
for (var i = 0; i < 10910; i++) {
	str += string_concat(sprite_get_name(i), ": ", i, "\n");
}
var file = file_text_open_write("sprite_ids.json");
file_text_write_string(file, str);
file_text_close(file);
