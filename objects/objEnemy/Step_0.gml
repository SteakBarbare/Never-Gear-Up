event_inherited();
image_xscale = -1;

if(robotName == ""){
	randomize();
	var prefix = objNameElements.prefix[irandom(array_length_1d(objNameElements.prefix)-1)];
	var suffix = objNameElements.suffix[irandom(array_length_1d(objNameElements.suffix)-1)];
	var nicknamePrefix = objNameElements.nicknamePrefix[irandom(array_length_1d(objNameElements.nicknamePrefix)-1)];
	var nicknameSuffix = objNameElements.nicknameSuffix[irandom(array_length_1d(objNameElements.nicknameSuffix)-1)];


	robotName = "" + prefix + suffix + " " + nicknamePrefix + " " + nicknameSuffix;
}

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
				if(!isBleeding){
					// Create oil and screws particles
					part_particles_create(global.particlesSys, x, y-irandom(20), global.oilParticle, irandom_range(20, 35));
					part_particles_create(global.particlesSys, x, y-irandom(20), global.screwParticle, irandom_range(10, 25));
					isBleeding = true;
					flash = 6;
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
		slashFx.image_xscale = -1;
		slashFx.sprite_index = sprFxAttackLeft;
		slashFx.image_index = image_index;
	}
	else
	{
		srcSpineChangeAnim(skeleton_animation_get(), "Attack Right");
		var slashFx = instance_create_depth(x, y, -y, objSlashFx);
		slashFx.image_xscale = -1;
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
	isBleeding = false;
}