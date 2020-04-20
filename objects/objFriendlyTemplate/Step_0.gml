if(activate)
{
	var opponentRobot = instance_find(objEnemyTemplate, 0).id;
	var thisRobot = id;

	#region Pause
	if(keyboard_check_released(vk_space))
	{
	   if(!combat && !dead)
	   {
		   audio_play_sound(FIGHT, 1, false);
		   combat = true;
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
		scrStatsUpdate(thisRobot);
	
		if(instance_exists(objFriendlyTemplate) && !opponentRobot.dash)
		{
			
			#region TimerAndWin
			if(!dash)
			{
				if(!win && robotLife > 0)
				{
	
					if(turnTimer >= turnMaxTimer)
					{
	
						isActive = true;
						
						if(!damage) //prevent from attacking multiple times
						{
							scrRobotTurn(thisRobot, opponentRobot); //turn damage calculation
							damage = true;
						}
						
						
				
						dash = true;
			
						isActive = false;
	
		
					}
	
					else if(!opponentRobot.isActive || !opponentRobot.dash)
					{
						turnTimer = turnTimer + robotSpeed;
						robotNewTimer = turnTimer;
					}
				}
				else if (robotLife <= 0)
				{
					if(deathSound)
					{
						audio_play_sound(LOSER, 1, false);
						deathSound = false;
						audio_play_sound(sndDeath, 10, false);

					}
					opponentRobot.win = true;
					robotLife = 0;
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
					
				}
				else if(image_index < 16) //return start
				{
					hsp = 0;
					if(!update)
					{
						opponentRobot.robotNewLife = opponentRobot.robotLife;
						robotNewTimer = turnTimer;
						update = true;
						
						audio_play_sound(asset_get_index("sndSlash" + string(irandom(4))), 5, false);
						var sound = irandom(15);
						switch(sound)
						{
							case 0:
							audio_play_sound(Damage1, 1, false);
							break;
							
							case 1:
							audio_play_sound(Damage2, 1, false);
							break;
							
							case 2:
							audio_play_sound(Damage3, 1, false);
							break;
							
							default:
							break;
							
						}
					}
					
				}
				else if(image_index < 19 && x > xOriginal) //return to original position
				{
					x-= 12;
				}
				else if(image_index >= 19)
				{
					x = xOriginal; //replace the player robots
					hsp = 0; 
					opponentRobot.x += 2;
					dash = false; //end attack phase
					damage = false; //prevent from attacking multiple times
					update = false
				}
			
			}
			#endregion
		
		}
	}
	#endregion
}

if(robotLife / robotLifeMax <= 0.5 && !dead){
	if(alarm[0] <= -1){
		alarm[0] = irandom(room_speed*2);
	}
}