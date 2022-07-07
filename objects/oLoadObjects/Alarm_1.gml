/// @desc
instance_activate_all();
Save("Player","X",oPlayer.x);
Save("Player","Y",oPlayer.y);
Save("Player","xScale",oPlayer.image_xscale);

Save("Objects","Bottles",ds_list_write(global.bottlemap));

Save("Objects","Fireflies",ds_list_write(global.fireflymap));

Save("Objects","Stars",ds_list_write(global.starmap));

for(var i = 0; i < instance_number(oKey); i++)
{
	var _key = instance_find(oKey,i);
	ds_grid_set(global.keymap,0,i,_key.mode);
	ds_grid_set(global.keymap,1,i,_key.target);
}

Save("Objects","Keys",ds_grid_write(global.keymap));

Save("Objects","MapsCollected",ds_list_write(global.mapsCollected));

Save("Objects","Turkeys",ds_list_write(global.turkeymap));

for(var i = 0; i < 16; i++)
{
	for(var j = 0; j < 16; j++)
	{
		ds_grid_set(global.pausemap,i,j,oPause.stoneunlocked[i,j]);
	}
}

Save("Pause","Map",ds_grid_write(global.pausemap));

Save("Counters","Jumps",global.jumps);
Save("Counters","Walljumps",global.walljumps);
Save("Counters","Ducks",global.ducks);
Save("Counters","Fireflies",instance_number(obj_firefly_special));
Save("Counters","Starcount",global.starcount);

Save("Objects","Wallblock",!instance_exists(oWallBlockActivate));

alarm[1] = room_speed*60;