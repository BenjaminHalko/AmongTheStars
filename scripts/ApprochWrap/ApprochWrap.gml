/// @desc ApprochWrap(value,target,spd,min,max)

argument0 = Wrap(argument0,argument3,argument4);

if(abs(argument1-argument0) > abs(argument3 - argument4)/2)
{
	if(argument0 > abs(argument3 - argument4)/2)
	argument0+=argument2;
	else
	argument0-=argument2;
}
else
{
	if (argument0 < argument1)
	{
	    argument0 += argument2;
	    if (argument0 > argument1)
	        return argument1;
	}
	else
	{
	    argument0 -= argument2;
	    if (argument0 < argument1)
	        return argument1;
	}
}

return argument0;