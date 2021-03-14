extends StaticBody2D

# Bumper

signal add_points(base_points)

var push_speed = 200

func _draw():
	draw_circle(Vector2(0,0), 38, Global.placeholder_color)
	
func get_push_speed():
	return self.push_speed

func hit():
	emit_signal("add_points", 100)
