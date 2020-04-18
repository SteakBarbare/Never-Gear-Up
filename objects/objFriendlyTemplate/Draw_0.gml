draw_self();
if(robotLife <= 0)
{
	draw_text(300, 300, "you lose")	;
}
else if(win)
{
	draw_text(300, 300, "you win")	;
}
if(!combat)
{
	draw_text(160, 150, "appuyez sur espace pour reprendre");
}


//life Head indicator
if(robotPart[0, 0] <= 5 && robotPart[0, 0] > 0)
{
	draw_rectangle_color(54, 269, 85, 236,  c_red, c_red, c_red, c_red, false);	
}
else if(robotPart[0, 0] <= 10)
{
	draw_rectangle_color(54, 269, 85, 236,  c_yellow, c_yellow, c_yellow, c_yellow, false);	
}
else if(robotPart[0, 0] <= 100)
{
	draw_rectangle_color(54, 269, 85, 236, c_green, c_green, c_green, c_green, false);	
}

//Life Body Indicator
if(robotPart[1, 0] <= 5 && robotPart[1, 0] > 0)
{
	draw_rectangle_color(54, 305, 85, 272,  c_red, c_red, c_red, c_red, false);	
}
else if(robotPart[1, 0] <= 10)
{
	draw_rectangle_color(54, 305, 85, 272,  c_yellow, c_yellow, c_yellow, c_yellow, false);	
}
else if(robotPart[1, 0] <= 100)
{
	draw_rectangle_color(54, 305, 85, 272, c_green, c_green, c_green, c_green, false);	
}

//Life Right Arm Indicator
if(robotPart[2, 0] <= 5 && robotPart[2, 0] > 0)
{
	draw_rectangle_color(90, 305, 113, 265,  c_red, c_red, c_red, c_red, false);	
}
else if(robotPart[2, 0] <= 10)
{
	draw_rectangle_color(90, 305, 113, 265,  c_yellow, c_yellow, c_yellow, c_yellow, false);	
}
else if(robotPart[2, 0] <= 100)
{
	draw_rectangle_color(90, 305, 113, 265, c_green, c_green, c_green, c_green, false);	
}

//Life left Arm Indicator
if(robotPart[3, 0] <= 5 && robotPart[3, 0] > 0)
{
	draw_rectangle_color(26, 305, 49, 265,  c_red, c_red, c_red, c_red, false);	
}
else if(robotPart[3, 0] <= 10)
{
	draw_rectangle_color(26, 305, 49, 265,  c_yellow, c_yellow, c_yellow, c_yellow, false);	
}
else if(robotPart[3, 0] <= 100)
{
	draw_rectangle_color(26, 305, 49, 265, c_green, c_green, c_green, c_green, false);	
}

//Life right leg Indicator
if(robotPart[4, 0] <= 5 && robotPart[4, 0] > 0)
{
	draw_rectangle_color(74, 350, 97, 310,  c_red, c_red, c_red, c_red, false);	
}
else if(robotPart[4, 0] <= 10)
{
	draw_rectangle_color(74, 350, 97, 310,  c_yellow, c_yellow, c_yellow, c_yellow, false);	
}
else if(robotPart[4, 0] <= 100)
{
	draw_rectangle_color(74, 350, 97, 310, c_green, c_green, c_green, c_green, false);	
}

//Life left leg Indicator
if(robotPart[5, 0] <= 5 && robotPart[5, 0] > 0)
{
	draw_rectangle_color(40, 350, 63, 310,  c_red, c_red, c_red, c_red, false);	
}
else if(robotPart[5, 0] <= 10)
{
	draw_rectangle_color(40, 350, 63, 310,  c_yellow, c_yellow, c_yellow, c_yellow, false);	
}
else if(robotPart[5, 0] <= 100)
{
	draw_rectangle_color(40, 350, 63, 310, c_green, c_green, c_green, c_green, false);	
}

//speedBar
draw_healthbar(121, 21, 266, 12, (turnTimer/180)*100, c_black, c_aqua, c_aqua, 0, true, true)

