extends Node2D

# Where the magic happens

var player_one_score
var ball_in_play = 0
var ball

func _ready():
	# TODO: abstract this so that we can have more than one player
	self.player_one_score = self.find_node("Player One Score")
	self.ball = $RigidBall
	self.loadBall()
	$"Playfield/Ball Out".connect("ball_out", self, "ballOut")
	
	# Find anything on the playfield that can score points,
	# and connect it to the addPoints() function.
	for n in $Playfield.get_children():
		if n.has_signal("add_points"):
			n.connect("add_points", self, "addPoints")

func addPoints(base_points):
	# TODO: abstract this so that we can have more than one player
	# LATER: we will want to have score multipliers
	self.player_one_score.addPoints(base_points)

func loadBall():
	self.ball.start_position = Vector2(484, 790)
	self.ball.reset = true

func ballOut():
	self.ball_in_play += 1
	self.loadBall()
