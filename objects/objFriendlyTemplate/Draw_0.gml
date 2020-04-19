// Change the slots accordingly to the state of each parts

draw_self();
if(robotLife <= 0)
{
	draw_text(300, 300, "you lose")	;
}
else if(win)
{
	draw_text(300, 300, "you win, press space !")	;
}
if(!combat)
{
	draw_text(160, 150, "appuyez sur espace pour reprendre");
}



//speedBar
draw_healthbar(121, 21, 262, 12, (robotNewTimer/180)*100, c_black, c_aqua, c_aqua, 0, true, true);
draw_healthbar(121, 46, 220, 31, (robotNewLife/robotLifeMax)*100, c_black, c_red, c_green, 0, true, true);

//partLife

draw_text(60, 240, robotPart[0, 0]); //Head

draw_text(60, 280, robotPart[0, 1]); //Body

draw_text(92, 280, robotPart[0, 2]); //RightArm

draw_text(30, 280, robotPart[0, 3]); //leftArm

draw_text(48, 320, robotPart[0, 4]); //RightLeg

draw_text(72, 320, robotPart[0, 5]); //LeftLeg
