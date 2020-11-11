extends KinematicBody2D

# Ball

export (int) var gravity = 150

var velocity = Vector2()

func _draw():
	draw_circle(Vector2(0,0), 13.5, Color(ColorN("red", 1)))
	
func _physics_process(delta):
	velocity.y += gravity * delta
	
	var collision = move_and_collide(velocity * delta)
	if collision:
		if collision.collider.has_method("get_push_speed"):
			var push_speed = collision.collider.get_push_speed()
			velocity = collision.normal * push_speed
		else:
			velocity = velocity.bounce(collision.normal)
