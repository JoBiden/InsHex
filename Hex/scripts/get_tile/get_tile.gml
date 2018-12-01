///get_tile(x, y);

if (!ds_map_exists(grid, argument[0])) 
	return 0;
	
if (!ds_map_exists(ds_map_find_value(grid, argument[0]), argument[1]))
	return 0;

return ds_map_find_value(ds_map_find_value(grid, argument[0]), argument[1]);
