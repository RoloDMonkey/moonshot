extends RigidBody2D

# Plunger

export var plunger_speed = 800
var shooting = false

func _draw():
	draw_circle(Vector2(0,-9), 6, Color(ColorN("blue", 1)))
	draw_rect(Rect2(-6, -9, 12, 36), Color(ColorN("blue", 1)))

func _input(event):
	if event.is_action_pressed("shoot"):
		self.shoot()
		
func shoot():
	self.apply_central_impulse(Vector2(0, -1) * plunger_speed)
