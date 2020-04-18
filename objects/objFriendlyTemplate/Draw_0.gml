draw_self();
draw_text(10, 10, "timer: " + string(turnTimer));
draw_text(10, 330, "robotLife: " + string(robotLife));
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