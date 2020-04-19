// Change the slots accordingly to the state of each parts
draw_set_font(Arial);
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

	draw_text(92, 255,  playerRobot.robotPart[0, 2]); //RightArm

	draw_text(30, 255,  playerRobot.robotPart[0, 3]); //leftArm

	draw_text(48, 295,  playerRobot.robotPart[0, 4]); //RightLeg

	draw_text(72, 295,  playerRobot.robotPart[0, 5]); //LeftLeg
	
	//color stats
	var colorGreen = make_color_rgb(90, 255, 90);
	var colorOrange = make_color_rgb(255, 150, 0);
	var colorRed = make_color_rgb(255, 50, 50);
	
	//fixed life
	draw_text_transformed_color(150, 215, "HP:", 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	draw_text_transformed_color(210, 215, " / " + string(playerRobot.robotLifeMax), 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	
	//life stats
	if(playerRobot.robotNewLife < playerRobot.robotLifeMax/4)
	{
		var c_life = colorRed;
	}
	else if(playerRobot.robotNewLife < playerRobot.robotLifeMax/2)
	{
		var c_life = colorOrange;
	}
	else
	{
		var c_life = colorGreen;
	}
	draw_text_transformed_color(196, 215, int64(playerRobot.robotNewLife), 0.6, 0.6, 0, c_life, c_life, c_life, c_life, 1);
	
	//fixed Damage
	draw_text_transformed_color(150, 225, "Damage:", 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	draw_text_transformed_color(210, 225, " / " + string(iniRobotDamage), 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	
	//life stats
	if(playerRobot.robotNewLife < playerRobot.robotLifeMax/4)
	{
		var c_life = colorRed;
	}
	else if(playerRobot.robotNewLife < playerRobot.robotLifeMax/2)
	{
		var c_life = colorOrange;
	}
	else
	{
		var c_life = colorGreen;
	}
	//draw_text_transformed_color(196, 215, int64(playerRobot.robotNewLife), 0.6, 0.6, 0, c_life, c_life, c_life, c_life, 1);
	
}

if(instance_exists(objEnemy))
{
	var EnemyRobot = instance_find(objEnemy, 0).id;
	draw_text(200, 170, EnemyRobot.robotName);

	//speedBar
	draw_healthbar(373, 19, 517, 10, (EnemyRobot.robotNewTimer/180)*100, c_black, c_aqua, c_aqua, 1, true, true)
	draw_healthbar(416, 40, 518, 28, (EnemyRobot.robotNewLife/EnemyRobot.robotLifeMax)*100, c_black, c_red, c_green, 1, true, true) // vie


}
draw_set_font(-1)