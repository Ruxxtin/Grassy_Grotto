/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7AD828D3
/// @DnDArgument : "key" "ord("S")"
var l7AD828D3_0;
l7AD828D3_0 = keyboard_check(ord("S"));
if (l7AD828D3_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7CE566B3
	/// @DnDParent : 7AD828D3
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7D70D361
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1362B03B
	/// @DnDComment : If Alarm 0 is deactivated
	/// @DnDParent : 7D70D361
	/// @DnDArgument : "var" "alarm[0]"
	/// @DnDArgument : "op" "1"
	if(alarm[0] < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2CAC6C6C
		/// @DnDComment : face towards enemy
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "x" "other.x"
		/// @DnDArgument : "y" "other.y"
		direction = point_direction(x, y, other.x, other.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 7A7434AE
		/// @DnDComment : turns player around
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "direction" "180"
		/// @DnDArgument : "direction_relative" "1"
		direction += 180;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 38258838
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "speed" "12"
		speed = 12;
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1003E78C
		/// @DnDComment : Set the color to red to show the player$(13_10)has lost
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "colour" "$FF00007F"
		image_blend = $FF00007F & $ffffff;
		image_alpha = ($FF00007F >> 24) / $ff;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 764ECBC6
		/// @DnDComment : Play "hurt" sound
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "soundid" "snd_hurt"
		/// @DnDSaveInfo : "soundid" "snd_hurt"
		audio_play_sound(snd_hurt, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20E5C897
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hearts"
		hearts += -1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5641C2B6
		/// @DnDComment : Tell the Alarm 0 event to run after 20 frames$(13_10)$(13_10)After 20 frames that event will restart the level
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "steps" "20"
		alarm_set(0, 20);
	}
}