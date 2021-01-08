extends RigidBody2D

# RigidBall

var start_position = Vector2()
var reset = false

func _integrate_forces(state):
	for i in range(state.get_contact_count()):
		var o = state.get_contact_collider_object(i)
		if o.has_method("get_push_speed"):
			var push_speed = o.get_push_speed()
			var contact_normal = state.get_contact_local_normal(i).normalized()
			self.apply_central_impulse(contact_normal * push_speed)
		if o.has_method("hit"):
			o.hit()
	if (self.reset):
		state.transform = Transform2D(0, self.start_position)
		self.linear_velocity = Vector2()
		self.reset = false
