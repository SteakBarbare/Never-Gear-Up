switch(step)
{
	
	case 0:
	
		var robotEnemy0 = instance_find(objEnemy, 0);
		var robotEnemy1 = instance_find(objEnemy, 1);
		var robotEnemy2 = instance_find(objEnemy, 2);
		var robotEnemy3 = instance_find(objEnemy, 3);
	
		playerRobot.depth = 100;

		mOnButton0 = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 63, 61, 716, 473);
		
		if(mouse_check_button_pressed(mb_left) && mOnButton0)
		{
			pickEnnemy = 0;
		}
		
		mOnButton1 = point_in_rectangle(window_mouse_get_x()/3, window_mouse_get_y()/3, 294, 22, 512, 160);
		
		if(mouse_check_button_pressed(mb_left) && mOnButton1)
		{
			pickEnnemy = 1;
		}
		
		mOnButton2 = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 62, 585, 717, 985);
		
		if(mouse_check_button_pressed(mb_left) && mOnButton2)
		{
			pickEnnemy = 2;
		}
		
		mOnButton3 = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 880, 578, 1533, 981);
		
		if(mouse_check_button_pressed(mb_left) && mOnButton3)
		{
			pickEnnemy = 3;
		}
		
		mOnButtonValidate = point_in_rectangle(window_mouse_get_x()/3, window_mouse_get_y()/3, 530, 162, 627, 195)
		
		
		if(mouse_check_button_pressed(mb_left) && mOnButtonValidate)
		{
			switch(pickEnnemy)
			{
				case 0:
					opponentRobot = robotEnemy0;
					
					instance_destroy(robotEnemy1);
					instance_destroy(robotEnemy2);
					instance_destroy(robotEnemy3);
					break;
					
				case 1:
					opponentRobot = robotEnemy1;
					
					instance_destroy(robotEnemy0);
					instance_destroy(robotEnemy2);
					instance_destroy(robotEnemy3);
					break;
					
				case 2:
					opponentRobot = robotEnemy2;
					opponentRobot.persistent = true;
					
					instance_destroy(robotEnemy1);
					instance_destroy(robotEnemy0);
					instance_destroy(robotEnemy3);
					break;
					
				case 3:
					opponentRobot = robotEnemy3;
					
					instance_destroy(robotEnemy1);
					instance_destroy(robotEnemy2);
					instance_destroy(robotEnemy0);
					break;
			}
			pickEnnemy = -1;
			step = 1;
		}
		break;
		
		case 1:
		    playerRobot.image_xscale = 2;
			playerRobot.image_yscale = 2;
			playerRobot.x = 324;
			playerRobot.y = 159;
			opponentRobot.depth = 100;
			
			mOnButtonShop = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 800, 855, 1126, 944);
			show_debug_message("x")
			show_debug_message(window_mouse_get_x())
			show_debug_message("y")
			show_debug_message(window_mouse_get_y())
			
			if(mOnButtonShop && mouse_check_button_pressed(mb_left))
			{
				
			}
			
			mOnButtonFight = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 1692, 434, 1895, 620);
			
			if(mOnButtonFight && mouse_check_button_pressed(mb_left))
			{
				room_goto(Arena);
			}
			
			
			
		
		
}