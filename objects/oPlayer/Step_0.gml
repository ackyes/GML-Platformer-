/// @desc Core Player Logic

// Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
// var = temporary variable
var _move = key_right - key_left;

hsp = _move * walksp;
vsp = vsp + grv;

// Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while
	{
		
	}
	
}