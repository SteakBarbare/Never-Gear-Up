var robotEnnemies = instance_find(objEnemy, 0);
if(depth > robotEnnemies.depth)
{ 
	depth = robotEnnemies.depth - 1;
	draw_sprite_ext(sprWorkshopEnnemies, 0, 0, 0, 3, 3, 0, -1, 1);
}