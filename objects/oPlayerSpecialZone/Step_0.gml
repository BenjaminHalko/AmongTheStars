/// @desc
phy_rotation = angle;
spin -= 20;

if(hasControl)
{
	Inputs();
	if(key_jump) and (instance_place(x,bbox_bottom,all) != noone)
	{
		physics_apply_force(x,y+sprite_height/2-5,0,-3000);
	}
	if(key_right - key_left != 0) phy_linear_velocity_x = Approch(phy_linear_velocity_x,(key_right - key_left)*75,10);
}