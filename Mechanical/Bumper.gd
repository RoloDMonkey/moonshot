extends StaticBody2D

# Bumper

var push_speed = 100

func _draw():
	draw_circle(Vector2(0,0), 38, Color(ColorN("blue", 1)))
	
func get_push_speed():
	return self.push_speed

func hit():
	self.find_parent("Root").addPoints(100)
