/// @description Insert description here
// You can write your code in this editor

//player's lives sends to game over
if(lives <= 0)
	{
	room_goto(rm_gameover);
	}
	
//pausing game
if (room == Room1 or room = Room2)
{
if keyboard_check_pressed(ord("P"))
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
}
/*if paused == true
    {
    alarm[0]++;
    alarm[1]++;
    }
}*/