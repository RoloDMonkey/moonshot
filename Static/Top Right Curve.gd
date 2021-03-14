extends CollisionPolygon2D

# Top Right Curve

func _draw():
	draw_arc(Vector2(1.5, 114.5), 116, 0, deg2rad(-90), 14, Global.border_color, 3)
