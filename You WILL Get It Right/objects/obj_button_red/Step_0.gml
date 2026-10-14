// If the player completes the sequence, do nothing.
if (obj_button_controller.player_progress >= array_length(obj_button_controller.button_queue)) {
	exit;
}
// Interaction Range
var _interaction_range = 50; // Range of button interaction

// Check distance to player obj
if (instance_exists(obj_player)) {
	var _dist = point_distance(x, y, obj_player.x, obj_player.y);
	can_interact = (_dist <= _interaction_range);
} else {
	can_interact = false;
}
	
	if (!is_flashing) {
		image_blend = c_ltgray // Highlights when close
	}
	
	// Press 'E' to interact while hovering.
	if (can_interact && keyboard_check_pressed(ord("E"))) {
		audio_play_sound(snd_button_press, 1, false);
		image_index = 1;
		alarm[1] = 15;

	// Checking against global controller's expected sequence
		if (sequence_index == obj_button_controller.button_queue[obj_button_controller.player_progress].sequence_index) {
			show_debug_message("Correct Input Pressed!");
			image_blend = c_green; // Feedback for correct btn press
			
		// Progress advancement
		obj_button_controller.player_progress++;
		
		// If player completed the whole sequence
		if (obj_button_controller.player_progress >= array_length(obj_button_controller.button_queue)) {
			show_debug_message("Round Solved!");

		// Advance to the next round
		obj_button_controller.current_round++;
		
		if (obj_button_controller.current_round > obj_button_controller.max_rounds) {
			global.puzzle_solved = true;
			show_debug_message("All Rounds Completed! Well done!");
			room_goto(rm_game_beat);
	
		} else {
			obj_button_controller.setup_round_sequence();
		}
	}
	
} else {
	audio_play_sound(snd_tesla_zap, 1, false);
	
	obj_button_controller.flash_alpha = 0.6;
	show_debug_message("Wrong input! Resetting sequence..");
	obj_button_controller.player_health--;
	image_blend = c_red;

	if (obj_button_controller.player_health <= 0) {
		obj_button_controller.is_game_over = true;
		show_debug_message("Game Over. Player has perished.");
	} else {
		obj_button_controller.setup_round_sequence();
		
		}
	}
}