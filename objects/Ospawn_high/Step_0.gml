if(!instance_exists(spawned_instance))

{
	spawned_instance = noone;
	timer += 1;
	
	if (timer >= respawn_time)
	{
		timer = 0;
		
		if(random(1) < spawn_change)
		{
			spawned_instance = instance_create_layer(x, y, R_game, spawn_object);
		}
	}
	
}