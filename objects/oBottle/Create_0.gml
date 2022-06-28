/// @desc 
fireflies = 0;
phase = 0;

energyboardcoloums = sprite_width/10
energyboardrows = sprite_height/10
energyboardspd = random_range(7,13);

for(var i = 0; i < energyboardcoloums; i++)
{
	for(var j = 0; j < energyboardrows; j++)
	{
		energyboardgrv[i,j] = random_range(0.4,1);
		energyboardx[i,j] = bbox_left+i*sprite_width/energyboardcoloums;
		energyboardy[i,j] = bbox_top+j*sprite_height/energyboardrows;
		energyboarhsp[i,j] = lengthdir_x(energyboardspd,random_range(-10,10)+point_direction(sprite_width/2,sprite_height,(i+0.5)*sprite_width/energyboardcoloums,(j+0.5)*sprite_height/energyboardrows));
		energyboardvsp[i,j] = lengthdir_y(energyboardspd,random_range(-10,10)+point_direction(sprite_width/2,sprite_height,(i+0.5)*sprite_width/energyboardcoloums,(j+0.5)*sprite_height/energyboardrows));
	}
}