draw_self();
draw_text(540, 10, "timer: " + string(turnTimer));
draw_text(500, 330, "robotLife: " + string(robotLife));

//speedBar
draw_healthbar(373, 21, 518, 12, (turnTimer/180)*100, c_black, c_aqua, c_aqua, 1, true, true)



