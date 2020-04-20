/// @function          StatsUpdate;
/// @param  {object}   robot       PJ or Ennemies
/// @description       calculate the stats of the machine

var thisRobot = argument[0];

thisRobot.robotSpeed = 1 + thisRobot.robotPart[2, 4] + thisRobot.robotPart[2, 5] + thisRobot.speedBonus;

thisRobot.robotDodge = 5 + thisRobot.robotPart[2, 0] + thisRobot.robotPart[2, 1] + thisRobot.dodgeBonus;

thisRobot.robotDamage = 5 + thisRobot.robotPart[2, 2] + thisRobot.robotPart[2, 3] + thisRobot.damageBonus;

return thisRobot;

