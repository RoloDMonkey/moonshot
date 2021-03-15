extends Node2D

# Rollover Lane Guide

func _draw():
	draw_circle(Vector2(0, -16), 11, Global.rubber_color)
	draw_circle(Vector2(0, 16), 11, Global.rubber_color)
	draw_rect(Rect2(-11, -16, 22, 32), Global.semi_border_color)
