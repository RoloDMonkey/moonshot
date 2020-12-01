extends Area2D

# Ball Out

signal ball_out

func _on_Ball_Out_body_entered(_body):
	emit_signal("ball_out")
