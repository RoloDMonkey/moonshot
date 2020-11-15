extends RigidBody2D

# Plunger

export var plunger_speed = 800
var shooting = false

func _draw():
	draw_circle(Vector2(0,-9), 6, Color(ColorN("blue", 1)))
	draw_rect(Rect2(-6, -9, 12, 24), Color(ColorN("blue", 1)))

func _input(event):
	if event.is_action_pressed("ui_accept"):
		self.shooting = true

func _integrate_forces(state):
	if self.shooting:
		self.apply_central_impulse(Vector2(0, -1) * plunger_speed)
		self.shooting = false
	
