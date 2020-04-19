/// @function          EquipementGen;
/// @param  {object}   robot			enemy generated
/// @description generate a random mob

var compteur = 0;
var robot = argument[0];
randomize();
var dice = 0;

for(compteur = 0; compteur < 6; compteur++)
{
	
	dice = irandom_range(0, 100);
	
	
	switch(compteur)
	{
		case 0: 
			//junk tier
			var junkLife = 20;
			var junkName = "Pan";
			var junkBoost = 10;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 15;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 20;
			
			break;
			
		case 1: 
			//junk tier
			var junkLife = 40;
			var junkName = "Trash";
			var junkBoost = 10;
			
			//default tier
			var defaultLife = 60;
			var defaultName = "Default"
			var defaultBoost = 15;
			
			//destroyer tier
			var destroyerLife = 100;
			var destroyerName = "Destroyer";
			var destroyerBoost = 20;
			
			break;
			
		case 2: 
			//junk tier
			var junkLife = 20;
			var junkName = "Spatula";
			var junkBoost = 1;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 3;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 5;
			
			break;
			
		case 3: 
			//junk tier
			var junkLife = 20;
			var junkName = "Spatula";
			var junkBoost = 1;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 3;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 5;
			
			break;
			
		case 4: 
			//junk tier
			var junkLife = 20;
			var junkName = "Suction";
			var junkBoost = 0.5;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 1;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 2;
			
			break;
			
		case 5: 
			//junk tier
			var junkLife = 20;
			var junkName = "Suction";
			var junkBoost = 0.5;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 1;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 2;
			
		break;	
	}
	if(dice <= 60)
	{
		dice = 0;
	}
	else if(dice <= 90)
	{
		dice = 1;
	}
	else
	{
		dice = 2;
	}
	
	switch(dice)
	{
		
		case 0:
			robot.robotPart[0, compteur] = junkLife;
			robot.robotPart[1, compteur] = junkName;
			robot.robotPart[2, compteur] = junkBoost;
			break;
			
		case 1:
			robot.robotPart[0, compteur] = defaultLife;
			robot.robotPart[1, compteur] = defaultName;
			robot.robotPart[2, compteur] = defaultBoost;
			break;
		
		case 2:
			robot.robotPart[0, compteur] = destroyerLife;
			robot.robotPart[1, compteur] = destroyerName;
			robot.robotPart[2, compteur] = destroyerBoost;
			break;
			
	}
}

return robot;