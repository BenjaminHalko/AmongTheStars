/// @desc
backgroundindex = Approch(backgroundindex,image*14,backgroundspd);

var cloudindex = min(backgroundindex,3);
var bubbleindex = 14-max(backgroundindex,10);

var _x = x-view_w_half;
var _y = y-view_h_half;

bubbleY = Wrap(bubbleY-0.2,0,256);
cloudX = Wrap(cloudX-1,0,512);

if(backgroundindex == 0)
backgroundX = Wrap(backgroundX+1,0,512);
else if(backgroundindex == 14)
backgroundX = Wrap(backgroundX-1,0,512);

for(var i = -1; i <= 1; i++)
{
	draw_sprite(sSpecialZoneBubbles,bubbleindex,_x,_y+bubbleY+i*256);
}

for(var i = 0; i <= 5; i++)
{
	for(var j = -1; j <= 1; j++)
	{
		draw_sprite(cloudImages[i],cloudindex,_x+Wrap(cloudX+(cloudX*i/10),0,512)+j*512,_y-8*i);
	}
}

for(var i = -1; i <= 1; i++)
{
	draw_sprite(sSpecialZoneForeground,backgroundindex,_x+backgroundX+(512*i),_y);
}