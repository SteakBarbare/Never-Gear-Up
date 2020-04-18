event_inherited();

if(!animationSet)
{
	dice = irandom(1);
	animationSet = true;
}

if(!dash)
{
	srcSpineChangeAnim(skeleton_animation_get(), "Idle");
	animationSet = false;
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