timer -= 1;
show_debug_message(timer);

if (timer <= 0)
{
	room_goto(R_game_over);

}