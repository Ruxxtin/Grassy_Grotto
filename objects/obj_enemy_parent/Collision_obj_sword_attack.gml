/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6BEA509F
/// @DnDArgument : "soundid" "snd_baddie_defeated"
/// @DnDSaveInfo : "soundid" "snd_baddie_defeated"
audio_play_sound(snd_baddie_defeated, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 10749607
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 07BFA5A4
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FFFFFFFF"
effect_create_above(5, x + 0, y + 0, 2, $FFFFFFFF & $ffffff);