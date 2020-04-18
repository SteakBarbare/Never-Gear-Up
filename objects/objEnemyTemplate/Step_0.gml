if(isActive && turnTimer < turnMaxTimer && instance_exists(objFriendlyTemplate))
{
	turnTimer++;
	
}
else
{
	isActive = false;
	objFriendlyTemplate.isActive = true;
}