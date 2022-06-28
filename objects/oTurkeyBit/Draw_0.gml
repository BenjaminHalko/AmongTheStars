/// @desc
if(drawSprite)
{
	draw_sprite_ext(sprite_index,image_index,x,y+Wave(-3,3,2,0),1,1,0,c_white,1);
}
else
{
	var destroy = true;
	var _drawSprite = true;
	for(var i = 0; i < energyboardcoloums; i++)
	{
		for(var j = 0; j < energyboardrows; j++)
		{
			if(touched)
			{
				energyboardx[i,j] = Approch(energyboardx[i,j],energyboardxstart[i,j],max(0.1,abs(lengthdir_x(2,energydir[i,j]))));
				energyboardy[i,j] = Approch(energyboardy[i,j],energyboardystart[i,j],max(0.1,abs(lengthdir_y(2,energydir[i,j]))));
			
				if(energyboardx[i,j] != energyboardxstart[i,j]) or (energyboardy[i,j] != energyboardystart[i,j])
				{
					destroy = false;
				}
			}
			else if(abs(oCamera.x - x) <= 5) and (abs(oCamera.y - y) <= 5)
			{
				if((energyboardx[i,j] != bbox_left+sprite_width/energyboardcoloums*i) or (energyboardy[i,j] != bbox_top+sprite_height/energyboardrows*j))
				{
					alarm[0] = 10;
					energyboardx[i,j] = Approch(energyboardx[i,j],bbox_left+sprite_width/energyboardcoloums*i,max(0.1,abs(lengthdir_x(2,energydir[i,j]))));
					energyboardy[i,j] = Approch(energyboardy[i,j],bbox_top+sprite_height/energyboardrows*j,max(0.1,abs(lengthdir_y(2,energydir[i,j]))));
					_drawSprite = false;
				}
				destroy = false;
			}
			else
			{
				destroy = false;
				_drawSprite = false;
				if(alarm[1] <= 0)
				{
					alarm[1] = room_speed;
				}
			}
			
			draw_sprite_part_ext(sprite_index,image_index,sprite_width/energyboardcoloums*i,sprite_height/energyboardrows*j,sprite_width/energyboardcoloums,sprite_height/energyboardrows,energyboardx[i,j],energyboardy[i,j]+Wave(-3,3,2,0),1,1,c_white,1);
	
		}
	}

	if(destroy) instance_destroy();
	if(!touched) drawSprite = _drawSprite;
}