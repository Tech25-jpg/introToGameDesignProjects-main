// Healthbar
var _x = 50;
var _y = 50;
var _width = 200;
var _height = 20;

var _health_percentage = (player_health / 3) * 100;

draw_healthbar(_x, _y, _x + 200, _y + 20, _health_percentage, c_dkgrey, c_red, c_lime, 0, true, true);

draw_set_color(c_white);
draw_text(_x, _y - 20, "HEALTH");