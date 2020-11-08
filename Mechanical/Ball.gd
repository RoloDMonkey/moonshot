extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (int) var gravity = 150

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _draw():
	draw_circle(Vector2(0,0), 13.5, Color(ColorN("red", 1)))
	
func _physics_process(delta):
	velocity.y += gravity * delta
	
	var collision = move_and_collide(velocity * delta)
	if collision:
		var speed = 1;
		if collision.collider.has_method("get_push_multiplier"):
			speed = collision.collider.get_push_multiplier()
		velocity = collision.normal * speed;
		
