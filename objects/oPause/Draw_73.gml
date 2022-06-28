/// @desc
if(pause)
{	
	draw_set_alpha(0.9);
	draw_sprite(sMapGradiant,0,0,0);
	draw_set_alpha(1);
	for(var i = 0; i < 16; i++)
	{
		for(var j = 0; j < 16; j++)
		{
			if(!stoneunlocked[i,j])
			{
				draw_sprite_ext(sMapSquare,0,i*375,j*375,1,1,0,c_black,1);
			}
		}
	}
	
	draw_set_colour(c_white);
	draw_rectangle(0,0,room_width-1,room_height-1,true);
	
	if(global.StarsMap)
	{
		with(oStar)
		{
			draw_sprite_ext(sStar,0,x,y,other.playermapscale,other.playermapscale,0,image_blend,1);
		}
	}
	
	if(global.BottlesMap)
	{
		with(oBottle)
		{
			draw_sprite_ext(sBottle,0,x,y,other.playermapscale,other.playermapscale,0,image_blend,1);
		}
	}
	
	if(global.FirefliesMap)
	{
		with(obj_firefly)
		{
			draw_sprite_ext(sFirefly,0,x,y,other.playermapscale,other.playermapscale,0,image_blend,1);
		}
	}
	
	draw_sprite_ext(sPlayerMap,0,oPlayer.x,oPlayer.y,playermapscale,playermapscale,0,c_white,1);
}