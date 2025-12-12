var target_obj = obj_enemy;
if(collision_circle(x, y, 250, target_obj, true, true) && can_shoot)
{
	var dir = point_direction(x, y, target_obj.x, target_obj.y)
	with instance_create_depth(x, y, 0, obj_bullet)
	{
		direction = dir;
		speed = 15;
	}
	can_shoot = false;
	alarm[1] = 50;
}