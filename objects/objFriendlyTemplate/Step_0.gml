if(activate)
{
	var opponentRobot = instance_find(objEnemyTemplate, 0).id;
	var thisRobot = id;

	#region Pause
	if(keyboard_check_released(vk_space))
	{
	   if(!combat && !dead)
	   {
		   combat = true;
		   audio_play_sound(FIGHT, 1, false);
		   image_speed = 1;
	   }
	   else if(!combat)
	   {
			combat = true;
			image_speed = 1;
	   }
	   else if(!win)
	   {
		   combat = false;
		   image_speed = 0;
	   }
	   else if (win)
	   {
		    
			room_goto(Workshop);
	   }
	}
	#endregion

	#region MortalKombat
	if(combat)
	{
	
		if(instance_exists(objEnemyTemplate) && !opponentRobot.dash)
		{
			#region TimerAndWin
			if(!dash)
			{
				if(!win && robotLife > 0)
				{
	
					if(turnTimer >= turnMaxTimer)
					{
	
						isActive = true;
				
						dash = true;
			
						isActive = false;
	
		
					}
	
					else if(!opponentRobot.isActive || !opponentRobot.dash)
					{
		
						turnTimer = turnTimer + robotSpeed;
					}
				}
				else if (robotLife <= 0)
				{
					opponentRobot.win = true;
					robotLife = 0;
					dead = true;
				}
				
			
			}
			#endregion
		
			#region playAttaque
			else if(dash && image_index < 20 && image_index > 10) //when player is attacking(dash)
			{
				if (image_index > 10 && image_index < 13) //speed when the animation is attacking
				{
					x = x + 2 * (1 + hsp);
					hsp += 0.8; //hsp = horizontal speed
				}
				else if (image_index < 14) 
				{
					x = x +  2 * (1 + hsp);
					hsp += 0.9;
					
					if(!damage) //prevent from attacking multiple times
					{
						scrRobotTurn(thisRobot, opponentRobot); //turn damage calculation
						damage = true;
						opponentRobot.x +=2;
					}
				}
				else if(image_index < 16) //return start
				{
					hsp = 0;
				}
				else if(image_index < 19 && x > xOriginal) //return to original position
				{
					x-= 12;
				}
				else if(image_index >= 19)
				{
					x = xOriginal; //replace the player robots
					opponentRobot.x -= 2;
					hsp = 0; 
					dash = false; //end attack phase
					damage = false; //prevent from attacking multiple times
				}
			
			}
			#endregion
		
		}
	}
	#endregion
}