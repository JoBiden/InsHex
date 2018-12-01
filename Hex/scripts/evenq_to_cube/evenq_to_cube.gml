///evenq_to_cube()

cube_x = col;
cube_z = row - (col + (col & 1)) / 2;
cube_y = -cube_x - cube_z;

return;