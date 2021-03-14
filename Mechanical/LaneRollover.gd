extends Area2D

# Lane Rollover

signal roll_over

func _draw():
	draw_line(Vector2(-1.5, -17.5), Vector2(-1.5, 17.5), Global.placeholder_color, 1.0, true)
	draw_line(Vector2(1.5, -17.5), Vector2(1.5, 17.5), Global.placeholder_color, 1.0, true)
	draw_arc(Vector2(0, -17.5), 1.5, PI * -1, 0, 3, Global.placeholder_color, 1.0, true)
	draw_arc(Vector2(0, 17.5), 1.5, PI * 1, 0, 3, Global.placeholder_color, 1.0, true)
	
func _on_LaneRollover_body_entered(body):
	emit_signal("roll_over")
