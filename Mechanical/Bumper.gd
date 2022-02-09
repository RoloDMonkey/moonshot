extends StaticBody2D

# Bumper

signal add_points(base_points)

export var base_points = 100
export var push_speed = 200
var sound

func _ready():
	self.sound = self.find_node("bumperHit")

func _draw():
	draw_circle(Vector2(0,0), 38, Global.placeholder_color)
	
func get_push_speed():
	return self.push_speed

func hit():
	emit_signal("add_points", self.base_points)
	self.playSound()
	
func playSound():
	self.sound.play()
