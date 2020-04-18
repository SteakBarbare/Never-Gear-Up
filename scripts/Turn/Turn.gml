/// @function          turn;
/// @param  {object}   activeRobotTurn        PJ or Ennemies
/// @param  {object}   opponent      PJ or Ennemies
/// @description       entire turn execution

var activeRobot, opponent;

activeRobot = argument[0];
opponent = argument [1];

activeRobot.timer = 0;

targetPart = irandom(6);

if(opponent.robotLifePart[targetPart] > 0)
{
	opponent.robotLifePart[targetPart] -= activeRobot.damage;
	opponent.robotLife -= activeRobot.damage;
}
else 
{
	opponent.robotLife -= activeRobot.damage * 1.5;
}

activeRobot.x + 10;

return 





