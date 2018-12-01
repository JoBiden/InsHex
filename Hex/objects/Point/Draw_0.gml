/// @description Insert description here
// You can write your code in this editor

//visible sprite
if (!blocked) {
	draw_sprite(open, 0, x, y);
} else {
	draw_sprite(wall, 0, x, y);
}

//coord point
if (Controller.show_coord) {
	if (selected) {
		draw_set_color(c_white);
	} else {
		draw_set_color(c_black);
	}
	draw_text(x + 25, y + 40, col);
	draw_text(x + 60, y + 40, row);
}

//cube distance markers
if (Controller.show_coord) {
	draw_set_color(c_green);
	draw_text(x + 20, y + 15, cube_x);
	draw_set_color(c_teal);
	draw_text(x + 65, y + 15, cube_z);
	draw_set_color(c_orange);
	draw_text(x + 40, y + 70, cube_y);
}