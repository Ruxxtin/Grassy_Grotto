/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 74215145
/// @DnDArgument : "key" "ord("S")"
var l74215145_0;
l74215145_0 = keyboard_check(ord("S"));
if (l74215145_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7B4B4917
	/// @DnDParent : 74215145
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5CC7904F
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71526F35
	/// @DnDParent : 5CC7904F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "sword"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_sword_attack"
	/// @DnDSaveInfo : "objectid" "obj_sword_attack"
	var sword = instance_create_layer(x + 0, y + 0, "Instances", obj_sword_attack);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C3F7912
	/// @DnDParent : 5CC7904F
	/// @DnDArgument : "expr" "input_direction"
	/// @DnDArgument : "var" "sword.image_angle"
	sword.image_angle = input_direction;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 21B5B248
	/// @DnDParent : 5CC7904F
	/// @DnDArgument : "soundid" "snd_sword_swing"
	/// @DnDSaveInfo : "soundid" "snd_sword_swing"
	audio_play_sound(snd_sword_swing, 0, 0);
}