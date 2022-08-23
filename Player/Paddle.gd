extends KinematicBody2D



var speed = 50000

func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
		
	move_and_slide(velocity * speed * delta)
	if position.x != 30:
		position.x = 30
