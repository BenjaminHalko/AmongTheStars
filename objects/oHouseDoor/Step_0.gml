/// @desc
switch(phase)
{
	default: break;
	
	case 0:
	{
		if(place_meeting(x,y,oPlayer)) and (Load("Objects","House Door",0) != 2)
		{
			phase = 1;
		}
		break;
	}
	case 1:
	{
		yscale = Approch(yscale,image_yscale,0.01);
		if(yscale == image_yscale) phase = 2;
		break;
	}
	case 2:
	{
		oPlayer.image_alpha = Approch(oPlayer.image_alpha,0,0.05);
		if(oPlayer.image_alpha == 0) phase = 3;
		break;
	}
	case 3:
	{
		star.x = Approch(star.x,x,5);
		if(star.x == x) phase = 4;
		break;
	}
	case 4:
	{
		star.image_alpha = Approch(star.image_alpha,0,0.05);
		if(star.image_alpha == 0) phase = 5;
		break;
	}
	case 5:
	{
		yscale = Approch(yscale,0,0.05);
		if(yscale == 0) and (alarm[0] <= 0) alarm[0] = room_speed/2;
		break;
	}
	case 6:
	{
		Save("Objects","House Door",1);
		Save("Room","Special Zone",true);
		global.starcount++;
		ds_list_add(global.starmap,star.id);
		instance_destroy(star.id);
		instance_create_layer(x,y,layer,oTitleTransition);
		room_goto(rSpecial1);
		phase = 7;
		break;
	}
	case 7:
	{
		if(alarm[0] <= 0) alarm[0] = room_speed;
		break;
	}
	case 8:
	{
		yscale = Approch(yscale,image_yscale,0.01);
		if(yscale == image_yscale) phase = 9;
		break;
	}
	case 9:
	{
		oPlayer.image_alpha = Approch(oPlayer.image_alpha,1,0.05);
		if(oPlayer.image_alpha == 1) phase = 10;
		break;
	}
	case 10:
	{
		yscale = Approch(yscale,0,0.05);
		if(yscale == 0) and (alarm[0] <= 0) alarm[0] = room_speed/2;
		break;
	}
	case 11:
	{
		instance_destroy();
		break;
	}
		
}