if(sprite_index == spr_player_walk_u)
{
	sprite_index = spr_player_idle_u;
}

if(sprite_index == spr_player_walk_d)
{
	sprite_index = spr_player_idle_d;
}

if(sprite_index == spr_player_walk_s)
{
	sprite_index = spr_player_idle_s;
}
	
if keyboard_check(ord("A"))
{
		sprite_index = spr_player_walk_s;
		image_xscale = scale;
		
		alarm[1] = timeout;
}

if keyboard_check(ord("D"))
{
	sprite_index = spr_player_walk_s;
	image_xscale = -scale;
	
	alarm[1] = timeout;
}

if keyboard_check(ord("W"))
{
	sprite_index = spr_player_walk_u;
	image_xscale = scale;
	
	alarm[1] = timeout;
}

if keyboard_check(ord("S"))
{
	sprite_index = spr_player_walk_d;
	image_xscale = scale;
	
	alarm[1] = timeout;
}

var hmove = keyboard_check(ord("D")) - keyboard_check(ord("A")); 
var vmove = keyboard_check(ord("S")) - keyboard_check(ord("W")); 

// Проверка на столкновение с объектом "стена" 
if(place_meeting(x + hmove * sp, y, obj_tower)) 
{ 
    hmove = 0; 
} 

if(place_meeting(x, y + vmove * sp, obj_tower)) 
{ 
    vmove = 0; 
} 

x += hmove * sp; 
y += vmove * sp;

if(hp <= 0)
{
	instance_destroy();
}