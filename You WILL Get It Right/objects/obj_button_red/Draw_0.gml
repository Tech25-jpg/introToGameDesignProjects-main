draw_self();
// Checking puzzle completion
var _puzzle_finished = (obj_button_controller.player_progress >= array_length(obj_button_controller.button_queue));

if (can_interact && !_puzzle_finished) {
// If player is near proximity of a button, the letter 'E' (sprite) prompts overhead
draw_sprite(spr_interaction_E, 0, x, y - 28);

} 



