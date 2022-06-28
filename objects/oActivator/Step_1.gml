/// @desc 
arraysize = 0;
distancetofindstars = 500;
var margin = 256;
var x1 = oPlayer.x-oCamera.view_w_half-margin;
var x2 = oPlayer.x+oCamera.view_w_half+margin;
var y1 = oPlayer.y-oCamera.view_h_half-margin;
var y2 = oPlayer.y+oCamera.view_h_half+margin;
instance_deactivate_object(oStar);
instance_activate_region(x1-distancetofindstars,y1-distancetofindstars,x2+distancetofindstars,y2+distancetofindstars,true);
starnear = instance_number(oStar);
with(oFallingGround)
{
	if(falling) or (image_alpha != 1)
	{
		with(other)
		{
			fallgroundid[arraysize] = other.id;
			arraysize ++;
		}
	}
}

if(!oPause.pause)
{
	instance_activate_object(obj_light_renderer);
	instance_deactivate_object(oWall);
	instance_activate_region(x1,y1,x2,y2,true);
	instance_activate_object(oStar);
	if(y1 <= 540)
	instance_activate_object(oStarCreator);
	instance_activate_object(oFlash);
	var lay_id = layer_get_id("Player");
	instance_activate_layer(lay_id);
	for(var i = 0; i < arraysize;i++;)
	{
		instance_activate_object(fallgroundid[i]);
	}
}
else
{
	instance_activate_all();
	instance_deactivate_object(obj_light_renderer);
	instance_deactivate_object(obj_firefly_player);
	instance_deactivate_object(obj_firefly_special);
	instance_deactivate_object(obj_moth);
	
	if(!global.FirefliesMap) instance_deactivate_object(obj_firefly);
	if(!global.BottlesMap) instance_deactivate_object(oBottle);
}

if((instance_exists(oCamera.follow)) and (oCamera.follow.object_index == oTurkeyBit)) or (instance_exists(oScreenshot))
{
	instance_activate_all();
}