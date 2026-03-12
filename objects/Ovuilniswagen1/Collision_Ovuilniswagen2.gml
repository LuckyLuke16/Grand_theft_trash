// Store your values
var _my_speed = speed;
var _my_dir = direction;

// Swap with other car
speed = other.speed;
direction = other.direction;
other.speed = _my_speed;
other.direction = _my_dir;

// Prevent sticking
while (place_meeting(x, y, other)) {
    x += sign(x - other.x);
    y += sign(y - other.y);
}