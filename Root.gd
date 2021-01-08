extends Node2D

# Where the magic happens

var player_one_score
var ball_in_play = 0
var ball

func _ready():
	# TODO: do this with signals
	self.player_one_score = self.find_node("Player One Score")
	self.ball = $RigidBall
	self.loadBall()
	$"Playfield/Ball Out".connect("ball_out", self, "ballOut")

# TODO: do this with signals
func addPoints(points):
	self.player_one_score.addPoints(points)

func loadBall():
	self.ball.start_position = Vector2(485, 809)
	self.ball.reset = true

func ballOut():
	self.ball_in_play += 1
	self.loadBall()
