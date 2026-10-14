// If finishing state was a loss state:
if (sprite_index == spr_clock_lose) {
	obj_button_controller.is_game_over = true;
	// Rewind obj_clock_rewind
	instance_create_layer(x, y, layer, obj_clock_rewind);
	
	image_speed = 0;
	instance_destroy();
}
