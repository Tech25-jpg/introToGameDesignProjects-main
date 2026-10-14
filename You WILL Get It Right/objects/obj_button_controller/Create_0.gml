// Variables
global.puzzle_solved = false;
is_game_over = false;
player_health = 3;
flash_alpha = 0;
flash_triggered = false;

rounds_completed = 0;
current_round = 1;
max_rounds = 3;
player_progress = 0;
button_queue = [];
current_index = 0;

cheat_index = 0;
cheat_is_playing = false;

// Time variables
timer_max = room_speed * 25;
puzzle_timer = timer_max;

// Time interval between each flash
var _fps = game_get_speed(gamespeed_fps);
flash_interval = _fps * 0.8;

// Defined function:
setup_round_sequence = function() {
	with (obj_button_red) {
		sequence_index = -1;
		is_flashing = false;
		image_blend = c_white;
}

// Buttons found presently in the room will be stored in an array/list
button_queue = [];
player_progress = 0;
is_showing_sequence = true;

// Round 1 = 3 Buttons, Round 2 = 4 Buttons, Round 3 = 5 Buttons
var _sequence_length = current_round + 2;
// Master Pool, holds randomized subsets of all the buttons.
var _temp_pool = [];
array_copy(_temp_pool, 0, global.all_buttons, 0, array_length(global.all_buttons));
// Random shuffle for each button sequences, will allow the player to keep track of the randomized set easier
array_shuffle_ext(_temp_pool);

// Alloted numbers of buttons needed for the first round.
for (var i = 0; i < _sequence_length; i++) {
	var _btn = _temp_pool[i];
	array_push(button_queue, _btn);
	_btn.sequence_index = i;
}

// Keeps track of which buttons are currently flashing
current_index = 0;
// Start timer for first button
alarm[0] = flash_interval;

};

// Restart when losing all lives.
waiting_for_retry = false;