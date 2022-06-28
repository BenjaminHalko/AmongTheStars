/// @desc

image_speed = 0;
energyboardcoloums = sprite_width
energyboardrows = sprite_height
energyboardspd = random_range(7,13);
touched = false;
animation = false;

for(var i = 0; i < energyboardcoloums; i++)
{
	for(var j = 0; j < energyboardrows; j++)
	{
		energyboardgrv[i,j] = random_range(0.4,1);
		energyboardx[i,j] = x+random_range(-256,256);
		energyboardy[i,j] = y-random_range(256,768);
		energydir[i,j] = point_direction(energyboardx[i,j],energyboardy[i,j],bbox_left+sprite_width/energyboardcoloums*i,bbox_top+sprite_height/energyboardrows*j);
		energyboardxstart[i,j] = energyboardx[i,j];
		energyboardystart[i,j] = energyboardy[i,j];
	}
}


drawSprite = false;

if(ds_list_find_value(global.turkeymap,Wrap(image_index-1,0,3)) != 0)
{
	for(var i = 0; i < energyboardcoloums; i++)
	{
		for(var j = 0; j < energyboardrows; j++)
		{
			energyboardx[i,j] = bbox_left+sprite_width/energyboardcoloums*i;
			energyboardy[i,j] = bbox_top+sprite_height/energyboardrows*j;
		}
	}
	drawSprite = true;
	
	alarm[0] = 1;
}
else
{
	oCamera.follow = id;
	oPlayer.hascontrol = false;
}