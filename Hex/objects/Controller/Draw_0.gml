/// @description Insert description here
// You can write your code in this editor

var xx = x - (camera_get_view_width(view_camera[0]) / 2);
var yy = y - (camera_get_view_height(view_camera[0]) / 2);
camera_set_view_pos(view_camera[0], xx, yy);

draw_set_color(c_black);
draw_rectangle(xx, yy, xx + 80, yy + 30, false);

draw_set_color(c_white);
draw_text(xx + 10, yy + 2, instance_number(Point));

if (ds_list_size(selection) == 2) {
	draw_text(xx + 10, yy + 16, abs_distance(ds_list_find_value(selection, 0), ds_list_find_value(selection, 1)));
} else if (ds_list_size(selection) > 2) {
	for (var i = 0; i < ds_list_size(selection); i++) {	
		with (ds_list_find_value(selection, i)) {
			selected = false;
		}
	}
	ds_list_clear(selection);
}