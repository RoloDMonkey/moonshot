extends RigidBody2D

# Plunger

var plunger_speed = 100
var push_speed = 600
var shooting = false
var cool_down_time = 1
var cool_down_remaining = 0

func _draw():
	draw_circle(Vector2(0,-9), 6, Global.placeholder_color)
	draw_rect(Rect2(-6, -9, 12, 36), Global.placeholder_color)

func _process(delta):
	if self.shooting:
		self.cool_down_remaining -= delta
		if self.cool_down_remaining < 0:
			self.shooting = false

func _input(event):
	if event.is_action_pressed("shoot"):
		self.shoot()
		
func shoot():
	if !self.shooting:
		self.apply_central_impulse(Vector2(0, -1) * plunger_speed)
		self.shooting = true
		self.cool_down_remaining = self.cool_down_time

func get_push_speed():
	return self.push_speed
