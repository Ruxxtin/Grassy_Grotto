/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 54BE8D6C
/// @DnDArgument : "xpos" "200"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "hand"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_shuriken_attack"
/// @DnDSaveInfo : "objectid" "obj_shuriken_attack"
var hand = instance_create_layer(x + 200, y + 0, "Instances", obj_shuriken_attack);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05ADE027
/// @DnDArgument : "expr" "image_xscale"
/// @DnDArgument : "var" "hand.image_xscale"
hand.image_xscale = image_xscale;