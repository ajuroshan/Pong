extends Node2D

export var mainMenu : PackedScene
var playerScore = 0
var aiScore = 0

func _process(delta):
	if Input.get_action_strength("ui_cancel") :
		get_tree().quit()
		
#	if Input.get_action_strength("ui_accept"):
#		get_tree().change_scene_to(mainMenu)
	
