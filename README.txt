Group Member Names: Kevin Teah, David Shaw, Nahuel Nieves, Preston Pope
Game Name: You WILL Get It Right

Instructions:
Arrow Keys to Move
Press 'E' when prompted to interact with the buttons. If you press the wrong one during an order, you receive an electric shock. Health is only limited up to three attempts after touching three incorrect buttons during a playthrough you get a game over.

The premise is simple, answer three rounds with button sequences correctly and you win!

The project theme was implemented from the usage of direct rewind states and slight challenge. Supposedly, when you end up dying in a game, you'd revert back to the latest point before you messed up, this is similar except you go back to the beginning. Essentially, it's more of a return by death that lets you adapt without the constant needs of save states. Because you're also traveling backward in time, its the reason why the first sequence when the game boots up remains roughly the same. The power to try again and change your outcome with preexisting knowledge while racing against the clock was the game idea we thought of!

Assets pulled from The Spriters' Resource:
// Button Sprites from WarioWare Touched!, sprites ripped by SHADEDBZ on the Spriters Resource!
// Tesla Coils from Command & Conquer - Red Alert 2


CHEAT CODE
// Cheat Code - Guided Button Sequence by Pressing Enter mid-game
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