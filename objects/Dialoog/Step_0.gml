timer++;

if (timer >= timer_max) {
	timer = 0;
	dialog_index++;
	
    if (dialog_index >= array_length(dialog)) {
        room_goto(R_game); // naar R_game
    }
}