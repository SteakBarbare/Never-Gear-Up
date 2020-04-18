if(instance_exists(objEnemyTemplate))
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
	
		else if(objEnemyTemplate.isActive = false)
		{
		
			turnTimer = turnTimer + robotSpeed;
		}
	}
	else if (robotLife <= 0)
	{
		objEnemyTemplate.win = true;
		robotLife = 0;
	}
}