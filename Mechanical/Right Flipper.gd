extends Node2D

# Right Flipper

export var flip_duration = 0.1
var flipping = false
var returning = false
var flip_time = 0
var flipper
var up_angle = deg2rad(214.3)
var down_angle = deg2rad(149.3)

func _ready():
	self.flipper = self.find_node("Flipper")

func _input(event):
	if (event.is_action_pressed("right_button")):
		self.flip()
	elif (event.is_action_released("right_button")):
		self.release()
		
func flip():
	self.returning = false
	if (!self.flipping):
		self.flipping = true
		var current_offset = abs(deg2rad(self.flipper.rotation_degrees) - self.down_angle)
		var total_offset = abs(self.up_angle - self.down_angle)
		self.flip_time = (current_offset / total_offset) * self.flip_duration
		self.flipper.angular_velocity = 30
		self.flipper.playSound()
	
func release():
	self.flipping = false
	if (!self.returning):
		self.returning = true
		var current_offset = abs(self.up_angle - deg2rad(self.flipper.rotation_degrees))
		var total_offset = abs(self.up_angle - self.down_angle)
		self.flip_time = (current_offset / total_offset) * self.flip_duration

func _physics_process(delta):
	if (self.flipping):
		if (self.flip_time < self.flip_duration):
			var weight = self.flip_time / self.flip_duration
			self.flipper.rotation_degrees = rad2deg(lerp_angle(self.down_angle, self.up_angle, weight))
			self.flip_time += delta
		else:
			self.flipping = false
			self.flipper.angular_velocity = 0
	elif (self.returning):
		if (self.flip_time < self.flip_duration):
			var weight = self.flip_time / self.flip_duration
			self.flipper.rotation_degrees = rad2deg(lerp_angle(self.up_angle, self.down_angle, weight))
			self.flip_time += delta
		else:
			self.returning = false
	
