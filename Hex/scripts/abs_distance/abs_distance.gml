///abs_distance(Point1, Point2);

var a = argument[0];
var b = argument[1];

return (abs(a.cube_x - b.cube_x) + abs(a.cube_y - b.cube_y) + abs(a.cube_z - b.cube_z)) / 2;