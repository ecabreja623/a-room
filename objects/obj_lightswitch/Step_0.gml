/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_lightswitch)) {
	
	if(global.poweron == 0) {	// only flip lightswitch while light is off
		global.counter++;
		global.visiblelight = 1;
		global.visiblebomb = 1;
		if (global.counter % 2 == 1) { //odd and on
			audio_play_sound(sound_light_flip_up, 7, 0);
		} else {
			audio_play_sound(sound_light_flip_down, 8, 0);
		}
	}
	else if (global.counter % 2 == 0) { // even and off
		global.counter++;
		audio_play_sound(sound_light_flip_up, 7, 0);	// flip lightswiitch up only once after power is on
	} else {
		global.counter++;
	}
	
	var str_print = string_format(global.counter, 1, 3);
	show_debug_message(str_print);
}

