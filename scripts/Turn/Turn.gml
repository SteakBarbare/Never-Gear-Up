/// @function          turn;
/// @param  {object}   activeRobotTurn        PJ or Ennemies
/// @param  {object}   opponent      PJ or Ennemies
/// @description       entire turn execution

var activeRobot, opponent;

activeRobot = argument[0];
opponent = argument [1];

activeRobot.turnTimer = irandom(robotSpeed);

targetPart = irandom(6);
Dodge = irandom(100);
if(Dodge > opponent.robotDodge)
{
	if(opponent.robotLifePart[targetPart] > 0)
	{
		opponent.robotLifePart[targetPart] -= activeRobot.robotDamage;
		opponent.robotLife -= activeRobot.robotDamage;
	}

	else 
	{
		opponent.robotLife -= activeRobot.robotDamage * 1.5;
	}

	if(activeRobot.x < 320)
	{
		activeRobot.x++;	
	}
	else
	{
		activeRobot.x--;	
	}
}

return activeRobot-opponent; 




