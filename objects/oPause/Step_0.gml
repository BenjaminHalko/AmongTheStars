/// @desc
Inputs();
if(!window_has_focus()) 
{
	oCamera.pause = true;
	
}
else
{
	oCamera.pause = prepause;
}

if(key_pause) and (!instance_exists(oGhost))
{
	oCamera.pause = !oCamera.pause;
	prepause = oCamera.pause;
}

if(pause)
{
	playermapscale = Wave(5,7,3,0);
}

stoneunlocked[floor(median(0,oPlayer.x,room_width)/375),floor(median(0,oPlayer.y-5  ,room_height)/375)] = true;

for(var i = 12; i < 16; i++)
{
	stoneunlocked[i,10] = stoneunlocked[i,9];
}

for(var i = 3; i < 10; i++)
{
	stoneunlocked[i,10] = stoneunlocked[i,9];
}

stoneunlocked[2,9] = stoneunlocked[1,9];
stoneunlocked[2,10] = stoneunlocked[1,10];
stoneunlocked[2,11] = stoneunlocked[1,11];
stoneunlocked[3,11] = stoneunlocked[1,11];

stoneunlocked[0,12] = stoneunlocked[0,11];

stoneunlocked[13,6] = stoneunlocked[13,5];

stoneunlocked[13,7] = stoneunlocked[12,7];

stoneunlocked[3,5] = stoneunlocked[4,5];
stoneunlocked[2,5] = stoneunlocked[4,5];
stoneunlocked[1,5] = stoneunlocked[4,5];
stoneunlocked[0,5] = stoneunlocked[4,5];
stoneunlocked[3,6] = stoneunlocked[4,5];
stoneunlocked[2,6] = stoneunlocked[4,5];
stoneunlocked[1,6] = stoneunlocked[4,5];
stoneunlocked[0,6] = stoneunlocked[4,5];
stoneunlocked[3,7] = stoneunlocked[4,5];
stoneunlocked[2,7] = stoneunlocked[4,5];

stoneunlocked[9,11] = stoneunlocked[10,11];
stoneunlocked[8,11] = stoneunlocked[10,11];
stoneunlocked[3,0] = stoneunlocked[2,0];