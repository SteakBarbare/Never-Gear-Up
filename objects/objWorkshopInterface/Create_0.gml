currentState = 0;
step = 0;


if(!instance_exists(objPj))
{
	instance_create_depth(100, 100, 1, objPj);	
}
playerRobot = instance_find(objPj, 0).id;

createEnemy = false;