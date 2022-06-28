/// @desc
var destroy = true;
for(var i = 0; i < energyboardcoloums; i++)
{
	for(var j = 0; j < energyboardrows; j++)
	{
		if(newroom)
		{
			energyboardx[i,j] += energyboarhsp[i,j];
			energyboardy[i,j] += energyboardvsp[i,j];
			energyboardvsp[i,j] += energyboardgrv[i,j];
		}
			
		draw_sprite_part_ext(sprite,0,1920/energyboardcoloums*i,1080/energyboardrows*j,1920/energyboardcoloums,1080/energyboardrows,energyboardx[i,j],energyboardy[i,j],1,1,c_white,1);
	
		if(energyboardy[i,j] <= display_get_gui_height())
		{
			destroy = false;
		}
	}
}

if(destroy) instance_destroy();