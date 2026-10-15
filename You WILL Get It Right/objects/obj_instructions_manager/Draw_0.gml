var _box_x = 220;
var _box_y = 40;
var _box_w = 870;
var _box_h = 490;

// Dark box background
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(_box_x, _box_y, _box_x + _box_w, _box_y + _box_h, false);
draw_set_alpha(1.0);

// Box Border
draw_set_color(c_orange);
draw_rectangle(_box_x, _box_y, _box_x + _box_w, _box_y + _box_h, true);

// Credits Text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Text Box
var _center_x = _box_x + (_box_w / 2);

draw_set_color(c_white);
draw_text(_center_x, _box_y + 25, "HOW TO PLAY:");

draw_set_color(c_orange);
draw_text(_center_x, _box_y + 70, "Follow and enter the sequences in the correct order to advance.");
draw_text(_center_x, _box_y + 105, "Approach buttons and press 'E' when prompted to make your choice.");

draw_set_color(c_red);
draw_text(_center_x, _box_y + 190, "HAZARDS:");

// Tesla Icons
draw_sprite(spr_tesla, 0, _center_x + 45,_box_y + 125);
draw_sprite(spr_tesla, 0, _center_x - 205,_box_y + 125);

draw_set_color(c_white);
draw_text(_center_x, _box_y + 225, "Try not to get more than three incorrect otherwise you're in for a shocking surprise!");

draw_set_color(c_yellow);
draw_text(_center_x, _box_y + 265, "REWINDING TIME:");
draw_set_color(c_white);
draw_text(_center_x, _box_y + 295, "If you lose all your HP time will rewind all the way back to the beginning so you can try again.")

draw_set_color(c_silver);
draw_text(_center_x, _box_y + 370, "Press [Enter] or [Space] to Start Game:")

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);