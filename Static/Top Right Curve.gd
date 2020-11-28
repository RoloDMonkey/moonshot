extends CollisionPolygon2D

# Top Right Curve

func _draw():
	var border_color = Color(ColorN("dark magenta"))
	draw_arc(Vector2(1.5, 114.5), 116, 0, deg2rad(-90), 14, border_color, 3)
