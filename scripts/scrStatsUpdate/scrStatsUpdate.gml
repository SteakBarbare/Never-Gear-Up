/// @function          StatsUpdate;
/// @param  {object}   robot       PJ or Ennemies
/// @description       calculate the stats of the machine

var thisRobot = argument[0];

thisRobot.robotSpeed = 2 + thisRobot.robotPart[2, 4]/2 + thisRobot.robotPart[2, 5]/2;

thisRobot.robotDodge = 10 + thisRobot.robotPart[2, 0]/2 + thisRobot.robotPart[2, 1]/2;

thisRobot.robotDamage = 10 + thisRobot.robotPart[2, 2]/2 + thisRobot.robotPart[2, 3]/2;

return thisRobot;

