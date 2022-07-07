/// @desc

instance_activate_all();

//Player
oPlayer.x = Load("Player","X",oPlayer.xstart);
oPlayer.y = Load("Player","Y",oPlayer.ystart);
oPlayer.image_xscale = Load("Player","xScale",oPlayer.image_xscale);

oCamera.x = oPlayer.x;
oCamera.y = oPlayer.y;

//Objects

_ds = Load("Objects","Bottles","");
global.bottlemap = ds_list_create();

if(_ds != "")
{
	ds_list_read(global.bottlemap,_ds);
}

if(!ds_list_empty(global.bottlemap))
{
	global.fireflys = ds_list_size(global.bottlemap)*5;
	try gxc_challenge_submit_score(global.fireflys,undefined,{challengeId: "e8deabb8-1d33-4adf-add5-978415e3dace"});
	catch(_error) show_debug_message(_error);
	for(var i = 0; i < ds_list_size(global.bottlemap); i++)
	{
		instance_create_layer(0,0,"Lighting",obj_firefly_player);
		with(global.bottlemap[| i])
		{
			instance_destroy();
		}
	}
}

_ds = Load("Objects","Fireflies","");
global.fireflymap = ds_list_create();

if(_ds != "")
{
	ds_list_read(global.fireflymap,_ds);
}

if(!ds_list_empty(global.fireflymap))
{
	for(var i = 0; i < ds_list_size(global.fireflymap); i++)
	{
		with(global.fireflymap[| i])
		{
			instance_change(obj_firefly_special,true);
		}
	}
}

_ds = Load("Objects","Stars","");
global.starmap = ds_list_create();

if(_ds != "")
{
	ds_list_read(global.starmap,_ds);
}

if(!ds_list_empty(global.starmap))
{
	for(var i = 0; i < ds_list_size(global.starmap); i++)
	{
		with(global.starmap[| i])
		{
			instance_destroy();
		}
	}
}

var _ds = Load("Objects","Keys","");
global.keymap = ds_grid_create(2,instance_number(oKey));

if(_ds != "")
{
	ds_grid_read(global.keymap,_ds);
}

for(var i = 0; i < instance_number(oKey); i++)
{
	var _key = instance_find(oKey,i);
	_key.mode = ds_grid_get(global.keymap,0,i);
	
	var target = ds_grid_get(global.keymap,1,i);
	if(target == 0) target = noone;
	_key.target = target;
	
	if(target != noone) target.gotkey = true;
	
	if(_key.mode == 1)
	{
		oPlayer.keys++;
		_key.keynumber = oPlayer.keys;
	}
}

//Map

var _ds = Load("Pause","Map","");
global.pausemap = ds_grid_create(16,16);

if(_ds != "")
{
	ds_grid_read(global.pausemap,_ds);
}

for(var i = 0; i < 16; i++)
{
	for(var j = 0; j < 16; j++)
	{
		oPause.stoneunlocked[i,j] = ds_grid_get(global.pausemap,i,j);
	}
}

//Turkeys
var _ds = Load("Objects","Turkeys","");
global.turkeymap = ds_list_create();

if(_ds != "")
{
	ds_list_read(global.turkeymap ,_ds);
}
else
{
	repeat(4)
	{
		ds_list_add(global.turkeymap,0);
	}
}

if(!ds_list_empty(global.turkeymap))
{
	for(var i = 0; i < 3; i++)
	{
		index = i;
		if(ds_list_find_value(global.turkeymap,i) == 2)
		{
			with(oTurkeyCreator)
			{
				if(phase == other.index)
				{
					instance_destroy();
				}
			}
		}
	}
}

//Maps
_ds = Load("Objects","MapsCollected","");
global.mapsCollected = ds_list_create();

if(_ds != "")
{
	ds_list_read(global.mapsCollected,_ds);
}

if(!ds_list_empty(global.mapsCollected))
{
	for(var i = 0; i < ds_list_size(global.mapsCollected); i++)
	{
		with(global.mapsCollected[| i])
		{
			instance_destroy();
		}
	}
}

if(Load("Objects","Wallblock",false))
{
	with(oWallBlock) 
	{
		instance_destroy();
	}
	
	with(oWallBlockActivate) 
	{
		instance_destroy();
	}
	
	with(oFallingGroundWallBlock) 
	{
		instance_destroy();
	}
}