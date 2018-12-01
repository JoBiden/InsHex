//offset_neighbors(point)
var input_row = argument[0].row;
var input_col = argument[0].col;

//direction look up table that might be best used globally?
var neighbors_table = [[[1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0], [0, 1]],
[[1, 1], [1, 0], [0, -1], [-1, 0], [-1, 1], [0, 1]]];

//creates array of all 6 neighbors coordinates, down-right at 0, up right at 5
var parity = (input_col & 1);
var neighbors = array_create(6, [input_row, input_col])
neighbors += neighbors_table[parity];

return neighbors;

//untested