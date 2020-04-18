if(isActive && turnTimer < turnMaxTimer && instance_exists(objEnemyTemplate))
{
	turnTimer++;
}
else
{
	isActive = false;
	objEnemyTemplate.isActive = true;
}