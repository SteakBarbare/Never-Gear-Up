depth = -100;
image_speed = 0;
var thisRobot = instance_find(objPj, 0).id;

if(image_index != 0)
{
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 860, 246, 1550, 351) && mouse_check_button_pressed(mb_left))
	{
		selected = 0
	}
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 860, 410, 1550, 531) && mouse_check_button_pressed(mb_left))
	{
		selected = 1;
	}
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 860, 574, 1550, 686) && mouse_check_button_pressed(mb_left))
	{
		selected = 2;
	}
	
	if(selected != -1 && point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 1088, 859, 1550, 1420))
	{
		mouseOn = true;
		
		achat = mouse_check_button_pressed(mb_left);	
		
	}
	else
	{
		mouseOn = false;
	}

}