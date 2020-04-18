/// @function          turn;
/// @param  {object}   activeRobotTurn        PJ or Ennemies
/// @param  {object}   opponent      PJ or Ennemies
/// @description       entire turn execution

var activeRobot, opponent;

activeRobot = argument[0];
opponent = argument [1];

activeRobot.turnTimer = irandom(robotSpeed);

targetPart = irandom(5);
Dodge = irandom(100);
if(Dodge > opponent.robotDodge)
{
	if(opponent.robotPart[targetPart, 0] > 0)
	{
		opponent.robotPart[targetPart, 0] -= activeRobot.robotDamage;
		opponent.robotLife -= activeRobot.robotDamage;
		if(opponent.robotPart[targetPart, 0] <= 0)
		{
			scrBrokenPart(opponent, targetPart);
		}
	}

	else 
	{
		opponent.robotLife -= activeRobot.robotDamage * 1.5;
	}

	if(activeRobot.x < 320)
	{
		activeRobot.x+=10;	
	}
	else
	{
		activeRobot.x-=10;	
	}
}

return activeRobot-opponent; 




