///on_screen(x, y)

var x1 = Controller.x - camera_get_view_width(view_camera[0]);
var y1 = Controller.y - camera_get_view_height(view_camera[0]);
var x2 = Controller.x + camera_get_view_width(view_camera[0]);
var y2 = Controller.y + camera_get_view_height(view_camera[0]);

return argument[1] > x1 && argument[1] < x2 && argument[0] > y1 && argument[0] < y2;