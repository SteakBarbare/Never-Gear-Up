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
if(instance_exists(objEnemyTemplate) && !opponentRobot.dash)
{
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
		}
	}
	else if(dash && animTime < 60)
	{
		if(animTime < 30)
		{	
			x = x + (3 + v);
			v += 0.250
			animTime++;
		}
		else if (animTime == 30)
		{
			v = 0;
			x = x - (3 +  v);
			opponentRobot.x +=20;
			scrRobotTurn(thisRobot, opponentRobot);
			animTime++;
			v += 0.250;
		}
		else if (animTime > 30)
		{
			x = x - (3 + v);
			v += 0.250;
			animTime++;
		}
	
	}
	else if(animTime >= 60)
	{
		animTime = 0;
		opponentRobot.x -=20;
		v = 0;
		dash = false;
	}
}
}