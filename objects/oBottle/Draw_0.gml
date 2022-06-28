/// @desc 

if(phase == 2)
{
	var destroy = true;
	for(var i = 0; i < energyboardcoloums; i++)
	{
		for(var j = 0; j < energyboardrows; j++)
		{
			energyboardx[i,j] += energyboarhsp[i,j];
			energyboardy[i,j] += energyboardvsp[i,j];
			energyboardvsp[i,j] += energyboardgrv[i,j];
			
			draw_sprite_part_ext(sprite_index,0,sprite_width/energyboardcoloums*i,sprite_height/energyboardrows*j,sprite_width/energyboardcoloums,sprite_height/energyboardrows,energyboardx[i,j],energyboardy[i,j],1,1,c_white,1);
	
			if(energyboardy[i,j] <= room_height)
			{
				destroy = false;
			}
		}
	}
}
else
{
	draw_self();
}