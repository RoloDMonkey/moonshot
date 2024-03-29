extends RigidBody2D

# Flipper

var sound

func _ready():
	self.sound = self.find_node("flipperThunk")

func _draw():
	var inside_color = Color("#424242")
	
	draw_circle(Vector2(0, 0), 11.5, Global.rubber_color)
	draw_circle(Vector2(61, 0), 6.5, Global.rubber_color)
	var flipper_polygon = [
		Vector2(0, -11.5),
		Vector2(61, -6.5),
		Vector2(61, 6.5),
		Vector2(0, 11.5)
	]
	draw_colored_polygon(flipper_polygon, Global.rubber_color)
	
	draw_circle(Vector2(0, 0), 7.5, inside_color)
	draw_circle(Vector2(61, 0), 2.5, inside_color)
	flipper_polygon = [
		Vector2(0, -7.5),
		Vector2(61, -2.5),
		Vector2(61, 2.5),
		Vector2(0, 7.5)
	]
	draw_colored_polygon(flipper_polygon, inside_color)
	
func playSound():
	self.sound.play()
