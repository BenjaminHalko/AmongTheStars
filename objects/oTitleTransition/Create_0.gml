/// @desc
energyboardcoloums = 1920/50
energyboardrows = 1080/50
energyboardspd = random_range(7,13);

for(var i = 0; i < energyboardcoloums; i++)
{
	for(var j = 0; j < energyboardrows; j++)
	{
		energyboardgrv[i,j] = random_range(0.4,1);
		energyboardx[i,j] = i*1920/energyboardcoloums;
		energyboardy[i,j] = j*1080/energyboardrows;
		energyboarhsp[i,j] = lengthdir_x(energyboardspd,random_range(-10,10)+point_direction(1920/2,1080,(i+0.5)*1920/energyboardcoloums,(j+0.5)*1080/energyboardrows));
		energyboardvsp[i,j] = lengthdir_y(energyboardspd,random_range(-10,10)+point_direction(1920/2,1080,(i+0.5)*1920/energyboardcoloums,(j+0.5)*1080/energyboardrows));
	}
}

screen_save("Title.png");
sprite = sprite_add("Title.png",1,false,false,0,0);
file_delete("Title.png");
newroom = false;