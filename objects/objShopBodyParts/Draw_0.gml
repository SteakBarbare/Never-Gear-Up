var clickLeft = mouse_check_button(mb_left);

draw_self();


if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 474, 237, 612, 387)){
	
	if(clickLeft){
		image_index = 1;
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 432, 420, 570, 570)){
	if(clickLeft){
		image_index = 2;
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 276, 480, 414, 630)){
	if(clickLeft){
		image_index = 3;
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 312, 732, 450, 882)){
	if(clickLeft){
		image_index = 4;
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 600, 543, 738, 693)){
	if(clickLeft){
		image_index = 5;
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 528, 732, 666, 882)){
	if(clickLeft){
		image_index = 6;
	}
}else{
	if(clickLeft){
		image_index = 0;
	}
}


draw_sprite_ext(sprite_index, 0, 0, 0, 1, 1, 0, c_white, 0.5);
