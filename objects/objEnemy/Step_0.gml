event_inherited();
image_xscale = -1;
if(instance_exists(objEnemy))
{
	var opponentRobot = instance_find(objFriendlyTemplate, 0).id;
	dead = opponentRobot.win;
}

if(!animationSet)
{
	dice = irandom(1);
	animationSet = true;
}


if(!dead)
{
	if(!dash)
	{
		image_speed = 1;
		if(opponentRobot.dash && opponentRobot.image_index > 12)
		{
			image_speed = 1.3;
			srcSpineChangeAnim(skeleton_animation_get(), "Stagger");
			
		}
		else
		{
			srcSpineChangeAnim(skeleton_animation_get(), "Idle");
			animationSet = false;
		}
	}
	else if(dice == 0)
	{
		srcSpineChangeAnim(skeleton_animation_get(), "Attack Left");
		var slashFx = instance_create_depth(x, y, -y, objSlashFx);
		slashFx.sprite_index = sprFxAttackLeft;
		slashFx.image_xscale = -1;
		slashFx.image_index = image_index;
	}
	else
	{
		srcSpineChangeAnim(skeleton_animation_get(), "Attack Right");
		var slashFx = instance_create_depth(x, y, -y, objSlashFx);
		slashFx.sprite_index = sprFxAttackRight;
		slashFx.image_xscale = -1;
		slashFx.image_index = image_index;
	}
}
else
{ 
	v = 0;
	image_speed = 1.5;
	srcSpineChangeAnim(skeleton_animation_get(), "Death");
	if(image_index > 34)
	{
		image_speed = 0;
	}
}