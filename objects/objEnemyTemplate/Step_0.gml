if(keyboard_check_released(vk_space))
{
   if(!combat)
   {
	   combat = true;
   }
   else
   {
	   combat = false;
   }
}

var opponentRobot = instance_find(objFriendlyTemplate, 0).id;
var thisRobot = id;
if(combat)
{
if(instance_exists(objFriendlyTemplate) && !opponentRobot.dash)
{
	if(dash == false)
	{
		if(win == false && robotLife > 0)
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
		}
	}
	else if(dash && animTime < 60)
	{
		if(animTime < 30)
		{	
			x = x - (3 + hsp);
			hsp += 0.250
			animTime++;
		}
		else if (animTime == 30)
		{
			hsp = 0;
			x = x + (3 +  hsp);
			opponentRobot.x -=20;
			scrRobotTurn(thisRobot, opponentRobot);
			animTime++;
			hsp += 0.250;
		}
		else if (animTime > 30)
		{
			x = x + (3 + hsp);
			hsp += 0.250;
			animTime++;
		}
	
	}
	else if(animTime >= 60)
	{
		animTime = 0;
		opponentRobot.x +=20;
		hsp = 0;
		dash = false;
	}
}
}

