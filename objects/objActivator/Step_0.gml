if(instance_exists(objPj))
{
	var pjRobot = instance_find(objFriendlyTemplate, 0).id;
	pjRobot.activate = true;
}
if(instance_exists(objEnemy))
{
	var pjRobot = instance_find(objEnemyTemplate, 0).id;
	pjRobot.activate = true;
}
