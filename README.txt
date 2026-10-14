Group Member Names: Kevin Teah, David Shaw, Nahuel Nieves, Preston Pope
Game Name: You WILL Get It Right

Instructions:
Arrow Keys to Move
Press 'E' when prompted to interact with the buttons. If you press the wrong one during an order, you receive an electric shock. Health is only limited up to three attempts after touching three incorrect buttons during a playthrough you get a game over.

Assets pulled from The Spriters' Resource:
// Button Sprites from WarioWare Touched!, sprites ripped by SHADEDBZ on the Spriters Resource!
// Tesla Coils from Command & Conquer - Red Alert 2


CHEAT CODE
// Cheat Code - Guided Button Pressing by Pressing Enter
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
		


CHEAT CODE CONT'D
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