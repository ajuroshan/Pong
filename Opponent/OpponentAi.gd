extends KinematicBody2D

var opponentSpeed = 24000
var ball
func _ready():
	ball = get_parent().find_node("Ball")
	
func _physics_process(delta):
	var velocity = Vector2.ZERO
	velocity = Vector2(0,opponent_direction() * opponentSpeed * delta)
	move_and_slide(velocity)
	if position.x != 994:
		position.x = 994
	
	
func opponent_direction():
	if abs(ball.position.x - position.x) < 400 :
		if ball.position.y > position.y :
			return 1
		else: 
			return -1
	else:
		return 0
