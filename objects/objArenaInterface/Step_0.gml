var playerRobot = instance_find(objPj, 0).id;
var robot = playerRobot;
if(ini)
{
	iniRobotDamage = playerRobot.robotDamage;
	iniRobotDodge = playerRobot.robotDodge;
	iniRobotSpeed = playerRobot.robotSpeed;
	
	ini = false;
}
