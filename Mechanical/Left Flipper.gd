extends Node2D

# Left Flipper

export var flip_duration = 0.1
var flipping = false
var returning = false
var flip_time = 0
var flipper
var up_angle = deg2rad(-24.7)
var down_angle = deg2rad(30.3)

func _ready():
	self.flipper = self.find_node("Flipper")

func _input(event):
	if (event.is_action_pressed("ui_left")):
		self.flip()
	elif (event.is_action_released("ui_left")):
		self.release()
		
func flip():
	self.returning = false
	if (!self.flipping):
		print_debug("flipping")
		self.flipping = true
		var current_offset = abs(self.flipper.rotation_degrees - self.down_angle)
		var debug_string = "current_offset: %s"
		print_debug(debug_string % current_offset)
		var total_offset = abs(self.up_angle - self.down_angle)
		debug_string = "total_offset: %s"
		print_debug(debug_string % total_offset)
		self.flip_time = (current_offset / total_offset) * self.flip_duration
		debug_string = "flip_time: %s"
		print_debug(debug_string % self.flip_time)
	
func release():
	self.flipping = false
	if (!self.returning):
		self.returning = true
		var current_offset = abs(self.up_angle - self.flipper.rotation_degrees)
		var total_offset = abs(self.up_angle - self.down_angle)
		self.flip_time = (current_offset / total_offset) * self.flip_duration

func _physics_process(delta):
	if (self.flipping):
		if (self.flip_time < self.flip_duration):
			var weight = self.flip_time / self.flip_duration
			self.flipper.rotation_degrees = lerp_angle(self.down_angle, self.up_angle, weight)
			self.flip_time += delta
		else:
			self.flipping = false
	elif (self.returning):
		if (self.flip_time < self.flip_duration):
			var weight = self.flip_time / self.flip_duration
			self.flipper.rotation_degrees = lerp_angle(self.up_angle, self.down_angle, weight)
			self.flip_time + delta
		else:
			self.returning = false
	
