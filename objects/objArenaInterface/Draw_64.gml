// Change the slots accordingly to the state of each parts

if(instance_exists(objPj))
{
	
	var playerRobot = instance_find(objPj, 0).id;
	if(playerRobot.robotLife <= 0)
	{
		draw_text(300, 300, "you lose")	;
	}
	else if(playerRobot.win)
	{
		draw_text(300, 300, "you win, press space !")	;
	}
	if(!playerRobot.combat)
	{
		draw_text(160, 150, "appuyez sur espace pour reprendre");
	}



	//speedBar
	draw_healthbar(121, 19, 261, 10, (playerRobot.robotNewTimer/180)*100, c_black, c_aqua, c_aqua, 0, true, true);
	draw_healthbar(121, 40, 220, 28, (playerRobot.robotNewLife/playerRobot.robotLifeMax)*100, c_black, c_red, c_green, 0, true, true);

	//partLife

	draw_text(60, 215, playerRobot.robotPart[0, 0]); //Head

	draw_text(60, 255, playerRobot.robotPart[0, 1]); //Body

	draw_text(92, 255, objPj.robotPart[0, 2]); //RightArm

	draw_text(30, 255, objPj.robotPart[0, 3]); //leftArm

	draw_text(48, 295, objPj.robotPart[0, 4]); //RightLeg

	draw_text(72, 295, objPj.robotPart[0, 5]); //LeftLeg
}

if(instance_exists(objEnemy))
{
	var EnemyRobot = instance_find(objEnemy, 0).id;
	draw_text(200, 170, EnemyRobot.robotName);

	//speedBar
	draw_healthbar(373, 19, 517, 10, (EnemyRobot.robotNewTimer/180)*100, c_black, c_aqua, c_aqua, 1, true, true)
	draw_healthbar(416, 40, 518, 28, (EnemyRobot.robotNewLife/EnemyRobot.robotLifeMax)*100, c_black, c_red, c_green, 1, true, true) // vie


}