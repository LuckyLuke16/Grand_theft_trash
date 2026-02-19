//movement
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

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












