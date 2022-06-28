/// @desc Set Stars
staramount = random_range(250,500);
if(room == rExtra)
staramount = random_range(10,100);
image = sStar1;
if(room == rExtra)
{
	image = sTurkey;
}
totalsubimg = sprite_get_number(image)-1;
starspeed = 25;
for(var i=0;i<staramount;i++)
{
	xx[i] = irandom_range(0,room_width*2);
	if(room == rExtra) or (room == rInt)
	yy[i] = irandom_range(0,room_height*2);
	else
	yy[i] = irandom_range(0,1000);
	scale[i] = random_range(0,1);
	var col = choose(true,false);
	if (col) colour[i] = c_white; else colour[i] = choose(c_yellow,c_yellow,make_color_rgb(238,20,91));
	subimg[i] = irandom_range(0,totalsubimg);
	angle[i] = random_range(0,360);
	timer[i] = -1;
	alpha[i] = random_range(0.5,1);
}