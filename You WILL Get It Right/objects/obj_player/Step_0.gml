// Freeze state after death
if (obj_button_controller.is_game_over) {
	speed = 0;
	hspeed = 0;
	vspeed = 0;
	
	if (variable_instance_exists(id, "hsp")) hsp = 0;
	if (variable_instance_exists(id, "vsp")) vsp = 0;
	if (variable_instance_exists(id, "move_x")) move_x = 0;
	if (variable_instance_exists(id, "move_y")) move_y = 0;
	
	if (sprite_index != spr_player_lose) {
		sprite_index = spr_player_lose;
		image_index = 0;
		image_speed = 1;
	}
	
	if (image_index >= image_number - 1) {
		image_speed = 0;
		image_index = image_number - 1;
	}
	obj_button_controller.waiting_for_retry = true;
	
	exit;
}

// Arrow key inputs
var _horiz_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _vert_input = keyboard_check(vk_down) -keyboard_check(vk_up);

// Input calculations
var _move_x = _horiz_input * move_speed;
var _move_y = _vert_input * move_speed;

// Collision
move_and_collide(_move_x, _move_y, all);