var robotEnemy0 = instance_find(objEnemy, 0);
var robotEnemy1 = instance_find(objEnemy, 1);
var robotEnemy2 = instance_find(objEnemy, 2);
var robotEnemy3 = instance_find(objEnemy, 3);

//color stats
var colorGreen = make_color_rgb(90, 255, 0);
var colorOrange = make_color_rgb(255, 150, 0);
var colorRed = make_color_rgb(255, 50, 50);

switch(step)
{ 
	case 0:
		draw_sprite_ext(sprEnnemiesInterface, 0, 0, 0, 1, 1, 0, -1, 1);
		
		
		
		//name e0
		draw_text_transformed_color(27, 25, robotEnemy0.robotN, 1, 1, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(23, 40, chr(34) + robotEnemy0.robotT + chr(34), 0.8, 0.8, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		
		//stats e0
		draw_text_transformed_color(90, 60, string(robotEnemy0.robotLife), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(90, 76, string(robotEnemy0.robotSpeed), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(90, 93, string(robotEnemy0.robotDamage), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(90, 112, string(robotEnemy0.robotDodge), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(90, 130, string(robotEnemy0.bounty), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		
		
		//name e1
		draw_text_transformed_color(300, 25, robotEnemy1.robotN, 1, 1, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(297, 40, chr(34) + robotEnemy1.robotT + chr(34), 0.8, 0.8, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		
		//stats e1
		draw_text_transformed_color(363, 60, string(robotEnemy1.robotLife), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(363, 76, string(robotEnemy1.robotSpeed), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(363, 93, string(robotEnemy1.robotDamage), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(363, 112, string(robotEnemy1.robotDodge), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(363, 130, string(robotEnemy1.bounty), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		
		//name e2
		draw_text_transformed_color(27, 204, robotEnemy2.robotN, 1, 1, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(23, 219, chr(34) + robotEnemy2.robotT + chr(34), 0.8, 0.8, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		
		//stats e2
		draw_text_transformed_color(90, 238, string(robotEnemy2.robotLife), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(90, 255, string(robotEnemy2.robotSpeed), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(90, 273, string(robotEnemy2.robotDamage), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(90, 290, string(robotEnemy2.robotDodge), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(90, 305, string(robotEnemy2.bounty), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
				
		//name e3
		draw_text_transformed_color(300, 204, robotEnemy3.robotN, 1, 1, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(297, 219, chr(34) + robotEnemy3.robotT + chr(34), 0.8, 0.8, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		
		//stats e3
		draw_text_transformed_color(363, 238, string(robotEnemy3.robotLife), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(363, 255, string(robotEnemy3.robotSpeed), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(363, 273, string(robotEnemy3.robotDamage), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(363, 290, string(robotEnemy3.robotDodge), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		draw_text_transformed_color(363, 305, string(robotEnemy3.bounty), 0.7, 0.7, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
		
		
		if(mOnButton0)
		{
			draw_sprite(sprEnnemyButton, 0, 265, 90);
		}
		else if (mOnButton1)
		{
			draw_sprite(sprEnnemyButton, 0, 540, 90);
		}
		else if (mOnButton2)
		{
			draw_sprite(sprEnnemyButton, 0, 265, 270);
		}
		else if (mOnButton3)
		{
			draw_sprite(sprEnnemyButton, 0, 540, 270);
		}
		
		switch(pickEnnemy)
		{
			case 0:
				draw_sprite(sprEnnemyButton, 1, 265, 90);
				draw_sprite(sprChooseOneButton,0, 0, 0);
				break;
				
			case 1:
				draw_sprite(sprEnnemyButton, 1, 540, 90);
				draw_sprite(sprChooseOneButton,0, 0, 0);
				break;
				
			case 2:
				draw_sprite(sprEnnemyButton, 1, 265, 270);
				draw_sprite(sprChooseOneButton,0, 0, 0);
				break;
				
			case 3:
				draw_sprite(sprEnnemyButton, 1, 540, 270);
				draw_sprite(sprChooseOneButton,0, 0, 0);
				break;
		}
		
		
		break;
		
		
		case 1:
		
			draw_sprite(sprWorkshopStatsMenu, 0, 0, 0);
			//head
			if(playerRobot.robotPart[0, 0] < 10)
			{
				c = colorRed;
			}
			else if(playerRobot.robotPart[0, 0] < 15)
			{
				c = colorOrange;
			}
			else
			{
				c = colorGreen
			}
			draw_text_transformed_color(184, 93, playerRobot.robotPart[0, 0], 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(184, 110, playerRobot.robotPart[2, 0], 0.7, 0.7, 0, c, c, c, c, 1);
			
			//body
			if(playerRobot.robotPart[0, 1] < 10)
			{
				c = colorRed;
			}
			else if(playerRobot.robotPart[0, 1] < 15)
			{
				c = colorOrange;
			}
			else
			{
				c = colorGreen;
			}
			draw_text_transformed_color(466, 93, playerRobot.robotPart[0, 1], 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(466, 110, playerRobot.robotPart[2, 1], 0.7, 0.7, 0, c, c, c, c, 1);
			
			//Right Arm
			if(playerRobot.robotPart[0, 2] < 10)
			{
				c = colorRed;
			}
			else if(playerRobot.robotPart[0, 2] < 15)
			{
				c = colorOrange;
			}
			else
			{
				c = colorGreen;
			}
			draw_text_transformed_color(466, 175, playerRobot.robotPart[0, 2], 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(466, 192, playerRobot.robotPart[2, 2], 0.7, 0.7, 0, c, c, c, c, 1);
			
			//Left Arm
			if(playerRobot.robotPart[0, 3] < 10)
			{
				c = colorRed;
			}
			else if(playerRobot.robotPart[0, 3] < 15)
			{
				c = colorOrange;
			}
			else
			{
				c = colorGreen;
			}
			draw_text_transformed_color(184, 176, playerRobot.robotPart[0, 3], 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(184, 193, playerRobot.robotPart[2, 3], 0.7, 0.7, 0, c, c, c, c, 1);
			
			//Right Leg
			if(playerRobot.robotPart[0, 4] < 10)
			{
				c = colorRed;
			}
			else if(playerRobot.robotPart[0, 4] < 15)
			{
				c = colorOrange;
			}
			else
			{
				c = colorGreen;
			}
			draw_text_transformed_color(466, 254, playerRobot.robotPart[0, 4], 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(466, 271, playerRobot.robotPart[2, 4], 0.7, 0.7, 0, c, c, c, c, 1);
			
			//Left Leg
			if(playerRobot.robotPart[0, 5] < 10)
			{
				c = colorRed;
			}
			else if(playerRobot.robotPart[0, 5] < 15)
			{
				c = colorOrange;
			}
			else
			{
				c = colorGreen;
			}
			draw_text_transformed_color(184, 254, playerRobot.robotPart[0, 5], 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(184, 271, playerRobot.robotPart[2, 5], 0.7, 0.7, 0, c, c, c, c, 1);
			
			//ennemyStats
			
			c = make_color_rgb(210, 0, 0);
			
			draw_text_transformed_color(608, 58, int64(opponentRobot.robotLifeMax), 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(608, 76, int64(opponentRobot.robotDodge), 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(608, 96, int64(opponentRobot.robotSpeed), 0.7, 0.7, 0, c, c, c, c, 1);
			draw_text_transformed_color(608, 116, int64(opponentRobot.robotDamage), 0.7, 0.7, 0, c, c, c, c, 1);
			
			if(mOnButtonShop)
			{
				draw_sprite(sprWorkshopStatsButtonShop, 0, 0, 0);	
			}
			
			if(mOnButtonFight)
			{
				draw_sprite(sprRedButton, 0, 0, 0);	
			}
			
			break;
		
		// Shop Draw
		case 2:
			draw_sprite(sprShopBackground, 0, 0, 0);
			
			if(!instance_exists(objShopBodyParts)){
				instance_create_depth(0, 0, -100, objShopBodyParts);
			}
			
			
			playerRobot.x = room_width * 0.27;
			playerRobot.y = room_height * 0.45;
			
			draw_text(room_width * 0.2, 48, "Money: "  + string(playerRobot.money));
			
			opponentRobot.image_alpha = 0;
			
			break;
			
}