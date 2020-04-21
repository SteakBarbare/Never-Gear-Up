var playerRobot = instance_find(objPj, 0).id;
var robot = playerRobot;
if(ini)
{
	robot.robotLifeMax = 100 + robot.robotPart[3, 0]/2 + robot.robotPart[3, 1]/2 + robot.robotPart[3, 2]/2 + robot.robotPart[3, 3]/2 + robot.robotPart[3, 4]/2 + robot.robotPart[3, 5]/2;
	iniRobotDamage = playerRobot.robotDamage;
	iniRobotDodge = playerRobot.robotDodge;
	iniRobotSpeed = playerRobot.robotSpeed;
	
	ini = false;
}
