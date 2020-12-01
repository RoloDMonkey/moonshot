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
	self.ball.position.x = 485
	self.ball.position.y = 809
	self.ball.set_sleeping(false)

func ballOut():
	self.ball.set_sleeping(true)
	self.ball_in_play += 1
	self.ball.set_angular_velocity(0)
	self.ball.set_applied_force(Vector2(0, 0))
	self.ball.set_linear_velocity(Vector2(0, 0))
	self.loadBall()
