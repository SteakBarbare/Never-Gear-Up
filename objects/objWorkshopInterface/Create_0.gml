step = 0;

pickEnnemy = -1;

mOnButton0 = false;
mOnButton1 = false;
mOnButton2 = false;
mOnButton3 = false;

mOnButtonShop = false;
mOnButtonFight = false;

if(!instance_exists(objPj))
{
	instance_create_depth(100, 100, 1, objPj);	
}
playerRobot = instance_find(objPj, 0).id;

audio_stop_all();
var randomMusic = irandom(1);

audio_play_sound(asset_get_index("sndWorkshop" + string(randomMusic)), 10, true);
