extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _draw():
	var line_color = Color(ColorN("blue", 1))
	draw_line(Vector2(-12.5, 85), Vector2(-12.5, -46.5), line_color, 1.0, true)
	draw_line(Vector2(12.5, 85), Vector2(12.5, -46.5), line_color, 1.0, true)
	draw_line(Vector2(-12.5, 85), Vector2(-1.5, 85), line_color, 1.0, true)
	draw_line(Vector2(12.5, 85), Vector2(1.5, 85), line_color, 1.0, true)
	draw_line(Vector2(-1.5, 85), Vector2(-1.5, 40), line_color, 1.0, true)
	draw_line(Vector2(1.5, 85), Vector2(1.5, 40), line_color, 1.0, true)
	draw_arc(Vector2(0, -46.5), 12.5, PI * -1, 0, 25, line_color, 1.0, true)
	draw_arc(Vector2(0, 40), 1.5, PI * -1, 0, 3, line_color, 1.0, true)
