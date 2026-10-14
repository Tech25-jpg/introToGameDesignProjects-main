var _box_x = 365;
var _box_y = 320;
var _box_w = 700;
var _box_h = 288;

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
draw_text(_box_x + (_box_w / 2), _box_y + 30, "CONGRATULATIONS!");

draw_set_color(c_orange);
draw_text(_box_x + (_box_w / 2), _box_y + 80, "Special Thanks: Kevin Teah, David Shaw, Nahuel Nieves, Preston Pope and YOU!");

draw_set_color(c_silver);
draw_text(_box_x + (_box_w / 2), _box_y + 170, "Press [R] or [Enter] to return to the title screen.");

draw_set_halign(fa_left);
draw_set_valign(fa_top);