extends StaticBody2D

# Left Lane Guide

func _draw():
	var semi_border_color = Color(ColorN("dark magenta", 0.5))
	
	draw_circle(Vector2(0, 0), 5, semi_border_color)
	draw_rect(Rect2(-5, 0, 10, 45), semi_border_color)
	draw_arc(Vector2(36.5, 45), 33, deg2rad(180), deg2rad(125), 12, semi_border_color, 3)
	draw_line(Vector2(17.5, 70.5), Vector2(97.5, 127.5), semi_border_color, 3)
	draw_arc(Vector2(91, 137), 13, deg2rad(125), deg2rad(305), 12, semi_border_color, 3)
	draw_line(Vector2(84.5, 147), Vector2(-3.5, 83), semi_border_color, 3)
	draw_line(Vector2(-3.5, 83), Vector2(-3.5, 45), semi_border_color, 3)
