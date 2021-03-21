extends Node2D

# Lane Rollover w/ Insert Light

signal light_activated()
signal add_points(base_points)

export var base_points = 10
var activated = false

func _on_Lane_Rollover_roll_over():
	$"Insert Light".activate()
	emit_signal("add_points", self.base_points)
	if (!self.activated) :
		emit_signal("light_activated")
		self.activated = true
