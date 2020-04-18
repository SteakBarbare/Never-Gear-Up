draw_self();
draw_text(x+50, y-50, "timer: " + string(turnTimer));
draw_text(10, 330, "robotLife: " + string(robotLife));
if(robotLife <= 0)
{
	draw_text(300, 300, "you lose")	
}
else if(win)
{
	draw_text(300, 300, "you win")	
}