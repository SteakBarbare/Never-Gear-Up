/// @function          srcEquipGen;
/// @param  {object}   robot			enemy generated
/// @description generate a random mob

var compteur = 0;
var robot = argument[0];
randomize();
var dice = 0;

for(compteur = 0; compteur < 6; compteur++)
{
	
	dice = irandom_range(0, 100);
	robot.bounty += dice;
	
	switch(compteur)
	{
		case 0: 
			//junk tier
			var junkLife = 20;
			var junkName = "Pan";
			var junkBoost = 10;
			var junkMaxLife = 20;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 15;
			var defaultMaxLife = 30;
			
			//Armored tier
			var armoredLife = 40;
			var armoredName = "Armored"
			var armoredBoost = 18;
			var armoredMaxLife = 40;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 20;
			var destroyerMaxLife = 50;
			
			break;
			
		case 1: 
			//junk tier
			var junkLife = 40;
			var junkName = "Trash";
			var junkBoost = 10;
			var junkMaxLife = 40;
			
			//default tier
			var defaultLife = 60;
			var defaultName = "Default"
			var defaultBoost = 15;
			
			//Armored tier
			var armoredLife = 80;
			var armoredName = "Armored"
			var armoredBoost = 18;
			var armoredMaxLife = 80;
			
			//destroyer tier
			var destroyerLife = 100;
			var destroyerName = "Destroyer";
			var destroyerBoost = 20;
			var destroyerMaxLife = 100;
			
			break;
			
		case 2: 
			//junk tier
			var junkLife = 20;
			var junkName = "Spatula";
			var junkBoost = 1;
			var junkMaxLife = 20;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 3;
			var defaultMaxLife = 30;
			
			//Armored tier
			var armoredLife = 40;
			var armoredName = "Armored"
			var armoredBoost = 4;
			var armoredMaxLife = 40;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 5;
			var destroyerMaxLife = 50;
			
			break;
			
		case 3: 
			//junk tier
			var junkLife = 20;
			var junkName = "Spatula";
			var junkBoost = 1;
			var junkMaxLife = 20;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 3;
			var defaultMaxLife = 30;
			
			//Armored tier
			var armoredLife = 40;
			var armoredName = "Armored"
			var armoredBoost = 4;
			var armoredMaxLife = 40;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 5;
			var destroyerMaxLife = 50;
			
			break;
			
		case 4: 
			//junk tier
			var junkLife = 20;
			var junkName = "Suction";
			var junkBoost = 0.5;
			var junkMaxLife = 20;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 1;
			var defaultMaxLife = 30;
			
			//Armored tier
			var armoredLife = 40;
			var armoredName = "Armored"
			var armoredBoost = 2;
			var armoredMaxLife = 40;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 2;
			var destroyerMaxLife = 50;
			
			break;
			
		case 5: 
			//junk tier
			var junkLife = 20;
			var junkName = "Suction";
			var junkBoost = 0.5;
			var junkMaxLife = 20;
			
			//default tier
			var defaultLife = 30;
			var defaultName = "Default"
			var defaultBoost = 1;
			var defaultMaxLife = 30;
			
			//Armored tier
			var armoredLife = 40;
			var armoredName = "Armored"
			var armoredBoost = 2;
			var armoredMaxLife = 40;
			
			//destroyer tier
			var destroyerLife = 50;
			var destroyerName = "Destroyer";
			var destroyerBoost = 2;
			var destroyerMaxLife = 50;
			
		break;	
	}
	if(dice <= 30)
	{
		dice = 0;
	}
	else if(dice <= 60)
	{
		dice = 1;
	}
	else if(dice <= 90)
	{
		dice = 2;
	}
	else
	{
		dice = 3;
	}
	
	switch(dice)
	{
		
		case 0:
			robot.robotPart[0, compteur] = junkLife;
			robot.robotPart[1, compteur] = junkName;
			robot.robotPart[2, compteur] = junkBoost;
			robot.robotPart[3, compteur] = junkMaxLife;
			break;
			
		case 1:
			robot.robotPart[0, compteur] = defaultLife;
			robot.robotPart[1, compteur] = defaultName;
			robot.robotPart[2, compteur] = defaultBoost;
			robot.robotPart[3, compteur] = defaultMaxLife;
			break;
		
		case 2:
			robot.robotPart[0, compteur] = armoredLife;
			robot.robotPart[1, compteur] = armoredName;
			robot.robotPart[2, compteur] = armoredBoost;
			robot.robotPart[3, compteur] = armoredMaxLife;
			break;
		case 3:
			robot.robotPart[0, compteur] = destroyerLife;
			robot.robotPart[1, compteur] = destroyerName;
			robot.robotPart[2, compteur] = destroyerBoost;
			robot.robotPart[3, compteur] = destroyerMaxLife;
			break;	
	}
	
}

robot.bounty += irandom_range(-20, 20);
if(robot.bounty < 50){
	robot.bounty = 50;
}

return robot;