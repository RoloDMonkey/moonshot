extends StaticBody2D

# Shooter

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
	
#func get_bounce():
#	return self.bounce
