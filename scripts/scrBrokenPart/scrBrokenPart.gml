/// @function          broke;
/// @param  {object}   robot       PJ or Ennemies
/// @param  {int}   robotPartBroke       Indicate which part need modification
/// @description       set the stats modifier due to broken parts

var robot = argument[0];

var part = argument[1];

switch(part)
{
		//Head
		case 0:
			robot.robotPart[0, 0] = 0;
			robot.robotPart[1, 0] = "Broken";		
			robot.robotPart[2, 0] = 0;
			break;
			
		
		//Body	
		case 1:
			robot.robotPart[0, 1] = 0;
			robot.robotPart[1, 1] = "Broken";
			robot.robotPart[2, 1] = 0;
			break;
		
		//rightArm
		case 2:
			robot.robotPart[0, 2] = 0;
			robot.robotPart[1, 2] = "Broken";

			robot.robotPart[2, 2] = 0;
			break;
		
		//leftArm
		case 3:
			robot.robotPart[0, 3] = 0;
			robot.robotPart[1, 3] = "Broken";
			robot.robotPart[2, 3] = 0;
			break;
		
		//rightLeg
		case 4:
			robot.robotPart[0, 4] = 0;
			robot.robotPart[1, 4] = "Broken";
			robot.robotPart[2, 4] = 0;
			break;
			
		//rightLeg
		case 5:
			robot.robotPart[0, 5] = 0;
			robot.robotPart[1, 5] = "Broken";
			robot.robotPart[2, 5] = 0;

			break;



}