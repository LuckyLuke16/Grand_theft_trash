// Get the collision normal vector (direction from other to self)
var nx = x - other.x;
var ny = y - other.y;
var dist = sqrt(nx*nx + ny*ny);

if (dist == 0) { nx = 1; ny = 0; dist = 1; }

nx /= dist;
ny /= dist;

var vx1 = lengthdir_x(speed, direction);
var vy1 = lengthdir_y(speed, direction);
var vx2 = lengthdir_x(other.speed, other.direction);
var vy2 = lengthdir_y(other.speed, other.direction);

var p1 = dot_product(vx1, vy1, nx, ny);
var p2 = dot_product(vx2, vy2, nx, ny);

var restitution = 0.5;

// Only slow down / transfer speed, don't flip direction
speed = max(0, speed - p1 * restitution);
other.speed = max(0, other.speed + p1 * restitution);

// Separate slowly
x += nx * 1;
y += ny * 1;
other.x -= nx * 0.5;
other.y -= ny * 0.5;

// all the physics code +
knockback_timer = 13;
other.knockback_timer = 13;