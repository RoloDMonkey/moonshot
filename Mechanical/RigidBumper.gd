extends RigidBody2D

# RigidBumper

func _draw():
	draw_circle(Vector2(0,0), 38, Color(ColorN("green", 1)))
	
func _on_RigidBumper_body_entered(body):
	var collision_direction = self.position.direction_to(body.position).normalized()
	body._integrate_forces.apply_impulse(Vector2(), Vector2(0, -400))
