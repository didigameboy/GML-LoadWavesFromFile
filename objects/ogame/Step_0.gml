/// @description Insert description here
// You can write your code in this editor
/*
if selected {
 y = mouse_y;
 x = mouse_x;
}

if mouse_check_button_pressed(mb_right) && selected selected = false;
*/

switch gamestate {
	case "init":
		curr_wave = 0;
		gamestate = "idle";
		str = LoadStringFromFile("test.csv");
		waves_str = Split(str,"\n");	
		num_waves = array_length_1d(waves_str);
	break;
	case "idle":
	break;
	case "wait":
		wait--;
		if wait < 0
			gamestate = next_state;
	break;
	case "loadLevel":
		gamestate = "idle";
		str = LoadStringFromFile("test.csv");
		show_debug_message("FILE test.csv Loaded");
		waves_str = Split(str,"\n");	
		num_waves = array_length_1d(waves_str);
	break;
	case "loadwave":
		if curr_wave < num_waves {
			scr_create_wave(waves_str[curr_wave]); //return timeout
			gamestate = "play"			
		}
	break;
	case "play":
			timeout--;
			if timeout < 0 || !instance_exists(oEnemy) {
				curr_wave++;
				gamestate = "loadwave";
			}
	break;
	
}