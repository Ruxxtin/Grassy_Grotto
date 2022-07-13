/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 54BE8D6C
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
/// @DnDArgument : "expr" "input_direction"
/// @DnDArgument : "var" "hand.image_angle"
hand.image_angle = input_direction;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7C881016
/// @DnDApplyTo : {obj_shuriken_attack}
/// @DnDArgument : "speed" "10"
with(obj_shuriken_attack) speed = 10;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 20950F24
/// @DnDApplyTo : {obj_shuriken_attack}
/// @DnDArgument : "direction" "obj_player.input_direction"
with(obj_shuriken_attack) direction = obj_player.input_direction;