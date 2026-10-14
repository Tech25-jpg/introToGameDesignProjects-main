// Cheat Code Cont'd
if (cheat_index < array_length(button_queue)) {
	var _btn_id = button_queue[cheat_index];
	
	show_debug_message("Step " + string(cheat_index + 1) + ": Button ID -> " + string(_btn_id));
	
	with (_btn_id) {
		image_blend = c_yellow
		alarm[0] = room_speed * 0.6;
	}
	
	// Move to next button.
	cheat_index++;
	alarm[1] = room_speed * 0.6;
} else {
	// Sequence completion
	cheat_is_playing = false;
}