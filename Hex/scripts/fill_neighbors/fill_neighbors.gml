///fill_neighbors(Point);

var xx = argument[0].row;
var yy = argument[0].col;

var neighbors_x = array_create(6);
var neighbors_y = array_create(6);
neighbors_x[0] = xx;
neighbors_y[0] = yy - 1;
neighbors_x[1] = xx - 1;
neighbors_y[1] = yy + 1;
neighbors_x[2] = xx + 1;
neighbors_y[2] = yy;
neighbors_x[3] = xx;
neighbors_y[3] = yy + 1;
neighbors_x[4] = xx - 1;
neighbors_y[4] = yy;
neighbors_x[5] = xx - 1;
neighbors_y[5] = yy - 1;

for (var i = 0; i < 6; i++) {
	if (get_tile(neighbors_x[i], neighbors_y[i]) == 0) {
		create_tile(neighbors_x[i], neighbors_y[i]);
	}
}