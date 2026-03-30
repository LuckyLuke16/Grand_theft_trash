if (!instance_exists(my_instance)) {
	if (spawn_timer == -1) {
		spawn_timer = respawn_delay * game_get_speed(gamespeed_fps);
	}
	
	if (spawn_timer > 0) {
		spawn_timer -= 1;
	}
	if (spawn_timer == 0) {
        my_instance = instance_create_layer(x, y, "Instances", object_to_spawn);
		show_debug_message("afval_spawned");
        spawn_timer = -1;
	}
}