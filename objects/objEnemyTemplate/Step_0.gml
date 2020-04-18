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
if(instance_exists(objFriendlyTemplate) && !opponentRobot.Dash)
{
	if(Dash == false)
	{
		if(win == false && robotLife > 0)
		{
	
			if(turnTimer >= turnMaxTimer)
			{
	
				isActive = true;
				
				Dash = true;
			
				isActive = false;
	
		
			}
	
			else if(!opponentRobot.isActive || !opponentRobot.Dash)
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
	else if(Dash && animTime < 120)
	{
		if(animTime < 60)
		{	
			x = x - (1 + v);
			v += 0.05;
			animTime++;
		}
		else if (animTime == 60)
		{
			v = 0;
			x = x + (1 +  v);
			scrRobotTurn(thisRobot, opponentRobot);
			opponentRobot.x -=20;
			animTime++;
			v += 0.05;
		}
		else if (animTime > 60)
		{
			x = x + (1 + v);
			v += 0.05;
			animTime++;
		}
	
	}
	else if(animTime >= 120)
	{
		animTime = 0;
		v = 0;
		opponentRobot.x +=20;
		Dash = false;
	}
}
}