extends StaticBody2D

# Right Lane Guide

func _draw():
	
	draw_circle(Vector2(0, 0), 5, Global.semi_border_color)
	draw_rect(Rect2(-5, 0, 10, 45), Global.semi_border_color)
	draw_arc(Vector2(-36.5, 45), 33, 0, deg2rad(55), 12, Global.semi_border_color, 3)
	draw_line(Vector2(-17.5, 70.5), Vector2(-97.5, 127.5), Global.semi_border_color, 3)
	draw_arc(Vector2(-91, 137), 13, deg2rad(55), deg2rad(-125), 12, Global.semi_border_color, 3)
	draw_line(Vector2(-84.5, 147), Vector2(3.5, 83), Global.semi_border_color, 3)
	draw_line(Vector2(3.5, 83), Vector2(3.5, 45), Global.semi_border_color, 3)
