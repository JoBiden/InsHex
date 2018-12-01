//cube_to_evenq(cube):
    col = cube_x;
    row = cube_z + (cube_x + (cube_x & 1)) / 2;
    return;