if(!instance_exists(spawned_instance))

{
	timer += 1;
	
	if (timer >= respawn_time)
	{
		timer = 0;
		
		if(random(1) < spawn_change)
		{
			spawned_instance = instance_create_layer(x, y, Room1, spawn_object);
		}
	}
	
}