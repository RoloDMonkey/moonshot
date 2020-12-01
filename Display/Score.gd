extends Node2D

# Player One Score

var score_label
var total_score = 0

func _ready():
	self.score_label = self.find_node("Label")

func resetScore():
	self.total_score = 0

func addPoints(points):
	self.total_score += points

func updateScore():
	self.score_label.text = str(self.total_score)

func _process(_delta):
	self.updateScore()
	
