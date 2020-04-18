if(instance_exists(objEnemyTemplate))
{
	
	if(turnTimer >= turnMaxTimer)
	{
	
	isActive = true;
	turnTimer = 0;
	//Attack
	isActive = false;
	
	}
	
	else if(objEnemyTemplate.isActive = false)
	{
		
		turnTimer = turnTimer + robotSpeed;
	}
}
