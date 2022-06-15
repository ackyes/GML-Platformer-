/// @description Insert description here
// You can write your code in this editor

if(lives < 3){				// if the player is not at max health
	lives++;				// increase the players health
	with(other){			// destroy the pickup
		instance_destroy();
	}
}