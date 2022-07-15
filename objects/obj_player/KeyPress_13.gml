/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 1617999C
/// @DnDArgument : "var" "current_room"
current_room = room;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36E46B40
/// @DnDArgument : "expr" "current_room"
/// @DnDArgument : "var" "player_room"
player_room = current_room;

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 73D27C3E
/// @DnDArgument : "room" "Room4"
/// @DnDSaveInfo : "room" "Room4"
room_goto(Room4);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 5427C49D
/// @DnDArgument : "soundid" "snd_gate_iron_open"
/// @DnDSaveInfo : "soundid" "snd_gate_iron_open"
audio_play_sound(snd_gate_iron_open, 0, 0);

/// @DnDAction : YoYo Games.Audio.Pause_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 551333EC
audio_pause_all();