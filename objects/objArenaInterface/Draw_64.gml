// Change the slots accordingly to the state of each parts
draw_set_font(fntBaseFont);
if(instance_exists(objPj))
{
	
	var playerRobot = instance_find(objPj, 0).id;
	if(playerRobot.robotLife <= 0)
	{
		draw_set_halign(fa_center);
		draw_text(room_width/2, 50, "Your robot collapsed after gathering " + string(playerRobot.totalMoney) + " $");
		draw_set_halign(fa_left);
		if(!gameEnds){
			gameEnds = true;
			alarm[3] = room_speed*6;
		}
	}
	else if(playerRobot.win)
	{
		draw_set_halign(fa_center);
		draw_text(room_width/2, 50, "you win, press space !");
		draw_set_halign(fa_left);
	}
	if(!playerRobot.combat)
	{
		draw_set_halign(fa_center);
		draw_text(room_width/2, 50, "Press Space to begin the fight");
		draw_set_halign(fa_left);
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
	draw_text_transformed_color(150, 220, "HP:", 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	draw_text_transformed_color(210, 220, " / " + string(playerRobot.robotLifeMax), 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	
	//life stats
	if(playerRobot.robotNewLife < playerRobot.robotLifeMax/4)
	{
		var c = colorRed;
	}
	else if(playerRobot.robotNewLife < playerRobot.robotLifeMax/2)
	{
		var c = colorOrange;
	}
	else
	{
		var c = colorGreen;
	}
	draw_text_transformed_color(196, 220, int64(playerRobot.robotNewLife), 0.6, 0.6, 0, c, c, c, c, 1);
	
	
	
	//fixed Damage
	draw_text_transformed_color(150, 245, "Damage:", 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	draw_text_transformed_color(210, 245, " / " + string(iniRobotDamage), 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	
	//Damage stats
	if(playerRobot.robotDamage <= iniRobotDamage/4)
	{
		var c = colorRed;
	}
	else if(playerRobot.robotDamage <= iniRobotDamage/2)
	{
		var c = colorOrange;
	}
	else
	{
		var c = colorGreen;
	}
	draw_text_transformed_color(196, 245, int64(playerRobot.robotDamage), 0.6, 0.6, 0, c, c, c, c, 1);
	
	//fixed Dodge
	draw_text_transformed_color(150, 270, "Dodge:", 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	draw_text_transformed_color(210, 270, " / " + string(iniRobotDodge), 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	
	//Dodge stats
	if(playerRobot.robotDodge <= iniRobotDodge/4)
	{
		var c = colorRed;
	}
	else if(playerRobot.robotDodge <= iniRobotDodge/2)
	{
		var c = colorOrange;
	}
	else
	{
		var c = colorGreen;
	}
	draw_text_transformed_color(196, 270, int64(playerRobot.robotDodge), 0.6, 0.6, 0, c, c, c, c, 1);
	
	//fixed Speed
	draw_text_transformed_color(150, 295, "Speed:", 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	draw_text_transformed_color(210, 295, " / " + string(iniRobotSpeed), 0.6, 0.6, 0, colorGreen, colorGreen, colorGreen, colorGreen, 1);
	
	//speed stats
	if(playerRobot.robotDodge <= iniRobotSpeed/4)
	{
		var c = colorRed;
	}
	else if(playerRobot.robotDodge <= iniRobotSpeed/2)
	{
		var c = colorOrange;
	}
	else
	{
		var c = colorGreen;
	}
	draw_text_transformed_color(196, 295, int64(playerRobot.robotSpeed), 0.6, 0.6, 0, c, c, c, c, 1);
	
	
	// Consumables Draw & Interaction
	
	draw_sprite(sprConsumablesIcons, 0, 350, 230);
	draw_sprite(sprConsumablesIcons, 1, 350, 262);
	draw_sprite(sprConsumablesIcons, 2, 350, 294);
	
	draw_text(350, 230, playerRobot.overclocked);
	draw_text(350, 262, playerRobot.redButton);
	draw_text(350, 294, playerRobot.oilRecharge);
	
	
	draw_text(390, 220, "+5 Damage");
	draw_text(390, 252, "RED GOES FASTA !");
	draw_text(390, 286, "10% Dodge increase");
	
	var clickLeft = mouse_check_button(mb_left);
	
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 1000, 687, 1100, 811)){
		if(clickLeft && alarm[0] <= -1 && playerRobot.overclocked > 0){
			alarm[0] = room_speed / 2;
			
		}
	}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 1000, 830, 1100, 900)){
		if(clickLeft && alarm[1] <= -1 && playerRobot.redButton > 0){
			alarm[1] = room_speed / 2;
			
		}
	}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 1000, 907, 1100, 1020)){
		if(clickLeft && alarm[0] <= -1 && playerRobot.oilRecharge > 0){
			alarm[2] = room_speed / 2;
			
		}
	}
	
	show_debug_message(window_mouse_get_x());
	show_debug_message(window_mouse_get_y());
	
}

if(instance_exists(objEnemy))
{
	var EnemyRobot = instance_find(objEnemy, 0).id;
	
	draw_set_halign(fa_center);
	draw_text_ext(room_width*2/3, 165, EnemyRobot.robotName, 20, 200);
	draw_text_ext(room_width*0.3, 165, playerRobot.robotName, 20, 200);
	draw_set_halign(fa_left);
	
	//speedBar
	draw_healthbar(373, 19, 517, 10, (EnemyRobot.robotNewTimer/180)*100, c_black, c_aqua, c_aqua, 1, true, true)
	draw_healthbar(416, 40, 518, 28, (EnemyRobot.robotNewLife/EnemyRobot.robotLifeMax)*100, c_black, c_red, c_green, 1, true, true) // vie


}
draw_set_font(-1);

