if (is_game_over) {
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	// Alpha text reset
	draw_set_alpha(1.0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	
	// Coordinates based on the room
	var _cx = room_width / 2;
	var _cy = room_height / 2;
	
	// GAME OVER TEXT
	draw_set_color(c_red);
	draw_text(_cx, _cy - 20, "YOU DIED.");
	
	// Press 'R' to restart.
	draw_set_color(c_white);
	draw_text(_cx, _cy + 25, "Press 'R' to Retry");
	
	// Alignment reset
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

// Tesla Flash
if (flash_alpha > 0) {
	draw_set_color(c_white);
	draw_set_alpha(flash_alpha);

// Rectangle
	draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

// Reset alpha
	draw_set_alpha(1);
	draw_set_color(c_white);
	}