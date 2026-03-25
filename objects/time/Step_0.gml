if (!game_over) {
	global.timer -= 1;
	
	if (global.timer <= 0) {
	game_over = true;
	room_goto(R_game_over);
	}
}