// Silhouette outline
gpu_set_fog(true, c_black, 0, 1);

draw_sprite(sprite_index, image_index, x + 1, y); // Right
draw_sprite(sprite_index, image_index, x - 1, y); // Left
draw_sprite(sprite_index, image_index, x, y + 1); // Down
draw_sprite(sprite_index, image_index, x, y - 1); // Up

gpu_set_fog(false, c_white, 0, 1); // fog is turned off; normal colors return

// draw player character
draw_self();
