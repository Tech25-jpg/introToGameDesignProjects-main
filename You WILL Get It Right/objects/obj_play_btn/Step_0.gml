image_xscale = 8;
image_yscale = 9;


if (position_meeting(mouse_x, mouse_y, id)) {
	// Button will grow when hovered over
	image_xscale = lerp(image_xscale, 1.05, 0.2);
	image_yscale = lerp(image_yscale, 1.05, 0.2);
} else {
	// Button will shrink back to size when mouse is gone
	image_xscale = lerp(image_xscale, 1.0, 0.2);
	image_yscale = lerp(image_yscale, 1.0, 0.2);
}