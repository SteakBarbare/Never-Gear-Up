/// @function          srcRobotTurn;
/// @param  {object}   activeRobotTurn        PJ or Ennemies
/// @param  {object}   opponent      PJ or Ennemies
/// @description       entire turn execution

var activeRobot, opponent;

activeRobot = argument[0];
opponent = argument [1];

activeRobot.turnTimer = 0;

targetPart = irandom(5);
Dodge = irandom(100);
if(Dodge > opponent.robotDodge)
{
	if(opponent.robotPart[0, targetPart] > 0)
	{
		opponent.robotPart[0, targetPart] -= activeRobot.robotDamage;
		opponent.robotLife -= activeRobot.robotDamage;
		if(opponent.robotPart[0, targetPart] <= 0)
		{
			scrBrokenPart(opponent, targetPart);
		}
	}

	else 
	{
		opponent.robotLife -= activeRobot.robotDamage * 1.5;
	}

	
}

return activeRobot-opponent; 




