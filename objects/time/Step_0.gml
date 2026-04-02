global.timer -= 1;
var restart = keyboard_check_pressed(ord("R")); 
if (restart){
	room_restart()	
}
if(global.timer = 0){
	room_goto(R_score);

}