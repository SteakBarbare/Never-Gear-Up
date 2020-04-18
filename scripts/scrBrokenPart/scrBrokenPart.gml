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
			robot.robotPart[0, 1] = "empty";
			
			//robot.robotDamage -= robot.robotPart[0, 2] // remove bonus or malus
			robot.robotPart[0, 2] = -1;
			//robot.robotDamage -= robot.robotPart[0, 2] // add broken part malus
			
		
		//Body	
		case 1:
			robot.robotPart[1, 0] = 0;
			robot.robotPart[1, 1] = "empty";
			
			robot.robotDodge -= robot.robotPart[1, 2] // remove bonus or malus
			robot.robotPart[1, 2] = -1;
			robot.robotDodge -= robot.robotPart[1, 2] // add broken part malus
		
		//rightArm
		case 2:
			robot.robotPart[2, 0] = 0;
			robot.robotPart[2, 1] = "empty";
			
			robot.robotDamage -= robot.robotPart[2, 2] // remove bonus or malus
			robot.robotPart[2, 2] = -1;
			robot.robotDamage -= robot.robotPart[2, 2] // add broken part malus
		
		//leftArm
		case 3:
			robot.robotPart[3, 0] = 0;
			robot.robotPart[3, 1] = "empty";
			
			robot.robotDamage -= robot.robotPart[3, 2] // remove bonus or malus
			robot.robotPart[3, 2] = -1;
			robot.robotDamage -= robot.robotPart[3, 2] // add broken part malus
		
		//rightLeg
		case 4:
			robot.robotPart[4, 0] = 0;
			robot.robotPart[4, 1] = "empty";
			
			robot.robotSpeed -= robot.robotPart[4, 2] // remove bonus or malus
			robot.robotPart[4, 2] = -1;
			robot.robotSpeed -= robot.robotPart[4, 2] // add broken part malus
			
		//rightLeg
		case 5:
			robot.robotPart[5, 0] = 0;
			robot.robotPart[5, 1] = "empty";
			
			//robot.robotSpeed -= robot.robotPart[5, 2] // remove bonus or malus
			robot.robotPart[5, 2] = -1;
			//robot.robotSpeed -= robot.robotPart[5, 2] // add broken part malus
		
		
		
}