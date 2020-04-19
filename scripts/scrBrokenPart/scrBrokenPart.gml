/// @function          broke;
/// @param  {object}   robot       PJ or Ennemies
/// @param  {int}   robotPartBroke       Indicate which part need modification
/// @description       set the stats modifier due to broken parts

var robot = argument[0];

var part = argument[1];

show_debug_message(robot.robotName + " part : " +string(part));

switch(part)
{
	
		//Head
		case 0:
			robot.robotPart[0, 0] = 0;
			robot.robotPart[1, 0] = "Broken";
			show_debug_message("head");
			
			//robot.robotDamage -= robot.robotPart[0, 2]; // remove bonus or malus
			robot.robotPart[2, 0] = -1;
			//robot.robotDamage -= robot.robotPart[0, 2]; // add broken part malus
			break;
			
		
		//Body	
		case 1:
			robot.robotPart[0, 1] = 0;
			robot.robotPart[1, 1] = "Broken";
			show_debug_message("body");
			
			//robot.robotDodge -= robot.robotPart[1, 2]; // remove bonus or malus
			robot.robotPart[2, 1] = -1;
			//robot.robotDodge -= robot.robotPart[1, 2]; // add broken part malus
			break;
		
		//rightArm
		case 2:
			robot.robotPart[0, 2] = 0;
			robot.robotPart[1, 2] = "Broken";
			show_debug_message("RA");
			
			//robot.robotDamage -= robot.robotPart[2, 2]; // remove bonus or malus
			robot.robotPart[2, 2] = -1;
			//robot.robotDamage -= robot.robotPart[2, 2]; // add broken part malus
			break;
		
		//leftArm
		case 3:
			robot.robotPart[0, 3] = 0;
			robot.robotPart[1, 3] = "Broken";
			show_debug_message("LA");
			
			//robot.robotDamage -= robot.robotPart[3, 2]; // remove bonus or malus
			robot.robotPart[2, 3] = -1;
			//robot.robotDamage -= robot.robotPart[3, 2]; // add broken part malus
			break;
		
		//rightLeg
		case 4:
			robot.robotPart[0, 4] = 0;
			robot.robotPart[1, 4] = "Broken";
			show_debug_message("RL");
			
			//robot.robotSpeed -= robot.robotPart[4, 2]; // remove bonus or malus
			robot.robotPart[2, 4] = -1;
			//robot.robotSpeed -= robot.robotPart[4, 2]; // add broken part malus
			break;
			
		//rightLeg
		case 5:
			robot.robotPart[0, 5] = 0;
			robot.robotPart[1, 5] = "Broken";
			show_debug_message("LL");
			
			//robot.robotSpeed -= robot.robotPart[5, 2]; // remove bonus or malus
			robot.robotPart[2, 5] = -1;
			//robot.robotSpeed -= robot.robotPart[5, 2] // add broken part malus
			break;
		
		
		
}