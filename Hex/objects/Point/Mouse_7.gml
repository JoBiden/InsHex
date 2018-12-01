/// @description Insert description here
// You can write your code in this editor

if (!selected) {
	selected = true;
	ds_list_add(Controller.selection, id);
} else {
	selected = false;
	var cur_index = ds_list_find_index(Controller.selection, id);
	ds_list_delete(Controller.selection, cur_index);
}