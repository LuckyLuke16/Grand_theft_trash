//movement
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
//input to movement
if (up_key)
{
    speed += acc;    
}
if (down_key)
{
    speed -= acc;
}
if (left_key)
{
    direction += speed*turnradius;
}
if (right_key)
{
    direction -= speed*turnradius;
}
//braking
if !up_key and !down_key
{
    if friction < 1 friction += 0.001;
}
else friction = 0;
//speed limiter
if speed > forwardspd speed = forwardspd;
if speed < backwardspd speed = backwardspd;
//image angle
image_angle = direction









