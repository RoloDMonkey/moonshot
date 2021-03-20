extends Node2D

# Insert Light Test

# TODO: make a scene that contains a lane rollover and an insert light that
#       encapsulates this
# TODO: the scene should also emit a signal so that the activation can be
#       processed at a higher level, like adding points, or figuring out if
#       a set of insert lights has been completed

func _on_LaneRollover_roll_over():
	$"Insert Light".activate()
