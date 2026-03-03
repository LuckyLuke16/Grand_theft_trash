// Huidige camera-waarden
var current_x = camera_get_view_x(cam);
var current_y = camera_get_view_y(cam);

// Draairichting corrigeren (90 graden offset)
var target_angle = -Ovuilniswagen1.direction + 90;

// Offset in rijrichting (camera kijkt vooruit)
var offset_dist = 150;
var offset_dir = Ovuilniswagen1.direction;

var offset_x = lengthdir_x(offset_dist, offset_dir);
var offset_y = lengthdir_y(offset_dist, offset_dir);

// Doelwaarden
var target_x = Ovuilniswagen1.x + offset_x - camera_get_view_width(cam) / 2;
var target_y = Ovuilniswagen1.y + offset_y - camera_get_view_height(cam) / 2;

// Vloeiend volgen
var smooth_x = lerp(current_x, target_x, 1);
var smooth_y = lerp(current_y, target_y, 1);

// Camera bijwerken
camera_set_view_pos(cam, smooth_x, smooth_y);
camera_set_view_angle(cam, target_angle);

//======================================================//
