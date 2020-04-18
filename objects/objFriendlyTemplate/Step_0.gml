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
if(combat)
{
var opponentRobot = instance_find(objEnemyTemplate, 0).id;
var thisRobot = id;
if(instance_exists(objEnemyTemplate) && !opponentRobot.Dash)
{
	if(!Dash)
	{
		if(!win && robotLife > 0)
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
			x = x + (1 + v);
			v += 0.05;
			animTime++;
		}
		else if (animTime == 60)
		{
			v = 0;
			x = x - (1 +  v);
			opponentRobot.x +=20;
			scrRobotTurn(thisRobot, opponentRobot);
			animTime++;
			v += 0.05;
		}
		else if (animTime > 60)
		{
			x = x - (1 + v);
			v += 0.05;
			animTime++;
		}
	
	}
	else if(animTime >= 120)
	{
		animTime = 0;
		opponentRobot.x -=20;
		v = 0;
		Dash = false;
	}
}
}