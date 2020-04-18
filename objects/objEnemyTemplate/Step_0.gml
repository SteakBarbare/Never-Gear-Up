if(instance_exists(objFriendlyTemplate))
{
	if(win == false && robotLife > 0)
	{
	
		if(turnTimer >= turnMaxTimer)
		{
	
			isActive = true;
			scrRobotTurn(objEnemyTemplate, objFriendlyTemplate);
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