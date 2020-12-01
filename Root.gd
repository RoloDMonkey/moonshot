extends Node2D

# Where the magic happens

var player_one_score

func _ready():
	# TODO: do this with signals
	self.player_one_score = self.find_node("Player One Score")
	
	$"Playfield/Ball Out".connect("ball_out", self, "ballOut")
	
func addPoints(points):
	self.player_one_score.addPoints(points)

func ballOut():
	print_debug("ball out")
