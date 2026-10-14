if (obj_button_controller.is_game_over) {
	if (is_rewinding) {
		exit;
}

// Player can retry after losing by pressing 'R'
if (keyboard_check_pressed(ord("R")) && alarm[0] == -1) {
	sprite_index = spr_clock_rewind;
	image_index = 0;
	image_speed = 1;
	alarm[0] = 30;
}



else if (alarm[0] == -1) {
if (sprite_index !=  spr_clock_lose) {
sprite_index = spr_clock_lose;
image_index = 0;
image_speed = 1;
		}
	}
}

else {
if (sprite_index != spr_clock_main) {
sprite_index = spr_clock_main;
	}
}