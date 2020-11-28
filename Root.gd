extends Node2D

# Where the magic happens

var player_one_score

func _ready():
	self.player_one_score = self.find_node("Player One Score")
	self.player_one_score
	
func addPoints(points):
	self.player_one_score.addPoints(points)


