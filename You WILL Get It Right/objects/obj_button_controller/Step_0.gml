// Timer and Circuit Step Event
if (!global.puzzle_solved && !is_game_over) {
	puzzle_timer--;
	
	// If clock makes a full circuit. time runs out.
	if (puzzle_timer <= 0) {
		player_health--;
		puzzle_timer = timer_max;
		
	// Puzzle progress is reset in tandem with time running out.
	player_progress = 0;
	player_sequence = [];
	
	// Check if player has anymore lives:
	if (player_health <= 0) {
		is_game_over = true;
		}
		
	}
	
}

if (is_game_over && keyboard_check_pressed(ord("R"))) {
	sprite_index = spr_clock_rewind
	
	// Alarm so rewind sprite is visible before the reset.
	if (alarm[0] == -1) {
		alarm[0] = 30;
	}
}

// If waiting for retry, check if player touched 'R':
if (is_game_over) {
	if keyboard_check_pressed(ord("R")) {
	room_restart();
	}
}

if (is_game_over && !flash_triggered) {
	flash_alpha = 0.6;
	flash_triggered = true;
}

// Gradual fade out

if (flash_alpha > 0) {
	flash_alpha -= 0.08;
	if (flash_alpha < 0) flash_alpha = 0;
}

// Reset
if (!is_game_over) {
	flash_triggered = false;
}

// Cheat Code - Guided Button Pressing by pressing Enter.
if (keyboard_check(vk_enter) && !cheat_is_playing) {
	show_debug_message("=== CHEAT CODE ACTIVATED, STANDY BY: ===");
	
	// Sequence array loop
	for (var i = 0; i < array_length(button_queue); i++) {
		var _btn_id = button_queue[i];
		cheat_index = 0;
		cheat_is_playing = true;
			alarm[1] = 1;
		}
	}
		