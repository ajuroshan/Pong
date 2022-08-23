extends KinematicBody2D

var velocity = Vector2.ZERO
var ballSpeed = 500

func _ready():
	ball_movement()

	
func _physics_process(delta):
	var collisionObject = move_and_collide(velocity * ballSpeed * delta)
	if collisionObject :
		$AudioStreamPlayer2D.play()
		velocity = velocity.bounce(collisionObject.normal)


func _on_Area2D_body_exited(body):
	ball_movement()
	Game.aiScore += 1
	position = Vector2(512,300)
	var aiScore = get_parent().find_node("AiScore")
	aiScore.text = str(Game.aiScore)
	$AudioStreamPlayer2D2.play()

func _on_RightSide_body_exited(body):
	ball_movement()
	Game.playerScore += 1
	position = Vector2(512,300)
	var playerScore = get_parent().find_node("PlayerScore")
	playerScore.text = str(Game.playerScore)
	$AudioStreamPlayer2D2.play()
	
func ball_movement() :
		velocity = Vector2.ZERO
		yield(get_tree().create_timer(1.5), "timeout")
		randomize()
		velocity.x = [-1,1][randi() % 2]
		velocity.y = [-1,1][randi() % 2]

