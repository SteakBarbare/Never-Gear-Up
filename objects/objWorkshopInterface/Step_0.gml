switch(step)
{
	case 0:
		playerRobot.depth = 0;
		if(!createEnemy)
		{
			instance_create_depth(20, 153, 2, objEnemy);
			createEnemy = true;
		}
		break;
}