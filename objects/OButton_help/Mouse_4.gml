// Inherit the parent event
event_inherited();

if (instance_exists(ocontrols)) {
	instance_destroy(ocontrols);
}
else {
	instance_create_layer(room_width / 2, room_height - 100	, "Instances", ocontrols);

}
room_goto(R_game_help)