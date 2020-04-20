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

targetPart = irandom(5);
opponent.targetedPart = targetPart;
if(Dodge > opponent.robotDodge)
{
	if(opponent.robotPart[0, targetPart] > 0)
	{
		opponent.robotPart[0, targetPart] -= activeRobot.robotDamage;
		opponent.robotLife -= activeRobot.robotDamage;
		opponent.damageTaken = activeRobot.robotDamage;
		opponent.isCritical = false;
		
		if(opponent.robotPart[0, targetPart] <= 0)
		{
			scrBrokenPart(opponent, targetPart);
			opponent.isBroken = true;
		}
		
	}

	else 
	{
		opponent.robotLife -= activeRobot.robotDamage * 1.5;
		opponent.damageTaken = round(activeRobot.robotDamage * 1.5);
		opponent.isCritical = true;
	}

	
}



opponent.diceDodge = Dodge; 

return activeRobot-opponent; 




