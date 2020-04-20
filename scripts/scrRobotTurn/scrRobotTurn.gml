/// @function          srcRobotTurn;
/// @param  {object}   activeRobotTurn        PJ or Ennemies
/// @param  {object}   opponent      PJ or Ennemies
/// @description       entire turn execution

var activeRobot, opponent, targetPart;

activeRobot = argument[0];
opponent = argument [1];
targetPart = 0;

activeRobot.turnTimer = 0;



Dodge = irandom(100 );


if(Dodge > opponent.robotDodge)
{
	targetPart = irandom(5);
	if(opponent.robotPart[0, targetPart] > 0)
	{
		opponent.robotPart[0, targetPart] -= activeRobot.robotDamage;
		opponent.robotLife -= activeRobot.robotDamage;
		
		if(opponent.robotPart[0, targetPart] <= 0)
		{
			scrBrokenPart(opponent, targetPart);
			opponent.isBroken = true;
		}
		
	}

	else 
	{
		opponent.robotLife -= activeRobot.robotDamage * 1.5;
	}

	
}



opponent.diceDodge = Dodge; 

return activeRobot-opponent; 




