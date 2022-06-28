if(room == rGame) and ((oPause.pause) or (!hascontrol) or ((instance_exists(oHouseDoor)) and (oHouseDoor.phase != 0)))
{
	image_speed = 0;
	exit;	
}
else
{
	image_speed = 1;
}
if(!instance_exists(oGhost))
{
	if(!burst)
	{
		#region Get Player Imput
		Inputs();
		#endregion

		#region Calculate Horizontal Movement
		walljumpdelay = max(walljumpdelay-1,0);
		if (walljumpdelay == 0)
		{
			if(onground)
			{
				var hsp_friction_final = hsp_friction_ground;
			}
			else
			{
				var hsp_friction_final = hsp_friction_air;
			}
			if(!ducking)
			{
				hsp = hsp_walk*image_xscale;
				var dir = image_xscale;
				hsp += dir * hsp_acc;
			}
			else
			{
				var hsp_friction_final = hsp_friction_duck;
				if(key_jump)
				{
					hsp = hsp_duckjump*image_xscale;
					hsp_fraction = 0;
				}
				hsp = Approch(hsp,0,hsp_friction_final);
			}
			hsp = clamp(hsp,-hsp_walk,hsp_walk);
		}
		#endregion

		#region Ducking
		var wallabove = instance_place(x,y-15,oWall);
		if((!key_jump) and (key_duck) and (reduck)) or ((ducking) and (wallabove != noone))
		{
			if(!ducking)
			{
				global.ducks++;
				if(onwall != 0)
				{
					hsp = 0;
					hsp_fraction = 0;
					with(oHint5)
					{
						active = true;
					}
				}
				else
				{
					with(oHint5)
					{
						if(active)
						{
							dissappear = true;
						}
					}
				}
			}
			ducking = true;
			mask_index = sPlayerD;
		}
		else
		{	
			if(key_duck) or (!onground)
			reduck = false;
			else
			reduck = true;
			ducking = false;
			mask_index = sPlayer;
		}
		#endregion

		#region Wall Jump
		if(onwall != 0) and (!onground) and (key_jump)
		{
			if(wRoll == 0)
			{
				wRoll = 1;
			}
			else
			{
				wRoll = 2;
			}
			global.walljumps++;
			for(var i = 1; i <= 5; i++)
			{
				var dash = instance_create_layer(x,y,layer,oDash);
				dash.alarm[0] = i;
				dash.image_alpha = 0;
			}
			walljumpdelay = walljumpdelay_max;
			hsp = -onwall*hsp_wjump;
			vsp = vsp_wjump;
	
			hsp_fraction = 0;
			vsp_fraction = 0;
		}
		#endregion

		#region Calculate Vertical Movement
		var grv_final = grv;
		var vsp_max_final = vsp_max;
		if (onwall != 0) and (vsp > 0)
		{
			grv_final = grv_wall;
			vsp_max_final = vsp_max_wall;
			if(instance_place(bbox_right+1,y,oWallSlideFast) != noone) or (instance_place(bbox_left-1,y,oWallSlideFast) != noone)
			{
				vsp_max_final = vsp_max_wall_fast;
			}
		}
		vsp += grv_final;
		#endregion

		#region Ground Jump
		if (jumpbuffer >= 0)
		{
			jumpbuffer--;
	
			if(key_jump)
			{
				jumpbuffer = 0;
				if ((wallabove == noone))
				{
					global.jumps++;
					vsp = vsp_jump;
					ducking = false;
				}
				else if(ducking)
				{
					vsp = vsp_duckjump;
				}
				vsp_fraction = 0;
			}
		}
		vsp = clamp(vsp,-vsp_max_final,vsp_max_final);
		#endregion

		#region Dump Fractions
		hsp += hsp_fraction;
		vsp += vsp_fraction;
		hsp_fraction = frac(hsp);
		vsp_fraction = frac(vsp);
		hsp -= hsp_fraction;
		vsp -= vsp_fraction;
		#endregion

		#region Horizontal Collision
		if (place_meeting(x+hsp,y,pWall))
		{
			var onepixel = sign(hsp);
			while(!place_meeting(x+onepixel,y,pWall)) x += onepixel;
			hsp = 0;
			hsp_fraction = 0;
		}
		#endregion

		#region Horizontal Move
		x += hsp;
		#endregion

		#region Vertical Collision
		if (place_meeting(x,y+vsp,pWall))
		{
			var onepixel = sign(vsp)
			while(!place_meeting(x,y+onepixel,pWall)) y += onepixel;
			vsp = 0;
			vsp_fraction = 0;
		}
		#endregion

		#region Vertical Move
		y += vsp
		#endregion

		#region Calculate Status
		onground = place_meeting(x,y+1,pWall);
		onwall = place_meeting(x+1,y,pWall) - place_meeting(x-1,y,pWall);
		if((onwall != image_xscale) and (onwall != 0)) or (ducking) onwall = 0;
		if (onground) jumpbuffer = 0;
		//if(onground) or (onwall != 0) or (sprite_index == sPlayerA) angle = Approch(Wrap(angle,min(0,360*image_xscale),max(0,360*image_xscale)),0,20);
		#endregion

		#region Animation
		image_speed = 1;
		if(hsp != 0) image_xscale = sign(hsp);
		if(ducking)
		{
			if(!layer_exists("Behind")) layer_create(10,"Behind");
			if(sprite_index != sPlayerD) repeat(5) {instance_create_layer(x,bbox_bottom,"Behind",oDust)};
			//if(wallabove == noone)
			//angle = Wrap(angle-hsp*6,min(0,360*image_xscale),max(0,360*image_xscale));
			sprite_index = sPlayerD;
		}
		else
		{
			if (!onground)
			{
				if (onwall != 0)
				{
					if(!layer_exists("Behind")) layer_create(10,"Behind");
					if(sprite_index != sPlayerW) 
					{
						var side;
						if(onwall = 1) side = bbox_right; else side = bbox_left;
						repeat(5) {instance_create_layer(side,y,"Behind",oDust)};
					}
					
					sprite_index = sPlayerW;
					image_xscale = onwall;
		
					var side = bbox_left;
					if (onwall = 1) side = bbox_right;
					dust++;
					if(!layer_exists("Behind")) layer_create(10,"Behind");
					if ((dust > 2) and (vsp > 0)) with (instance_create_layer(side,bbox_top,"Behind",oWallJumpDust))
					{
						other.dust = 0;
						hspeed = -other.onwall*0.5;
					}
				}
				else
				{
					if(sprite_index == sPlayerR)
					{
						parkor = true;
					}
					else if (sprite_index != sPlayerA) and (sprite_index != sPlayerD)
					{
						parkor = false;
					}
					
					dust = 0;
					image_speed = 0;
					
					sprite_index = sPlayerA;
					image_index = (vsp > 0);
					
				}
			}
			else 
			{
				if(sprite_index == sPlayerA) and (angle == 0) and (roll) angle = 360*image_xscale;
				roll = false;
				if(angle == 0)
				{
					if(!layer_exists("Behind")) layer_create(10,"Behind");
					if(sprite_index != sPlayer) and (sprite_index != sPlayerR) and (sprite_index != sPlayerD) repeat(5) {instance_create_layer(x,bbox_bottom,"Behind",oDust)};
					if(hsp != 0)
					{
						sprite_index = sPlayerR;
						if(image_index == 3) audio_play_sound(snFootstep,1,false);
					}
					else 
					{
						sprite_index = sPlayer;
					}
					wRoll = 0;
				}
				else
				{
					sprite_index = sPlayerD;
					wRoll = 2;
				}
			}
		}
		#endregion
	}
	else
	{
		#region Burst
	var spd = 10;
	var lay_id = layer_get_id("Ground");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, x, y);
	x = Approch(x,3935,spd);
	if(x == 3935) burst = false;
	image_speed = 5;
	if(alarm[0] <= 0) alarm[0] = room_speed*3;
	#endregion
	}
}

#region Update View
		var xbor;
		var xpos = 384;
		if(image_xscale = 1) xbor = view_wport[0]-xpos; else xbor = xpos;
		camera_set_view_border(view_camera[1],xbor,camera_get_view_border_y(view_camera[1]));
		#endregion

if(room == rExtra) instance_create_layer(x,y,layer,oDash);

#region Unlock Door
door = instance_nearest(x,y,oLockedDoor);
if(door != noone)
{
	if(keys != 0) and (point_in_circle(x,y,door.x+(door.sprite_width/2),door.y+(door.sprite_height/2),196)) and (!door.gotkey)
	{
		door.gotkey = true;
		with(oKey)
		{
			if(keynumber == 1)
			{
				mode = 2;
				target = other.door;
			}
			
			if(keynumber != 0)
			{
				keynumber -= 1;
			}
		}
		keys--;
	}
}
#endregion

polygon = polygon_from_instance(id);