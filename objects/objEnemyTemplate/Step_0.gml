if(instance_exists(objFriendlyTemplate))
{
	
	if(turnTimer >= turnMaxTimer)
	{
	
	isActive = true;
	turnTimer = 0;
	//Attack
	isActive = false;
	
	
	}
	
	else if(objFriendlyTemplate.isActive = false)
	{
		
		turnTimer = turnTimer + robotSpeed;
	}
}
