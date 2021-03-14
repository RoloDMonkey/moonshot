extends StaticBody2D

# Bumper

var push_speed = 200

func _draw():
	draw_circle(Vector2(0,0), 38, Global.placeholder_color)
	
func get_push_speed():
	return self.push_speed

func hit():
	# TODO: Do this with signals.
	self.find_parent("Root").addPoints(100)
