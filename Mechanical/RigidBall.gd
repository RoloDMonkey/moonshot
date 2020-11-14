extends RigidBody2D

# RigidBall

func _draw():
	draw_circle(Vector2(0,0), 13.5, Color(ColorN("orange", 1)))
	
func _integrate_forces(state):
	for i in range(state.get_contact_count()):
		var o = state.get_contact_collider_object(i)
		if o.has_method("get_push_speed"):
			var push_speed = o.get_push_speed()
			var contact_normal = state.get_contact_local_normal(i).normalized()
			self.apply_central_impulse(contact_normal * push_speed)

