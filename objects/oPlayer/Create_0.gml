/// @desc Variables
event_inherited();
hsp = 0;
vsp = 0;
hsp_fraction = 0;
vsp_fraction = 0;

hsp_acc = 1;
hsp_friction_ground = 0.5;
hsp_friction_air = 0.15;
hsp_friction_duck = 0.1;
if(room == rExtra)
{
	hsp_walk = 8;
	hsp_wjump = 8;
	hsp_duckjump = 8;
}
else
{
	hsp_walk = 4;
	hsp_wjump = 4;
	hsp_duckjump = 4;
}
keys = 0;
vsp_jump = -8;
vsp_max = 10;
vsp_wjump = -5;
vsp_max_wall = 4;
vsp_max_wall_fast = 1000;
vsp_duckjump = -1;

onground = false;
onwall = 0;
ducking = false;
reduck = true;

dust = 0;

grv = 0.3;
grv_wall = 0.1;

jumpbuffer = 0;
walljumpdelay = 0;
walljumpdelay_max = 17;

burst = false;

hascontrol = true;

polygon = polygon_from_instance(id);
angle = 0;
parkor = false;
roll = false;
wRoll = 0;
duckHint = false;