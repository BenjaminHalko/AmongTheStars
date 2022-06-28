/// @desc

switch(sprite_index)
{
	default: break;
	case sSpecialZoneBlock1:
	{
		sprite_index = sSpecialZoneBlock2;
		break;
	}
	case sSpecialZoneBlock2:
	{
		sprite_index = sSpecialZoneBlock3;
		break;
	}
	case sSpecialZoneBlock3:
	{
		sprite_index = sSpecialZoneBlock4;
		break;
	}
	case sSpecialZoneBlock4:
	{
		sprite_index = sSpecialZoneBlock1;
		break;
	}
}

alarm[0] = colourswitchspd;
alarm[1] = colourswitchdisable;