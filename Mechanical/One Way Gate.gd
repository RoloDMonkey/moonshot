extends Area2D

# One Way Gate

signal add_points(base_points)

export var base_points = 10

func _draw():
	var line_color = Global.placeholder_color
	draw_line(Vector2(-15.5, -1.5), Vector2(15.5, -1.5), line_color, 1.0, true)
	draw_line(Vector2(-15.5, 1.5), Vector2(15.5, 1.5), line_color, 1.0, true)
	draw_arc(Vector2(-15.5, 0), 1.5, deg2rad(90), deg2rad(270), 3, line_color, 1.0, true)
	draw_arc(Vector2(15.5, 0), 1.5, deg2rad(90), deg2rad(-90), 3, line_color, 1.0, true)


func _on_One_Way_Gate_body_entered(body):
	emit_signal("add_points", self.base_points)
