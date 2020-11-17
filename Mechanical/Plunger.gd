extends RigidBody2D

# Plunger

export var plunger_speed = 800
var shooting = false 
export var cool_down_time = 1
var cool_down_remaining = 0

func _draw():
	draw_circle(Vector2(0,-9), 6, Color(ColorN("blue", 1)))
	draw_rect(Rect2(-6, -9, 12, 36), Color(ColorN("blue", 1)))

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
	
