/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6E73C7BE
/// @DnDArgument : "key" "ord("S")"
var l6E73C7BE_0;
l6E73C7BE_0 = keyboard_check(ord("S"));
if (l6E73C7BE_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1C8E829C
	/// @DnDParent : 6E73C7BE
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 437A7DED
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 54BE8D6C
	/// @DnDParent : 437A7DED
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "hand"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_shuriken_attack"
	/// @DnDSaveInfo : "objectid" "obj_shuriken_attack"
	var hand = instance_create_layer(x + 0, y + 0, "Instances", obj_shuriken_attack);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05ADE027
	/// @DnDParent : 437A7DED
	/// @DnDArgument : "expr" "input_direction"
	/// @DnDArgument : "var" "hand.image_angle"
	hand.image_angle = input_direction;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7C881016
	/// @DnDApplyTo : {obj_shuriken_attack}
	/// @DnDParent : 437A7DED
	/// @DnDArgument : "speed" "10"
	with(obj_shuriken_attack) speed = 10;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 20950F24
	/// @DnDApplyTo : {obj_shuriken_attack}
	/// @DnDParent : 437A7DED
	/// @DnDArgument : "direction" "obj_player.input_direction"
	with(obj_shuriken_attack) direction = obj_player.input_direction;
}