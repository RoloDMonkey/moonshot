extends StaticBody2D

# Right Inner Structure

func _draw():
	
	# shooter lane
	draw_rect(Rect2(457, 161, 10, 704), Global.semi_border_color)
	draw_circle(Vector2(462, 161), 5, Global.semi_border_color)
	
	#top curve
	draw_arc(Vector2(385, 129), 80, 0, -PI/4, 14, Global.border_color, 3)
	draw_line(Vector2(443, 129), Vector2(443, 71), Global.border_color, 3)
	draw_line(Vector2(443, 129), Vector2(465, 129), Global.border_color, 3)
	
