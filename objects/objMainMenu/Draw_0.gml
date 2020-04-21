draw_self();

var clickLeft = mouse_check_button(mb_left);

if(!isTutorial){
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 150, 487, 571, 986)){
		if(isVolumeOn){
			image_index = 2;
		}else{
			image_index = 3;
		}
	
		if(clickLeft){
			isTutorial = true;
			inputPrevent = room_speed / 2;
		}
	
	}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 864, 589, 1075, 795)){
		if(clickLeft){
			if(isVolumeOn){
				isVolumeOn = false;
				audio_master_gain(0);
			}else{
				isVolumeOn = true;
				audio_master_gain(1);
			}
		}
	}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 1384, 487, 1796, 986)){
		if(isVolumeOn){
			image_index = 4;
		}else{
			image_index = 5;
		}
	
		if(clickLeft){
			game_end();
		}
	
	}else{
		if(isVolumeOn){
			image_index = 1;
		}else{
			image_index = 2;
		}
	}
}else{
	draw_sprite(sprTutorial, 0, 0, 0);
	if(keyboard_check(vk_anykey) || clickLeft && inputPrevent <= 0){
		room_goto(Workshop);
	}
}

if(inputPrevent > 0){
	inputPrevent--;
}