timer -= 1;
show_debug_message(timer);

if (timer <= 0)
{
	room_goto(R_gameover);

}

if (keyboard_check_pressed(vk_enter)) {
    global.punten_totaal_wagen_groen = 0;
    global.punten_totaal_wagen_blauw = 0;
    room_goto(R_game_intro); // verander naar jouw spel room naam
}