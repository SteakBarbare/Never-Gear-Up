draw_self();
draw_text(540, 10, "timer: " + string(turnTimer));
draw_text(500, 330, "robotLife: " + string(robotLife));
draw_text(200, y + 65, robotName);

//speedBar
draw_healthbar(373, 21, 518, 12, (turnTimer/180)*100, c_black, c_aqua, c_aqua, 1, true, true)
draw_healthbar(416, 45, 518, 31, (robotLife/robotLifeMax)*100, c_black, c_red, c_green, 1, true, true) // vie




