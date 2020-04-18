if(instance_exists(objEnemyTemplate))
{
	if(win == false && robotLife > 0)
	{
	
		if(turnTimer >= turnMaxTimer)
		{
	
			isActive = true;
			scrRobotTurn(objFriendlyTemplate, objEnemyTemplate);
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