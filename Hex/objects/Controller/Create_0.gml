randomize();

//manage lists & globals
selection = ds_list_create();
globalvar grid;
grid = ds_map_create();
globalvar GAME_WIDTH;
GAME_WIDTH = 1200;
globalvar GAME_HEIGHT;
GAME_HEIGHT= 800;

//set up view window
x = GAME_WIDTH / 2;
y = GAME_HEIGHT / 2;
view_enabled = true;
view_visible[0] = true;
globalvar cam;
cam = camera_create();
view_set_visible(0, true);
view_set_wport(0, GAME_WIDTH);
view_set_hport(0, GAME_HEIGHT);
view_camera[0] = camera_create_view(0, 0, GAME_WIDTH, GAME_HEIGHT, 0, -1, -1, -1, 0, 0);

//spawn in some sample tiles
create_tile(4, 4);

//test getneighbors
