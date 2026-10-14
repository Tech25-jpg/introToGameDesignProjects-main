
if (current_index < array_length(button_queue)) {
	var _btn = button_queue[current_index];
	
	// Button flash indicator
	with (_btn) {
		is_flashing = true;
		image_blend = c_lime;
		
		
	// Flash goes out after .6 seconds
		var _fps = game_get_speed(gamespeed_fps);
		alarm[1] = _fps * 0.6;
	}
	
	// Move onto the next button.
	current_index++;
	alarm[0] = flash_interval; // Interval reset for the next.
}
		