extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var push_speed = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _draw():
	draw_circle(Vector2(0,0), 38, Color(ColorN("blue", 1)))

func hit(body):
	body.apply_impulse(Vector2(), body.linear_velocity.bounce(body.linear_velocity.normalized()) * push_speed)
	
