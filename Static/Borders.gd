extends StaticBody2D

# Playfield Borders

func _draw():
	var semi_border_color = Color(ColorN("dark magenta", 0.5))
	var border_color = Color(ColorN("dark magenta"))
	
	# left border
	draw_rect(Rect2(0, 0, 13, 865), semi_border_color)
	draw_rect(Rect2(10, 0, 3, 865), border_color)
	# top border
	draw_rect(Rect2(0, 0, 516, 13), semi_border_color)
	draw_rect(Rect2(0, 10, 516, 3), border_color)
	# right border
	draw_rect(Rect2(503, 0, 13, 865), semi_border_color)
	draw_rect(Rect2(503, 0, 3, 865), border_color)
	
	# shooter lane
	draw_rect(Rect2(457, 161, 10, 704), semi_border_color)
	draw_circle(Vector2(462, 161), 5, semi_border_color)
	
	# bottom drain
	var polygon = [
		Vector2(0, 768),
		Vector2(201, 909),
		Vector2(0, 909)
	]
	draw_colored_polygon(polygon, semi_border_color)
	polygon = [
		Vector2(467, 772),
		Vector2(292, 909),
		Vector2(467, 909)
	]
	draw_colored_polygon(polygon, semi_border_color)
