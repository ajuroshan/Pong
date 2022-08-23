extends Node2D

export var game : PackedScene

func _on_Play_pressed():
	get_tree().change_scene_to(game)
	


func _on_Quit_pressed():
	get_tree().quit()
