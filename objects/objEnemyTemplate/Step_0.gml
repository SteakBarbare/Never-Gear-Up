if(instance_exists(objFriendlyTemplate))
{
	if(win == false && robotLife > 0)
	{
	
		if(turnTimer >= turnMaxTimer)
		{
	
			isActive = true;
			var opponentRobot = instance_find(objEnemyTemplate, 0).id;
			var thisRobot = id;
			scrRobotTurn(thisRobot, opponentRobot);
			isActive = false;
	
	
		}
	
		else if(objFriendlyTemplate.isActive = false)
		{
		
			turnTimer = turnTimer + robotSpeed;
		}
	}
	else if (robotLife <= 0)
	{
		objFriendlyTemplate.win = true;
		robotLife = 0;
	}
}