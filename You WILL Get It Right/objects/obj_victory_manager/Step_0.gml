if (keyboard_check(vk_enter) || keyboard_check_pressed(ord("R"))) {
	audio_stop_all();
	
	room_goto(rm_title);
}