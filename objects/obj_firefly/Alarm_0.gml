/// @desc 
with(bottle)
{
	instance_create_layer(other.x,other.y,"Lighting",obj_firefly_player);
	instance_destroy();
}
instance_change(obj_firefly_special,true);