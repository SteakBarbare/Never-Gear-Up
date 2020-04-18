/// @function          srcSpineChangeAnim;
/// @param  {string}   actualAnimation			Name of the currently played animation
/// @param  {string}   nextAnimation			Name of the next animation to play
/// @description								Change to another animation if possible

var actualAnimation, nextAnimation;

actualAnimation = argument[0];
nextAnimation = argument[1];

if(actualAnimation != nextAnimation){
	skeleton_animation_set(nextAnimation);
}

