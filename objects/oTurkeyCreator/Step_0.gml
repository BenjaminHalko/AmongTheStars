/// @desc
switch(phase)
{
	default:
	{
		if(global.starcount >= 20) and (ds_list_find_value(global.turkeymap,phase) != 2)
		{
			var turkey = instance_create_layer(x,y,layer,oTurkeyBit);
			turkey.image_index = 1;
			instance_destroy();
			ds_list_set(global.turkeymap,phase,1);
		}
		break;
	}
	case 1:
	{
		var num = 0;
		for(var i = 0; i < 16; i++)
		{
			for(var j = 0; j < 16; j++)
			{
				if(oPause.stoneunlocked[i,j])
				{
					num++;
				}
			}
		}
		
		if(num/(16*16) == 1) and (ds_list_find_value(global.turkeymap,phase) != 2)
		{
			var turkey = instance_create_layer(x,y,layer,oTurkeyBit);
			turkey.image_index = 2;
			instance_destroy();
			ds_list_set(global.turkeymap,phase,1);
		}
		break;
	}
	case 2:
	{
		if(global.fireflys >= 100) and (ds_list_find_value(global.turkeymap,phase) != 2)
		{
			var turkey = instance_create_layer(x,y,layer,oTurkeyBit);
			turkey.image_index = 3;
			instance_destroy();
			ds_list_set(global.turkeymap,phase,1);
		}
		break;
	}
	case 3:
	{
		if(instance_number(oTurkeyCreator) == 1) and (!instance_exists(oTurkeyBit)) and (alarm[0] <= 0)
		{
			alarm[0] = room_speed;
		}
		break;
	}
}