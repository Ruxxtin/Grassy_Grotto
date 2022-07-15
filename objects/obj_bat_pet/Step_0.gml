/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 69C0C99D
/// @DnDArgument : "x1" "-100"
/// @DnDArgument : "y1" "-100"
/// @DnDArgument : "x2" "100"
/// @DnDArgument : "y2" "100"
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "shape" "2"
/// @DnDSaveInfo : "obj" "obj_player"
var l69C0C99D_0 = collision_ellipse(-100, -100, 100, 100, obj_player, true, 1);
if((l69C0C99D_0))
{

}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3F96C8E7
/// @DnDArgument : "speed" "4"
speed = 4;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 00C6802C
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y"
direction = point_direction(x, y, obj_player.x, obj_player.y);