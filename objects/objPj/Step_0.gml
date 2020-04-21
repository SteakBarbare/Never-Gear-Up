event_inherited();
if(activate)
{
	if(instance_exists(objEnemy))
	{
		var opponentRobot = instance_find(objEnemyTemplate, 0).id;
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
		
			if(diceDodge <= robotDodge)
			{
			
				image_speed = 1;
				if(opponentRobot.dash && opponentRobot.image_index > 4)
				{
				
					image_speed = 1;
					srcSpineChangeAnim(skeleton_animation_get(), "Defense");
			
				}
				else
				{
					srcSpineChangeAnim(skeleton_animation_get(), "Idle");
					animationSet = false;
				}
			}
			else
			{
				image_speed = 1;
				if(opponentRobot.dash && opponentRobot.image_index > 12)
				{
					if(!fxGenerated){
						srcParticleCreate("Hit");
					}
				
					image_speed = 1.3;
					srcSpineSetSlots(robotPart);
					srcSpineChangeAnim(skeleton_animation_get(), "Stagger");
				
				
			
				}
				else
				{
					srcSpineChangeAnim(skeleton_animation_get(), "Idle");
					animationSet = false;
				}
			}
		}
		else if(dice == 0)
		{
			srcSpineChangeAnim(skeleton_animation_get(), "Attack Left");
			var slashFx = instance_create_depth(x, y, -y, objSlashFx);
			slashFx.sprite_index = sprFxAttackLeft;
			slashFx.image_index = image_index;
		}
		else
		{
			srcSpineChangeAnim(skeleton_animation_get(), "Attack Right");
			var slashFx = instance_create_depth(x, y, -y, objSlashFx);
			slashFx.sprite_index = sprFxAttackRight;
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

	if(!opponentRobot.dash){
		fxGenerated = false;
	}

	if(skeleton_animation_get() == "Defense"){
		if(!fxGenerated && image_index > 8){
			srcParticleCreate("Block");
		}
	}
}
if(achat)
{
	srcSpineSetSlots();
	scrStatsUpdate(id);
	robotLifeMax = 100 + robotPart[3, 0]/2 + robotPart[3, 1]/2 + robotPart[3, 2]/2 + robotPart[3, 3]/2 + robotPart[3, 4]/2 + robotPart[3, 5]/2;
	achat = false;
}