depth = -100;
image_speed = 0;

if(image_index != 0)
{
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 860, 246, 1550, 351) && mouse_check_button_pressed(mb_left))
	{
		isSelected1 = true;
		
		isSelected2 = false;
		
		isSelected3 = false;
	}
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 860, 410, 1550, 531) && mouse_check_button_pressed(mb_left))
	{
		isSelected1 = false;
		
		isSelected2 = true;
		
		isSelected3 = false;
	}
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 860, 574, 1550, 686) && mouse_check_button_pressed(mb_left))
	{
		isSelected1 = false;
		
		isSelected2 = false;
		
		isSelected3 = true;
	}

}