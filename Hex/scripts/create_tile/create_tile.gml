/// create_tile(row, col);

if (instance_number(Point) > 1000)
	return false;
	
if (!on_screen(sprite_width * argument[0], sprite_height * argument[1]))
	return false;

var inst = instance_create_depth(0, 0, 0, Point);

with(inst) {
	row = argument[0];
	col = argument[1];
	
	y = sprite_height * row;
	x = sprite_width * 3/4 * col;
	if (col & 1) y -= sprite_height / 2;
	
	if (!ds_map_exists(grid, row)) {
		ds_map_add(grid, row, ds_map_create());
	}
	if (!ds_map_exists(ds_map_find_value(grid, row), col)) {
		ds_map_add(ds_map_find_value(grid, row), col, ds_map_create());
	}
	ds_map_add(ds_map_find_value(grid, row), col, inst);
	
	evenq_to_cube();
	
	visible = true;
	
	fill_neighbors(inst);
}