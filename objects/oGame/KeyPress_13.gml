/// @description Insert description here
// You can write your code in this editor
switch(room)
{
	//restarts game if at game over screen
	case rm_win:
	game_restart();
	break;
	case rm_gameover:
	game_restart();
	break;
}